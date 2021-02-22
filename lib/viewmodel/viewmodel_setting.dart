import 'dart:async';

import 'package:async/async.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/local_json_client.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/result.dart' as r;
import 'package:shirasu/model/update_user_with_attr_variable.dart'
    show UpdateUserWithAttrVariable;
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'message_notifier.dart';

class ViewModelSetting extends ViewModelBase<SettingModel> {
  ViewModelSetting(Reader reader) : super(reader, SettingModel.initial());

  SnackBarMessageNotifier get _msgNotifier => reader(kPrvSnackBar);

  HiveBody get _hiveAuthBody => hiveAuthRepository?.authData?.body;

  bool _isInLogout = false;

  @override
  Future<void> initialize() async {
    if (state != SettingModel.initial()) return;

    SettingModelState newState;
    bool authExpired = false;
    try {
      await connectivityRepository.ensureNotDisconnect();
      final viewer = await graphQlRepository
          .queryViewer()
          .timeout(GraphQlRepository.TIMEOUT);
      newState = SettingModelState.success(viewer);
    } catch (e) {
      print(e);
      newState = SettingModelState.error(toErrMsg(e));
      authExpired = e is UnauthorizedException;
    }

    if (!mounted) return;

    state = state.copyWith(settingModelState: newState);

    if (authExpired) pushAuthExpireScreen();
  }

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
    if (state.uploadingProfile) return;

    final sub = _hiveAuthBody?.decodedToken?.user?.sub;
    final attrs =
        _hiveAuthBody?.decodedToken?.user?.httpsShirasuIoUserAttribute;

    state.settingModelState.whenSuccess((viewerUser) async {
      final birthDate = state.editedUserInfo?.birthDate ?? attrs.birthDate;
      final job = state.editedUserInfo?.jobCode ?? attrs.job;
      final country =
          state.editedUserInfo?.location?.countryCode ?? attrs.country;
      final prefecture =
          state.editedUserInfo?.location?.prefectureCode ?? attrs?.prefecture;

      if (sub == viewerUser.viewerUser.id) {
        final variable = UpdateUserWithAttrVariable.build(
          userId: sub,
          birthDate: birthDate,
          job: job,
          country: country,
          prefecture: prefecture,
        );

        state = state.copyWith(uploadingProfile: true);

        try {
          await connectivityRepository.ensureNotDisconnect();
          final updatedData = await graphQlRepository
              .updateUserWithAttr(variable)
              .timeout(GraphQlRepository.TIMEOUT);
          await hiveAuthRepository.updateProfile(updatedData);
        } on TimeoutException catch (e) {
          //todo log error
          print(e);
          if (mounted)
            _msgNotifier.notifyMsg(const SnackMsg.networkTimeout(), false);
        } on NetworkDisconnectException catch (e) {
          print(e);
          if (mounted)
            _msgNotifier.notifyMsg(const SnackMsg.networkDisconnected(), false);
        } catch (e) {
          print(e);
          if (mounted) _msgNotifier.notifyMsg(const SnackMsg.unknown(), false);
        }
      } else {
        _msgNotifier.notifyMsg(const SnackMsg.unknown(), false);
      }

      if (mounted)
        state = state.copyWith(
          uploadingProfile: false,
          editedUserInfo: EditedUserInfo.empty(),
        );
    });
  }

  Future<void> clearHiveAuth() async {
    if (_isInLogout) return;

    _isInLogout = true;

    await hiveAuthRepository.clearAuthData();
    final result = await r.Result.guardFuture(() async {
      await FlutterWebviewPlugin().cleanCookies();
      await FlutterWebviewPlugin().clearCache();
    });
    result.ifFailure((e) {
      //todo log error
    });

    _isInLogout = false;
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
