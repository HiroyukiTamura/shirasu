import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/new_programs_data.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/dashboard_model.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_viewmodel/viewmodel_dashboard_mockable.dart';
import '../widget_test_util/json_client.dart';
import '../widget_test_util/test_name_common.dart';
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
            featureProgramData: JsonClient.instance.mFeatureProgramData,
            rawNewProgramsDataList: [JsonClient.instance.mNewProgramsData],
            listSubscribedPrograms: JsonClient.instance.mListSubscribedPrograms,
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
    Override overrideViewModel;

    setUpAll(() {
      hasNextTokenState = JsonClient.instance.mNewProgramsData;
      noNextTokenState = hasNextTokenState.copyWith.newPrograms(
        nextToken: null,
      );
      successNoNextToken = DashboardModel.success(DataWrapper.initial(ApiData(
        featureProgramData: JsonClient.instance.mFeatureProgramData,
        rawNewProgramsDataList: [noNextTokenState],
        listSubscribedPrograms: JsonClient.instance.mListSubscribedPrograms,
      )));
      successHasNextToken = DashboardModel.success(DataWrapper.initial(ApiData(
        featureProgramData: JsonClient.instance.mFeatureProgramData,
        rawNewProgramsDataList: [hasNextTokenState],
        listSubscribedPrograms: JsonClient.instance.mListSubscribedPrograms,
      )));
      overrideNoNextToken = kPrvDashboardViewModel.overrideWithProvider(
          ViewModelDashBoardMockable.createProvider(successNoNextToken));
      overrideHasNextToken = kPrvDashboardViewModel.overrideWithProvider(
          ViewModelDashBoardMockable.createProvider(successHasNextToken));
      overrideViewModel = kPrvDashboardViewModel.overrideWithProvider(
          ViewModelDashBoardMockable.createProvider(null));
    });

    Future<void> testTemplate({
      @required DashboardModel expectedState,
      @required SnackMsg expectedSnack,
      List<Override> override = const [],
      Duration delay = const Duration(seconds: 1),
    }) async {
      final container = ProviderContainer(
        overrides: testBase.defaultOverride + override,
      );
      final viewModel = container.listen(kPrvDashboardViewModel).read();
      final snackBar = container.listen(kPrvSnackBar).read();
      await viewModel.loadMoreNewPrg();
      await Future.delayed(delay);
      // ignore: invalid_use_of_protected_member
      expect(viewModel.state, expectedState);
      // ignore: invalid_use_of_protected_member
      expect(snackBar.state?.snackMsg, expectedSnack);
    }

    test(
      'StateIsInvalid_CancelLoadingMore',
      () async => testTemplate(
        override: [overrideViewModel],
        expectedState: const DashboardModel.initial(),
        expectedSnack: null,
      ),
    );
    test(
      'NoNextToken_CancelLoadingMore',
      () async => testTemplate(
        override: [overrideNoNextToken],
        expectedState: successNoNextToken,
        expectedSnack: null,
      ),
    );
    test(
      TestNameCommon.ERR_NETWORK_DISCONNECTED,
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
      TestNameCommon.ERR_NETWORK_TIMEOUT,
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
      TestNameCommon.ERR_UNKNOWN,
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
