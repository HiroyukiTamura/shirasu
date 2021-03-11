// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryData _$_$_CountryDataFromJson(Map<String, dynamic> json) {
  return _$_CountryData(
    locale: json['locale'] as String,
    rawCountries: (json['countries'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    ),
  );
}

Map<String, dynamic> _$_$_CountryDataToJson(_$_CountryData instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'countries': instance.rawCountries,
    };
