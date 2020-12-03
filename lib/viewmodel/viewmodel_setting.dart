
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_user_location.dart';

class ViewModelSetting extends ViewModelBase<SettingModel> with LocatorMixin {
  ViewModelSetting() : super(SettingModel.initial());

  final _apiClient = ApiClient(Client());
  final _jsonClient = const LocalJsonClient();

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

  @override
  void update(T Function<T>() watch) {
    final editedState = watch<ViewModelUserLocation>().state;
    if (editedState is Drafted) {
      //todo 次ここから
      setState(state.copyWith(editedUserInfo: editedState.data));
    }
  }

  /// todo should be synchronized?
  /// todo check is disposed
  @override
  Future<void> initialize() async {
    if (state.settingModelState is StateSuccess) return;

    SettingModelState newState;
    try {
      final viewer = await _apiClient.queryViewer();
      final locationStr = await _genLocationStr(dummyUser);
      newState = StateSuccess(viewer, locationStr);
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

  Future<String> _genLocationStr(User user) async {
    String countryStr = await _jsonClient
            .getCountryName(user.httpsShirasuIoUserAttribute.country) ??
        Strings.DEFAULT_EMPTY;
    if (LocalJsonClient.isJapan(user.httpsShirasuIoUserAttribute.country)) {
      final prefectureStr = await _jsonClient
              .getPrefectureName(user.httpsShirasuIoUserAttribute.prefecture) ??
          Strings.DEFAULT_EMPTY;
      countryStr += ' $prefectureStr';
    }
    return countryStr;
  }
}
