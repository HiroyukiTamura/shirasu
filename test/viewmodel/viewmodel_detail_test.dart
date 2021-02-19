import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:dartx/dartx.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_common.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelDetail]
Future<void> main() async {
  final program = await kJsonClient.programDetail;

  final testBase = ViewModelTestBase<ModelDetail>(
    prvViewModel: kPrvViewModelDetail(program.program.id),
  );

  await testBase.init();

  group(
      'ViewModelDetail.initialize',
      () => testBase
        ..testNetworkDisconnected(
            ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.networkDisconnected(),
        ))
        ..testNetworkTimeout(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.networkTimeout(),
        ))
        ..testAuthExpired(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.authExpired(),
        ))
        ..testUnAuth(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.unAuth(),
        ))
        ..testUnknownError(ModelDetail.initial(true).copyAsPrgDataResultErr(
          const ErrorMsgCommon.unknown(),
        )));

  ProviderContainer createProviderContainer(List<Override> list) =>
      ProviderContainer(
        overrides: testBase.defaultOverride + list,
      );

  Future<void> testTemplate({
    List<Override> override = const [],
    ModelDetail defaultState,
    @required Future<void> Function(ViewModelDetail viewModel) predicate,
    ModelDetail expectedState,
    @required SnackMsg expectedSnack,
  }) async {
    // must have original SnackBarMessageNotifier!!
    final snackNtf = SnackBarMessageNotifier();
    final overrideSnackBar = kPrvSnackBar.overrideWithValue(snackNtf);
    final container = createProviderContainer(override + [overrideSnackBar]);
    final viewModel =
        container.listen(kPrvViewModelDetail(program.program.id)).read();
    if (defaultState != null) viewModel.state = defaultState;
    await predicate(viewModel);
    final snack = container
        .listen(kPrvSnackBar.state)
        .read(); //must listen after loadMorePrograms!
    if (expectedState != null) expect(viewModel.state, expectedState);
    expect(snack?.snackMsg, expectedSnack);
  }

  group('ViewModelDetail.loadMorePastComment', () {
    final specState = ModelDetail.initial(true).copyWith(
        prgDataResult: DetailModelState.success(
      programDetailData: testBase.programDetail,
      channelData: testBase.channelData,
      page: const PageSheetModel.hidden(),
    ));

    final overrideViewModel = kPrvViewModelDetail.overrideWithProvider(
      (ref, param) => ViewModelDetailMockable(
        ref.read,
        specState,
        testBase.programDetail.program.id,
      ),
    );

    test(
      'networkErr',
      () => testTemplate(
        override: [
          kOverrideDisconnected,
          overrideViewModel,
        ],
        expectedState: specState.copyWith.commentHolder(
          state: const CommentsState.error(
            ErrorMsgCommon.networkDisconnected(),
          ),
        ),
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMoreFutureComment(Duration.zero, true);
          await Future.delayed(1.seconds);
        },
      ),
    );

    test(
      'networkTimeout',
      () => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
          overrideViewModel,
        ],
        expectedState: specState.copyWith.commentHolder(
          state: const CommentsState.error(
            ErrorMsgCommon.networkTimeout(),
          ),
        ),
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMoreFutureComment(Duration.zero, true);
          await Future.delayed(10.seconds); //todo fix
        },
      ),
    );

    test(
      'unknownErr',
      () => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlErr,
          overrideViewModel,
        ],
        expectedState: specState.copyWith.commentHolder(
          state: const CommentsState.error(
            ErrorMsgCommon.unknown(),
          ),
        ),
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMoreFutureComment(Duration.zero, true);
          await Future.delayed(1.seconds);
        },
      ),
    );

    test(
      'InvalidDuration_Cancel',
      () => testTemplate(
        override: [
          overrideViewModel,
        ],
        expectedState: specState,
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMorePastComment(Duration.zero, true);
          await Future.delayed(1.seconds);
        },
      ),
    );

    test(
      'RequestWhenRenewing_Cancel',
      () => testTemplate(
        override: [
          overrideViewModel,
        ],
        expectedState: specState,
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMorePastComment(Duration.zero, false);
          await Future.delayed(1.seconds);
        },
      ),
    );

    test(
      'normal',
      () => testTemplate(
        override: [
          overrideViewModel,
          kOverrideConnectedRepositoryConnectedImpl,
          kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
            comments: testBase.commentsByProgram.comments,
          ))
        ],
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMoreFutureComment(Duration.zero, true);
          await Future.delayed(1.seconds);
          expect(viewModel.state.commentHolder.comments.length,
              ViewModelDetail.COMMENT_MAX_ITEM_COUNT);
          expect(
              viewModel.state.commentHolder.comments.last,
              testBase.commentsByProgram.comments
                  .items[ViewModelDetail.COMMENT_MAX_ITEM_COUNT - 1]);
        },
      ),
    );
  });

  group('ViewModelDetail.loadMorePastComment', () {
    final specState = ModelDetail.initial(true).copyWith(
        prgDataResult: DetailModelState.success(
          programDetailData: testBase.programDetail,
          channelData: testBase.channelData,
          page: const PageSheetModel.hidden(),
        ));

    final overrideViewModel = kPrvViewModelDetail.overrideWithProvider(
          (ref, param) => ViewModelDetailMockable(
        ref.read,
        specState,
        testBase.programDetail.program.id,
      ),
    );

    test(
      'networkErr',
          () => testTemplate(
        override: [
          kOverrideDisconnected,
          overrideViewModel,
        ],
        expectedState: specState.copyWith.commentHolder(
          state: const CommentsState.error(
            ErrorMsgCommon.networkDisconnected(),
          ),
        ),
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMoreFutureComment(Duration.zero, true);
          await Future.delayed(1.seconds);
        },
      ),
    );
  });
}
