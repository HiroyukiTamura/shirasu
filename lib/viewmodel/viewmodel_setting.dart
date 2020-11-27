import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';
import 'package:shirasu/model/viewer.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'viewmodel_setting.freezed.dart';

class ViewModelSetting extends DisposableChangeNotifier with ViewModelBase {
  final apiClient = ApiClient(Client());
  EditedUserInfo editedUserInfo = EditedUserInfo.empty();
  SettingModelState state = const SettingModelState.preInitialized();

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
    if (state is StateSuccess) return;

    SettingModelState newState;
    try {
      final viewer = await apiClient.queryViewer();
      final locationStr = await _genLocationStr(dummyUser);
      newState = StateSuccess(viewer, locationStr);
    } catch (e) {
      print(e);
      newState = const StateError();
    }

    if (!isDisposed) {
      state = newState;
      notifyListeners();
    }
  }

  void updateBirthDate(DateTime birthDate) {
    editedUserInfo = editedUserInfo.copyWith(birthDate: birthDate);
    notifyListeners();
  }

  void updateJobCode(String jobCode) {
    editedUserInfo = editedUserInfo.copyWith(jobCode: jobCode);
    notifyListeners();
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

@freezed
abstract class SettingModelState with _$SettingModelState {
  const factory SettingModelState.preInitialized() = StatePreInitialized;

  const factory SettingModelState.loading() = StateLoading;

  const factory SettingModelState.success(Viewer data, String locationStr) =
      StateSuccess;

  const factory SettingModelState.error() = StateError;
}

@freezed
abstract class EditedUserInfo implements _$EditedUserInfo {
  
  const factory EditedUserInfo({DateTime birthDate, String jobCode}) =
      _EditedUserInfo;

  factory EditedUserInfo.empty() => const EditedUserInfo();

  const EditedUserInfo._();

  bool get isEdited => birthDate != null || jobCode != null;
}
