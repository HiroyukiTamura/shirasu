import 'dart:async';

import 'package:async/async.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/local_json_client.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart'
    show UpdateUserWithAttrVariable;
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'message_notifier.dart';
import 'model/error_msg_common.dart';

class ViewModelSetting extends ViewModelBase<SettingModel> {
  ViewModelSetting(Reader reader) : super(reader, SettingModel.initial());

  SnackBarMessageNotifier get _msgNotifier => reader(kPrvSnackBar);

  static final User dummyUser = User(
    email: 'hogehoge@gmail.com',
    emailVerified: true,
    // givenName: '太郎',
    httpsShirasuIoCustomerId: '',
    nickname: 'NICK_NAME',
    sub: 'google-oauth2|109431228853603579684',
    // familyName: '山田',
    rawHttpsShirasuIoRoles: [],
    rawHttpsShirasuIoDistributeds: [],
    updatedAt: DateTime.now(),
    rawHttpsShirasuIoTenants: [],
    // locale: '',
    name: '',
    picture: '',
    httpsShirasuIoUserAttribute: HttpsShirasuIoUserAttribute(
      birthDate: DateTime.now(),
      job: 'jobAcademia',
      countryNonFixedCase: 'jp',
      familyName: '山田',
      givenName: '太郎',
      familyNameReading: 'やまだ',
      givenNameReading: 'たろう',
      prefecture: '13',
    ),
  );

  /// todo should be synchronized?
  /// todo check is disposed
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
    } on UnauthorizedException catch (e) {
      print(e);
      authExpired = true;

      final errorMsg = e.detectedByTime
          ? const ErrorMsgCommon.authExpired()
          : const ErrorMsgCommon.unAuth();
      newState = SettingModelState.error(errorMsg);
    } on TimeoutException catch (e) {
      //todo log error
      print(e);
      newState = const SettingModelState.error(ErrorMsgCommon.networkTimeout());
    } on NetworkDisconnectException catch (e) {
      print(e);
      newState =
          const SettingModelState.error(ErrorMsgCommon.networkDisconnected());
    } catch (e) {
      print(e);
      newState = const SettingModelState.error(ErrorMsgCommon.unknown());
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

    final variable = UpdateUserWithAttrVariable.build(
      userId: dummyUser.sub,
      birthDate: state.editedUserInfo?.birthDate ??
          dummyUser.httpsShirasuIoUserAttribute.birthDate,
      job: state.editedUserInfo?.jobCode ??
          dummyUser.httpsShirasuIoUserAttribute.job,
      country: state.editedUserInfo?.location?.countryCode ??
          dummyUser.httpsShirasuIoUserAttribute.country,
      prefecture: state.editedUserInfo?.location?.prefectureCode ??
          dummyUser.httpsShirasuIoUserAttribute?.prefecture,
    );

    state = state.copyWith(uploadingProfile: true);

    try {
      final updatedData = await graphQlRepository.updateUserWithAttr(variable);
      //todo update `dummyUser`

    } catch (e) {
      print(e);
      _msgNotifier.notifyMsg(const SnackMsg.unknown(), false);
    }

    if (mounted)
      state = state.copyWith(
        uploadingProfile: false,
        editedUserInfo: EditedUserInfo.empty(),
      );
  }
}

class LocationTextNotifier extends StateNotifier<String>
    with StateTrySetter<String> {
  LocationTextNotifier(AutoDisposeProviderReference ref) : super('') {
    final removeListener = ref
        .watch<ViewModelSetting>(kPrvViewModelSetting)
        .addListener(
            (state) async => _updateLocation(state.editedUserInfo.location));
    ref.onDispose(removeListener);
  }

  final LocalJsonClient _jsonClient = LocalJsonClient.instance();

  CancelableOperation<String> _completer;

  /// cancel old future if it's not completed
  Future<void> _updateLocation(Location location) async {
    if (_completer?.isCompleted == false) await _completer.cancel();
    _completer = CancelableOperation.fromFuture(
        _jsonClient.genLocationStr(ViewModelSetting.dummyUser, location));
    final text = await _completer.value;
    trySet(text);
  }
}
