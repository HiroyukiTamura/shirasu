@Timeout(Duration(minutes: 1))

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/graphql_repository_impl.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_common.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../widget_test_util/json_client.dart';
import '../widget_test_util/test_name_common.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelSetting.initialize] and [ViewModelSetting.postProfile] and [ViewModelSetting.clearHiveAuth]
Future<void> main() async {
  final testRunner = _TestRunner();
  await testRunner.init();

  SettingModel createSettingModelErr(ErrorMsgCommon errorMsg) =>
      SettingModel.initial().copyWith(
        settingModelState: SettingModelState.error(errorMsg),
      );

  group(
      'ViewModelSetting.initialize',
      () => testRunner
        ..testNetworkDisconnected(
            createSettingModelErr(const ErrorMsgCommon.networkDisconnected()))
        ..testNetworkTimeout(
            createSettingModelErr(const ErrorMsgCommon.networkTimeout()))
        ..testAuthExpired(
            createSettingModelErr(const ErrorMsgCommon.authExpired()))
        ..testUnAuth(createSettingModelErr(const ErrorMsgCommon.unAuth()))
        ..testUnknownError(
            createSettingModelErr(const ErrorMsgCommon.unknown())));
  group('ViewModelSetting.postProfile', () {
    testRunner
      ..testPostWithInvalidClientId()
      ..testPostWhenNetworkDisconnected()
      ..testPostWhenNetworkTimeout()
      ..testPostWhenUnknownErr();
  });
}

class _TestRunner extends ViewModelTestBase<SettingModel> {
  _TestRunner() : super(prvViewModel: kPrvViewModelSetting);

  final successModel = SettingModel.initial().copyWith(
    settingModelState:
        SettingModelState.success(JsonClient.instance.mViewerWrapper),
  );

  Future<void> _testPostProfile<T>({
    @required List<Override> override,
    @required GlobalRoutePathBase expectPath,
    @required FutureOr<void> Function(ViewModelSetting viewModel) onPre,
    @required SnackMsg expectedSnack,
    FutureOr<void> Function(ProviderContainer container) onPost,
    Duration delay = const Duration(seconds: 1),
    SettingModel expectModel,
  }) async {
    final container = ProviderContainer(
      overrides: override + defaultOverride,
    );
    final viewModel = container.listen(prvViewModel).read() as ViewModelSetting;
    final appRouter = container.listen(kPrvAppRouterDelegate).read();
    container.listen(kPrvSnackBar.state).read();
    container.listen(kPrvHiveAuthUser).read();
    final snackBar = container.listen(kPrvSnackBar).read();
    viewModel.state = successModel;
    await onPre(viewModel);
    await viewModel.postProfile();
    await Future.delayed(delay);
    if (onPost != null) await onPost(container);
    expect(appRouter.appState.last, expectPath);
    expect(snackBar.state?.snackMsg, expectedSnack);
    if (expectModel != null) expect(viewModel.state, expectModel);
  }

  Override get overrideViewModel =>
      kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
        specAuthData: JsonClient.instance.mHiveAuthData,
      ));

  void testPostWithInvalidClientId() => test(
      'InvalidClientId_Cancel',
      () async => _testPostProfile(
            override: [
              kOverrideConnectedRepositoryConnectedImpl,
              kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
                specAuthData: JsonClient
                    .instance.mHiveAuthData.copyWith.body.decodedToken
                    .user(
                  sub: 'DUMMY_SUB',
                ),
              )),
              kOverrideGraphqlErr,
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            expectedSnack: const SnackMsg.unknown(),
            onPre: (viewModel) async => viewModel.postProfile(),
          ));

  void testPostWhenNetworkDisconnected() => test(
      TestNameCommon.ERR_NETWORK_DISCONNECTED,
      () async => _testPostProfile(
            override: [
              kOverrideDisconnected,
              overrideViewModel,
              kOverrideGraphqlErr,
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            expectedSnack: const SnackMsg.networkDisconnected(),
            onPre: (viewModel) async => viewModel.postProfile(),
          ));

  void testPostWhenNetworkTimeout() => test(
        TestNameCommon.ERR_NETWORK_TIMEOUT,
        () async => _testPostProfile(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            overrideViewModel,
            kOverrideGraphqlTimeout,
          ],
          expectPath: const PathDataMainPageBase.dashboard(),
          expectedSnack: const SnackMsg.networkTimeout(),
          delay: GraphQlRepositoryTimeoutImpl.delay,
          onPre: (viewModel) async => viewModel.postProfile(),
        ),
      );

  void testPostWhenUnknownErr() => test(
      TestNameCommon.ERR_UNKNOWN,
      () async => _testPostProfile(
            override: [
              kOverrideConnectedRepositoryConnectedImpl,
              overrideViewModel,
              kOverrideGraphqlErr,
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            expectedSnack: const SnackMsg.unknown(),
            onPre: (viewModel) async => viewModel.postProfile(),
          ));

  void testPostNormal() => test(
      TestNameCommon.NORMAL,
      () async => _testPostProfile(
            override: [
              kOverrideConnectedRepositoryConnectedImpl,
              overrideViewModel,
              kPrvGraphqlRepository
                  .overrideWithValue(GraphQlRepositoryCommonImpl()),
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            expectedSnack: null,
            onPre: (viewModel) async => viewModel.postProfile(),
            expectModel: successModel.copyWith(
              uploadingProfile: false,
              editedUserInfo: EditedUserInfo.empty(),
            ),
          ));

  /// todo driver test
  // void testClearAuth() {
  //   group('ViewModelSetting.clearAuth', () {
  //     test(
  //         TestNameCommon.NORMAL,
  //         () async => _testPostProfile(
  //               override: [
  //                 overrideViewModel,
  //                 kPrvGraphqlRepository
  //                     .overrideWithValue(GraphQlRepositoryCommonImpl()),
  //               ],
  //               expectPath: const PathDataMainPageBase.dashboard(),
  //               expectedSnack: null,
  //               onPre: (viewModel) async => viewModel.clearHiveAuth(),
  //               expectModel: successModel.copyWith(
  //                 uploadingProfile: false,
  //                 editedUserInfo: EditedUserInfo.empty(),
  //               ),
  //             ));
  //   });
  // }
}
