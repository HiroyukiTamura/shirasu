// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefecture_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrefectureData _$_$_PrefectureDataFromJson(Map<String, dynamic> json) {
  return _$_PrefectureData(
    rawPrefecture: (json['prefecture'] as List)
        ?.map((e) =>
            e == null ? null : Prefecture.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PrefectureDataToJson(_$_PrefectureData instance) =>
    <String, dynamic>{
      'prefecture': instance.rawPrefecture,
    };

_$_Prefecture _$_$_PrefectureFromJson(Map<String, dynamic> json) {
  return _$_Prefecture(
    codeInt: json['code'] as int,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_PrefectureToJson(_$_Prefecture instance) =>
    <String, dynamic>{
      'code': instance.codeInt,
      'name': instance.name,
    };
