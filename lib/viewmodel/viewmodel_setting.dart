import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_user_location.dart';

class ViewModelSetting extends ViewModelBase<SettingModel> {
  ViewModelSetting() : super(SettingModel.initial());

  final _apiClient = ApiClient(Client());

  static final User dummyUser = User(
    email: 'hogehoge@gmail.com',
    emailVerified: true,
    givenName: '太郎',
    httpsShirasuIoCustomerId: '',
    nickname: 'NICK_NAME',
    sub: 'auth0|xxxx',
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
}
