import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/model_setting.dart';
import 'package:shirasu/extension.dart';

class LocalJsonClient {

  factory LocalJsonClient.instance() => _instance ??= LocalJsonClient._();

  LocalJsonClient._();

  static LocalJsonClient _instance;

  CountryData countryData;
  PrefectureData prefectureData;

  /// [countryCode] : ex. JP
  Future<CountryData> getCountryData() async {
    if (countryData == null) {
      final string = await rootBundle.loadString(Assets.json.country);
      final json = jsonDecode(string);
      countryData = CountryData.fromJson(json as Map<String, dynamic>);
    }
    return countryData;
  }

  Future<PrefectureData> getPrefectureData() async {
    if (prefectureData == null) {
      final string = await rootBundle.loadString(Assets.json.prefecture);
      final json = jsonDecode(string);
      prefectureData = PrefectureData.fromJson(json as Map<String, dynamic>);
    }
    return prefectureData;
  }

  /// [prefectureCode] : 1 ~ 47
  Future<String> getPrefectureName(String prefectureCode) async {
    final data = await getPrefectureData();
    return data.prefecture
        .firstWhereOrNull((it) => it.code == prefectureCode)
        ?.name;
  }

  Future<String> getCountryName(String countryCode) async {
    final countryData = await getCountryData();
    return countryData.countries[countryCode.toUpperCase()];
  }

  static bool isJapan(String countryCode) => countryCode.toUpperCase() == 'JP';

  Future<String> genLocationStr(
      User user, Location location) async {
    final countryCode = location?.countryCode ??
        user?.httpsShirasuIoUserAttribute?.country;
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
