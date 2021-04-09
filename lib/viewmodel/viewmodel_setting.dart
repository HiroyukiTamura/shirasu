import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:shirasu/repository/local_json_client.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart'
    show UpdateUserWithAttrVariable;
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/main.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/viewmodel/background_task.dart';

class ViewModelSetting extends ViewModelBase<SettingModel> {
  ViewModelSetting(Reader reader) : super(reader, SettingModel.initial());

  FlutterWebviewPlugin _webView;

  HiveBody get _hiveAuthBody => hiveAuthRepository?.authData?.body;

  SnackBarMessageNotifier get _snackBarMsgNotifier => reader(kPrvSnackBar);

  @override
  Future<void> initialize() async {
    if (state != SettingModel.initial()) return;

    final result = await logger
        .guardFuture(() async => authOperationLock.synchronized(() async {
              await connectivityRepository.ensureNotDisconnect();
              await interceptor.refreshAuthTokenIfNeeded();
              return graphQlRepository
                  .queryViewer()
                  .timeout(GraphQlRepository.TIMEOUT);
            }));
    if (mounted)
      result.when(success: (data) {
        Util.require(_isUserIdMatchesLocal(data));
        state = state.copyWith(
          settingModelState: SettingModelState.success(data),
        );
      }, failure: (e) {
        state = state.copyWith(
          settingModelState: SettingModelState.error(toErrMsg(e)),
        );
        if (e is UnauthorizedException) pushAuthErrScreen(e.detectedByTime);
      });
  }

  bool _isUserIdMatchesLocal(ViewerWrapper viewerWrapper) =>
      _hiveAuthBody?.decodedToken?.user?.sub == viewerWrapper.viewerUser.id;

  void updateBirthDate(DateTime birthDate) =>
      state = state.copyWith.editedUserInfo(birthDate: birthDate);

  void updateJobCode(String jobCode) =>
      state = state.copyWith.editedUserInfo(jobCode: jobCode);

  void updateUserLocation(String countryCode, String prefectureCode) =>
      state = state.copyWith.editedUserInfo(
        location: Location(
          countryCode: countryCode,
          prefectureCode: prefectureCode,
        ),
      );

  Future<void> postProfile() async {
    if (state.uploadingProfile || state.isInLoggingOut) return;

    final sub = _hiveAuthBody?.decodedToken?.user?.sub;
    final attrs =
        _hiveAuthBody?.decodedToken?.user?.httpsShirasuIoUserAttribute;

    await state.settingModelState.whenSuccess((viewerUser) async {
      final birthDate = state.editedUserInfo?.birthDate ?? attrs.birthDate;
      final job = state.editedUserInfo?.jobCode ?? attrs.job;
      final country =
          state.editedUserInfo?.location?.countryCode ?? attrs.country;
      final prefecture =
          state.editedUserInfo?.location?.prefectureCode ?? attrs?.prefecture;

      if (_isUserIdMatchesLocal(viewerUser)) {
        final variable = UpdateUserWithAttrVariable.build(
          userId: sub,
          birthDate: birthDate,
          job: job,
          country: country,
          prefecture: prefecture,
        );

        state = state.copyWith(uploadingProfile: true);

        await authOperationLock.synchronized(() async {
          final result = await logger.guardFuture(() async {
            await connectivityRepository.ensureNotDisconnect();
            await interceptor.refreshAuthTokenIfNeeded();
            return graphQlRepository
                .updateUserWithAttr(variable)
                .timeout(GraphQlRepository.TIMEOUT);
          });
          if (mounted)
            await result.when(
                success: (data) async => hiveAuthRepository.updateProfile(data),
                failure: (e) {
                  notifySnackMsg(toNetworkSnack(e));
                });
        });
      } else {
        notifySnackMsg(const SnackMsg.unknown());
      }

      if (mounted)
        state = state.copyWith(
          uploadingProfile: false,
          editedUserInfo: EditedUserInfo.empty(),
        );
    });
  }

  Future<void> clearHiveAuth() async {
    if (state.uploadingProfile || state.isInLoggingOut) return;

    state = state.copyWith(isInLoggingOut: true);

    if (!Util.useScratchAuth)
      await logger.guardFuture(() async {
        _webView = FlutterWebviewPlugin();
        await _webView.launch(
          UrlUtil.URL_HOME,
          clearCache: true,
          clearCookies: true,
          hidden: true,
        );
        await Future.delayed(1.seconds); //must need
        await _webView.evalJavascript('window.localStorage.clear();');
        await Future.delayed(500.milliseconds); //must need
        await _webView.close();
      });

    if (!mounted) return;

    await authOperationLock
        .synchronized(() async => hiveAuthRepository.clearAuthData());

    state = state.copyWith(isInLoggingOut: false);
    await reader(kPrvAppRouterDelegate)
        .pushPage(const GlobalRoutePath.preLogin()); //todo change to reset?
  }

  void notifySnackMsg(SnackMsg snackMsg) =>
      _snackBarMsgNotifier.notifyMsg(snackMsg, false);

  @override
  void dispose() {
    _webView?.dispose();
    super.dispose();
  }
}

class LocationTextNotifier extends StateNotifier<String>
    with StateTrySetter<String> {
  LocationTextNotifier(AutoDisposeProviderReference ref)
      : _reader = ref.read,
        super('') {
    final removeListener = ref
        .watch<ViewModelSetting>(kPrvViewModelSetting)
        .addListener(
            (state) async => _updateLocation(state.editedUserInfo.location));
    ref.onDispose(removeListener);
  }

  final Reader _reader;

  final LocalJsonClient _jsonClient = LocalJsonClient.instance();

  CancelableOperation<String> _completer;

  HiveUser get localUser => _reader(kPrvHiveAuthUser);

  /// cancel old future if it's not completed
  Future<void> _updateLocation(Location location) async {
    if (_completer?.isCompleted == false) await _completer.cancel();
    _completer = CancelableOperation.fromFuture(
        _jsonClient.genLocationStr(_reader(kPrvHiveAuthUser), location));
    final text = await _completer.value;
    trySet(text);
  }
}
