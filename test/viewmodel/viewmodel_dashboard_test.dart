import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/dashboard_model.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_viewmodel/viewmodel_dashboard_mockable.dart';
import '../widget_test_util/test_util.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelDashBoard]
Future<void> main() async {
  final testBase = ViewModelTestBase<DashboardModel>(
    prvDashboardViewModel: kPrvDashboardViewModel,
  );

  await testBase.init();

  group(
      'test for ViewModelDashBoard.initialize',
      () => testBase
        ..testNetworkDisconnected(
            const DashboardModel.error(ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            const DashboardModel.error(ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            const DashboardModel.error(ErrorMsgCommon.authExpired()))
        ..testUnAuth(const DashboardModel.error(ErrorMsgCommon.unAuth()))
        ..testUnknownError(const DashboardModel.error(ErrorMsgCommon.unknown()))
        ..testNormal(
          //todo implement to ViewModelSubscribing, ViewModelWatchHistory
          DashboardModel.success(DataWrapper.initial(ApiData(
            featureProgramData: testBase.featureProgramData,
            rawNewProgramsDataList: [testBase.newProgramsData],
          ))),
        ));

  /// todo merge with `ViewModelWatchHistory` test
  group('test for ViewModelDashBoard.loadingMore', () {
    NewProgramsData noNextTokenState;
    NewProgramsData hasNextTokenState;
    DashboardModel successNoNextToken;
    DashboardModel successHasNextToken;
    Override overrideNoNextToken;
    Override overrideHasNextToken;

    setUpAll(() async {
      hasNextTokenState = await kJsonClient.newProgramsData;
      final featureProgramData = await kJsonClient.featureProgramData;
      noNextTokenState = hasNextTokenState.copyWith.newPrograms(
        nextToken: null,
      );
      successNoNextToken = DashboardModel.success(DataWrapper.initial(ApiData(
        featureProgramData: featureProgramData,
        rawNewProgramsDataList: [noNextTokenState],
      )));
      successHasNextToken = DashboardModel.success(DataWrapper.initial(ApiData(
        featureProgramData: featureProgramData,
        rawNewProgramsDataList: [hasNextTokenState],
      )));
      overrideNoNextToken = kPrvDashboardViewModel.overrideWithProvider(
          ViewModelDashBoardMockable.createProvider(successNoNextToken));
      overrideHasNextToken = kPrvDashboardViewModel.overrideWithProvider(
          ViewModelDashBoardMockable.createProvider(successHasNextToken));
    });

    ProviderContainer createProviderContainer(List<Override> list) =>
        ProviderContainer(
          overrides: testBase.defaultOverride + list,
        );

    Future<void> testTemplate({
      List<Override> override = const [],
      @required DashboardModel expectedState,
      @required SnackMsg expectedSnack,
    }) async {
      final container = createProviderContainer(override + testBase.defaultOverride);
      final viewModel = container.listen(kPrvDashboardViewModel).read();
      final snackBar = container.listen(kPrvSnackBar).read();
      await viewModel.loadMoreNewPrg();
      // ignore: invalid_use_of_protected_member
      expect(viewModel.state, expectedState);
      // ignore: invalid_use_of_protected_member
      expect(snackBar.state?.snackMsg, expectedSnack);
    }

    test(
      'StateIsInvalid_CancelLoadingMore',
      () async {
        await testTemplate(
          override: [],
          expectedState: const DashboardModel.initial(),
          expectedSnack: null,
        );
      },
    );
    test(
      'NoNextToken_CancelLoadingMore',
      () async {
        await testTemplate(
          override: [overrideNoNextToken],
          expectedState: successNoNextToken,
          expectedSnack: null,
        );
      },
    );
    test(
      ViewModelTestBase.TEST_NAME_NETWORK_DISCONNECTED,
      () async => testTemplate(
        override: [
          kOverrideDisconnected,
          overrideHasNextToken,
        ],
        expectedState: successHasNextToken,
        expectedSnack: const SnackMsg.networkDisconnected(),
      ),
    );
    test(
      ViewModelTestBase.TEST_NAME_NETWORK_TIMEOUT,
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
          overrideHasNextToken,
        ],
        expectedState: successHasNextToken,
        expectedSnack: const SnackMsg.networkTimeout(),
      ),
    );
    test(
      ViewModelTestBase.TEST_NAME_ERR_UNKNOWN,
      () async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlErr,
          overrideHasNextToken,
        ],
        expectedState: successHasNextToken,
        expectedSnack: const SnackMsg.unknown(),
      ),
    );
  });
}
