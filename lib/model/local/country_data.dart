import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/extension.dart';

part 'country_data.freezed.dart';

part 'country_data.g.dart';

@freezed
abstract class CountryData with _$CountryData {
  const factory CountryData({
    @required String locale,
    @required
    @JsonKey(name: 'countries')
    @protected
        Map<String, String> rawCountries,
  }) = _CountryData;

  factory CountryData.fromJson(Map<String, dynamic> json) =>
      _$CountryDataFromJson(json);

  const CountryData._();

  UnmodifiableMapView<String, String> get countries =>
      rawCountries.toUnmodifiable();
}
