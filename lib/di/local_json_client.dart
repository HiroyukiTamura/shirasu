import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';

class LocalJsonClient {

  const LocalJsonClient();

  /// [countryCode] : ex. JP
  Future<CountryData> getCountryData() async {
    final string = await rootBundle.loadString(Assets.json.country);
    final json = jsonDecode(string);
    return CountryData.fromJson(json as Map<String, dynamic>);
  }

  Future<PrefectureData> getPrefectureData() async {
    final string = await rootBundle.loadString(Assets.json.prefecture);
    final json = jsonDecode(string);
    return PrefectureData.fromJson(json as Map<String, dynamic>);
  }

  /// [prefectureCode] : 1 ~ 47
  Future<String> getPrefectureName(String prefectureCode) async {
    final data = await getPrefectureData();
    return data.prefecture
        .firstWhere((it) => it.code == prefectureCode,
        orElse: () => null)
        ?.name;
  }

  Future<String> getCountryName(String countryCode) async {
    final countryData = await getCountryData();
    return countryData.countries[countryCode.toUpperCase()];
  }

  static bool isJapan(String countryCode) => countryCode.toUpperCase() == 'JP';
}