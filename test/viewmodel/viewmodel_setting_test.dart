import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../widget_test_util/json_client.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelSetting.initialize] and [ViewModelSetting.postProfile]
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

//todo implement normal test
class _TestRunner extends ViewModelTestBase<SettingModel> {
  _TestRunner() : super(prvViewModel: kPrvViewModelSetting);

  Future<void> _testPostProfile<T>({
    @required List<Override> override,
    @required GlobalRoutePathBase expectPath,
    @required Future<void> Function(ProviderContainer container) onPost,
  }) async {
    final container = ProviderContainer(
      overrides: override + defaultOverride,
    );
    final viewModel = container.listen(prvViewModel).read() as ViewModelSetting;
    final appRouter = container.listen(kPrvAppRouterDelegate).read();
    container.listen(kPrvSnackBar.state).read();
    container.listen(kPrvHiveAuthUser).read();
    viewModel.state = SettingModel.initial().copyWith(
      settingModelState: SettingModelState.success(JsonClient.instance.mViewerWrapper),
    );
    await viewModel.postProfile();
    await onPost(container);
    expect(appRouter.appState.last, expectPath);
  }

  Override get overrideViewModel =>
      kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
        specAuthData: JsonClient.instance.mHiveAuthData,
      ));

  void testPostWithInvalidClientId() => test(
      'PostNewProfile_InvalidClientId_Cancel',
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
            onPost: (container) async {
              final snackMsg = container.read(kPrvSnackBar.state).snackMsg;
              expect(snackMsg, const SnackMsg.unknown());
            },
          ));

  void testPostWhenNetworkDisconnected() => test(
      'PostNewProfile_NetworkDisconnected_HandleError',
      () async => _testPostProfile(
            override: [
              kOverrideDisconnected,
              overrideViewModel,
              kOverrideGraphqlErr,
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            onPost: (container) async {
              final snackMsg = container.read(kPrvSnackBar.state).snackMsg;
              expect(snackMsg, const SnackMsg.networkDisconnected());
            },
          ));

  /// todo implement
  void testPostWhenNetworkTimeout() => test(
      'PostNewProfile_NetworkTimeout_HandleError',
      () async => _testPostProfile(
            override: [
              kOverrideConnectedRepositoryConnectedImpl,
              overrideViewModel,
              kOverrideGraphqlTimeout,
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            onPost: (container) async {
              final snackMsg = container.read(kPrvSnackBar.state).snackMsg;
              expect(snackMsg, const SnackMsg.networkTimeout());
            },
          ));

  void testPostWhenUnknownErr() => test(
      'PostNewProfile_UnknownErr_HandleError',
      () async => _testPostProfile(
            override: [
              kOverrideConnectedRepositoryConnectedImpl,
              overrideViewModel,
              kOverrideGraphqlErr,
            ],
            expectPath: const PathDataMainPageBase.dashboard(),
            onPost: (container) async {
              final snackMsg = container.read(kPrvSnackBar.state).snackMsg;
              expect(snackMsg, const SnackMsg.unknown());
            },
          ));
}
