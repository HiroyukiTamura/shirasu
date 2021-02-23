import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:dartx/dartx.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/dio_timeout.dart';
import '../mock_repository/graphql_common.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_viewmodel/viewmodel_detail_mockable.dart';
import '../widget_test_util/json_client.dart';
import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelDetail]
Future<void> main() async {
  final testBase = ViewModelTestBase<ModelDetail>(
    prvViewModel:
        kPrvViewModelDetail(JsonClient.instance.mProgramDetailData.program.id),
  );

  await testBase.init();

  final overrideGraphQlCommon =
      kPrvGraphqlRepository.overrideWithValue(GraphQlRepositoryCommonImpl(
    comments: testBase.mCommentsByProgram.comments,
    commentItem: testBase.mCommentsByProgram.comments.itemsSorted.first,
  ));

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
    final container = ProviderContainer(
      overrides: testBase.defaultOverride + override,
    );
    final viewModel = container
        .listen(kPrvViewModelDetail(
            JsonClient.instance.mProgramDetailData.program.id))
        .read();
    if (defaultState != null) viewModel.state = defaultState;
    await predicate(viewModel);
    final snack = container
        .listen(kPrvSnackBar.state)
        .read(); //must listen after predicate!
    if (expectedState != null) expect(viewModel.state, expectedState);
    expect(snack?.snackMsg, expectedSnack);
  }

  final specState = ModelDetail.initial(true).copyWith(
      prgDataResult: DetailModelState.success(
    programDetailData: JsonClient.instance.mProgramDetailData,
    channelData: JsonClient.instance.mChannelData,
    page: const PageSheetModel.hidden(),
  ));

  final overrideViewModel = kPrvViewModelDetail.overrideWithProvider(
    (ref, param) => ViewModelDetailMockable(
      ref.read,
      specState,
      JsonClient.instance.mProgramDetailData.program.id,
    ),
  );

  group('ViewModelDetail.loadMorePastComment', () {
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
          overrideGraphQlCommon,
        ],
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.loadMoreFutureComment(Duration.zero, true);
          await Future.delayed(1.seconds);
          expect(viewModel.state.commentHolder.comments.length,
              ViewModelDetail.COMMENT_MAX_ITEM_COUNT);
          expect(
              viewModel.state.commentHolder.comments.last,
              JsonClient.instance.mListCommentsByProgram.comments
                  .items[ViewModelDetail.COMMENT_MAX_ITEM_COUNT - 1]);
        },
      ),
    );
  });

  group('ViewModelDetail.requestHandout', () {
    test(
      'networkErr',
      () => testTemplate(
        override: [
          kOverrideDisconnected,
          overrideViewModel,
        ],
        expectedState: specState,
        expectedSnack: const SnackMsg.networkDisconnected(),
        predicate: (viewModel) async {
          final url = await viewModel.queryHandOutUrl(
              JsonClient.instance.mProgramDetailData.program.handouts.items.first.id);
          await Future.delayed(1.seconds);
          expect(url, isNull);
        },
      ),
    );
    test(
      'networkTimeoutErr',
      () => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
          overrideViewModel,
        ],
        expectedState: specState,
        expectedSnack: const SnackMsg.networkTimeout(),
        predicate: (viewModel) async {
          final url = await viewModel.queryHandOutUrl(
              JsonClient.instance.mProgramDetailData.program.handouts.items.first.id);
          await Future.delayed(10.seconds);
          expect(url, isNull);
        },
      ),
    );
    test(
      'networkAuthErr',
      () => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlUnAuthNotDetectedByTime,
          overrideViewModel,
        ],
        expectedState: specState,
        expectedSnack: const SnackMsg.unknown(),
        predicate: (viewModel) async {
          final url = await viewModel.queryHandOutUrl(
              JsonClient.instance.mProgramDetailData.program.handouts.items.first.id);
          await Future.delayed(1.seconds);
          expect(url, isNull);
        },
      ),
    );
    test(
      'normal',
      () => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          overrideViewModel,
          overrideGraphQlCommon,
        ],
        expectedState: specState,
        expectedSnack: null,
        predicate: (viewModel) async {
          final url = await viewModel.queryHandOutUrl(
              JsonClient.instance.mProgramDetailData.program.handouts.items.first.id);
          await Future.delayed(1.seconds);
          expect(url, GraphQlRepositoryCommonImpl.HANDOUT_URL);
        },
      ),
    );
  });

  group('ViewModelDetail.postComment', () {
    test(
      'networkErr',
      () => testTemplate(
        override: [
          kOverrideDisconnected,
          overrideGraphQlCommon,
          overrideViewModel,
        ],
        expectedState: specState,
        expectedSnack: const SnackMsg.networkDisconnected(),
        predicate: (viewModel) async {
          await viewModel.postComment('TEXT');
          await Future.delayed(3.seconds);
        },
      ),
    );
    test(
      'timeoutErr',
      () => testTemplate(
        override: [
          kOverrideGraphqlTimeout,
          overrideViewModel,
          kOverrideConnectedRepositoryConnectedImpl
        ],
        expectedState: specState,
        expectedSnack: const SnackMsg.networkTimeout(),
        predicate: (viewModel) async {
          await viewModel.postComment('TEXT');
          await Future.delayed(1.seconds);
        },
      ),
    );
    test(
      'unknownErr',
      () => testTemplate(
        override: [
          kOverrideGraphqlErr,
          overrideViewModel,
          kOverrideConnectedRepositoryConnectedImpl
        ],
        expectedState: specState,
        expectedSnack: const SnackMsg.unknown(),
        predicate: (viewModel) async {
          await viewModel.postComment('TEXT');
          await Future.delayed(1.seconds);
        },
      ),
    );

    test(
      'IsCommentPosting_Cancel',
      () {
        final defaultState = specState.copyWith(isCommentPosting: true);
        return testTemplate(
          override: [
            kOverrideGraphqlErr,
            overrideViewModel,
            kOverrideConnectedRepositoryConnectedImpl
          ],
          defaultState: defaultState,
          expectedState: defaultState,
          expectedSnack: null,
          predicate: (viewModel) async {
            await viewModel.postComment('TEXT');
            await Future.delayed(1.seconds);
          },
        );
      },
    );

    test(
      'IsCommentRenewing_Cancel',
      () {
        final defaultState = specState.copyWith.commentHolder(
          isRenewing: true,
        );
        return testTemplate(
          override: [
            overrideGraphQlCommon,
            overrideViewModel,
            kOverrideConnectedRepositoryConnectedImpl
          ],
          defaultState: defaultState,
          expectedState: defaultState,
          expectedSnack: null,
          predicate: (viewModel) async {
            await viewModel.postComment('TEXT');
            await Future.delayed(1.seconds);
          },
        );
      },
    );
  });

  group('ViewModelDetail.playVideo', () {
    test(
      'networkErr',
      () => testTemplate(
        override: [
          kOverrideDisconnected,
          overrideGraphQlCommon,
          overrideViewModel,
        ],
        expectedState: specState
            .copyAsInitialize(
                'https://video.shirasu.io/private/hls/d485df5d-4d53-4544-8836-ae412fe31ece/free/index.m3u8',
                const VideoType.archived())
            .copyWith
            .playOutState(
              commandedState: const PlayerCommandedState.error(
                  ErrorMsgCommon.networkDisconnected()),
            ),
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.playVideo(true);
          await Future.delayed(1.seconds);
        },
      ),
    );
    test(
      'networkTimeoutErr',
      () => testTemplate(
        override: [
          kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
            specAuthData: JsonClient.instance.mHiveAuthData,
          )),
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideDioTimeout,
          overrideGraphQlCommon,
          overrideViewModel,
        ],
        expectedState: specState
            .copyAsInitialize(
                'https://video.shirasu.io/private/hls/d485df5d-4d53-4544-8836-ae412fe31ece/free/index.m3u8',
                const VideoType.archived())
            .copyWith
            .playOutState(
              commandedState: const PlayerCommandedState.error(
                  ErrorMsgCommon.networkTimeout()),
            ),
        expectedSnack: null,
        predicate: (viewModel) async {
          await viewModel.playVideo(true);
          await Future.delayed(1.seconds);
        },
      ),
    );
  });
}
