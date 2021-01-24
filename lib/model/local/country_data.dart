import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_data.freezed.dart';
part 'country_data.g.dart';

@freezed
abstract class CountryData with _$CountryData {
  const factory CountryData ({
    @required String locale,
    @required Map<String, String> countries,
  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) =>
      _$CountryDataFromJson(json);
}
