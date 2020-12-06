import 'package:async/async.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/update_user_with_attr_variable.dart'
    show UpdateUserWithAttrVariable;
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model_setting.dart';
import 'package:riverpod/src/framework.dart';
import 'message_notifier.dart';

class ViewModelSetting extends ViewModelBase<SettingModel> {
  ViewModelSetting(this._ref) : super(SettingModel.initial());

  /// todo is really correct that `AutoDisposeProviderReference` exists in StateNotifier??
  final AutoDisposeProviderReference _ref;
  final _apiClient = ApiClient(Client());

  SnackBarMessageNotifier get _msgNotifier => _ref.read(snackBarMsgProvider);

  static final User dummyUser = User(
    email: 'hogehoge@gmail.com',
    emailVerified: true,
    givenName: '太郎',
    httpsShirasuIoCustomerId: '',
    nickname: 'NICK_NAME',
    sub: 'google-oauth2|109431228853603579684',
    familyName: '山田',
    httpsShirasuIoRoles: [],
    httpsShirasuIoDistributeds: [],
    updatedAt: DateTime.now(),
    httpsShirasuIoTenants: [],
    locale: '',
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
    if (state.settingModelState is StateSuccess) return;

    SettingModelState newState;
    try {
      final viewer = await _apiClient.queryViewer();
      newState = StateSuccess(viewer);
    } catch (e) {
      print(e);
      newState = const StateError();
    }

    setState(state.copyWith(settingModelState: newState));
  }

  void updateBirthDate(DateTime birthDate) {
    final editedUserInfo = state.editedUserInfo.copyWith(birthDate: birthDate);
    state = state.copyWith(editedUserInfo: editedUserInfo);
  }

  void updateJobCode(String jobCode) {
    final editedUserInfo = state.editedUserInfo.copyWith(jobCode: jobCode);
    state = state.copyWith(editedUserInfo: editedUserInfo);
  }

  void updateUserLocation(String countryCode, String prefectureCode) =>
      setState(
        state.copyWith(
          editedUserInfo: state.editedUserInfo.copyWith(
            location: Location(
              countryCode: countryCode,
              prefectureCode: prefectureCode,
            ),
          ),
        ),
      );


  Future<void> postProfile() async {

    if (state.uploadingProfile)
      return;

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

    try {
      final updatedData = await _apiClient.updateUserWithAttr(variable);
      //todo update `dummyUser`
    } catch (e) {
      print(e);
      _msgNotifier.notifyErrorMsg(ErrorMsg.UNKNOWN);
    }

    setState(state.copyWith(
      uploadingProfile: false,
      editedUserInfo: EditedUserInfo.empty(),
    ));
  }
}

class LocationTextNotifier extends StateNotifier<String>
    with StateTrySetter<String> {
  LocationTextNotifier(AutoDisposeProviderReference ref) : super('') {
    final removeListener = ref
        .watch<ViewModelSetting>(settingViewModelSProvider)
        .addListener(
            (state) async => _updateLocation(state.editedUserInfo.location));
    ref.onDispose(removeListener);
  }

  final LocalJsonClient _jsonClient = const LocalJsonClient();

  CancelableOperation<String> _completer;

  /// cancel old future if it's not completed
  Future<void> _updateLocation(Location location) async {
    if (_completer?.isCompleted == false) await _completer.cancel();
    _completer = CancelableOperation.fromFuture(
        _jsonClient.genLocationStr(ViewModelSetting.dummyUser, location));
    final text = await _completer.value;
    setState(text);
  }
}
