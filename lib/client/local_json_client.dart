import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/local/country_data.dart';
import 'package:shirasu/model/local/prefecture_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/model/model_setting.dart';
import 'package:shirasu/extension.dart';
import 'package:dartx/dartx.dart';

class LocalJsonClient {
  factory LocalJsonClient.instance() => _instance ??= LocalJsonClient._();

  LocalJsonClient._();

  static LocalJsonClient _instance;

  CountryData _countryData;
  PrefectureData _prefectureData;
  String _jsClickLoginBtn;
  String _jsLocalStorageGetter;

  Future<String> get jsClickLoginBtn async =>
      _jsClickLoginBtn ??= await rootBundle.loadString(Assets.js.clickLoginBtn);

  Future<String> get jsLocalStorageGetter async => _jsLocalStorageGetter ??=
      await rootBundle.loadString(Assets.js.localStorageGetter);

  /// [countryCode] : ex. JP
  Future<CountryData> getCountryData() async => _countryData ??= await _loadCountryData();

  Future<PrefectureData> getPrefectureData() async => _prefectureData ??= await _loadPrefectureData();

  static Future<CountryData> _loadCountryData() async {
    final string = await rootBundle.loadString(Assets.json.country);
    final json = jsonDecode(string);
    return CountryData.fromJson(json as Map<String, dynamic>);
  }

  static Future<PrefectureData> _loadPrefectureData() async {
    final string = await rootBundle.loadString(Assets.json.prefecture);
    final json = jsonDecode(string);
    return PrefectureData.fromJson(json as Map<String, dynamic>);
  }

  /// [prefectureCode] : 1 ~ 47
  Future<String> getPrefectureName(String prefectureCode) async {
    final data = await getPrefectureData();
    return data.prefecture
        .firstOrNullWhere((it) => it.code == prefectureCode)
        ?.name;
  }

  Future<String> getCountryName(String countryCode) async {
    final countryData = await getCountryData();
    return countryData.countries[countryCode.toUpperCase()];
  }

  static bool isJapan(String countryCode) => countryCode.toUpperCase() == 'JP';

  Future<String> genLocationStr(User user, Location location) async {
    final countryCode =
        location?.countryCode ?? user?.httpsShirasuIoUserAttribute?.country;
    final prefectureCode = location?.prefectureCode ??
        user?.httpsShirasuIoUserAttribute?.prefecture;
    String countryStr =
        await getCountryName(countryCode) ?? Strings.DEFAULT_EMPTY;
    if (LocalJsonClient.isJapan(countryCode)) {
      final prefectureStr =
          await getPrefectureName(prefectureCode) ?? Strings.DEFAULT_EMPTY;
      countryStr += ' $prefectureStr';
    }
    return countryStr;
  }
}
