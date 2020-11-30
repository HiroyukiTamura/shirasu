import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model_setting.dart';

class ViewModelSetting extends StateNotifier<SettingModel> with ViewModelBase, SafeStateSetter {

  ViewModelSetting(): super(SettingModel.initial());

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
      country: 'jp',
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

  /// [countryCode] : ex. JP
  static Future<String> _getCountryName(String countryCode) async {
    final string = await rootBundle.loadString(Assets.json.country);
    final json = jsonDecode(string);
    return CountryData.fromJson(json as Map<String, dynamic>)
        .countries[countryCode.toUpperCase()];
  }

  /// [prefectureCode] : 1 ~ 47
  static Future<String> _getPrefectureName(String prefectureCode) async {
    final string = await rootBundle.loadString(Assets.json.prefecture);
    final json = jsonDecode(string);
    return PrefectureData.fromJson(json as Map<String, dynamic>)
        .prefecture
        .firstWhere((it) => it.code == int.tryParse(prefectureCode),
            orElse: () => null)
        ?.name;
  }

  static Future<String> _genLocationStr(User user) async {
    String countryStr =
        await _getCountryName(user.httpsShirasuIoUserAttribute.country) ??
            Strings.DEFAULT_EMPTY;
    if (user.httpsShirasuIoUserAttribute.country.toUpperCase() == 'JP') {
      final prefectureStr = await _getPrefectureName(
              user.httpsShirasuIoUserAttribute.prefecture) ??
          Strings.DEFAULT_EMPTY;
      countryStr += ' $prefectureStr';
    }
    return countryStr;
  }
}
