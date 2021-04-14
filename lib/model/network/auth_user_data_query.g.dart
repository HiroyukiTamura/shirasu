// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_data_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserDataQuery _$_$_AuthUserDataQueryFromJson(Map<String, dynamic> json) {
  return _$_AuthUserDataQuery(
    state: json['state'] as String,
    code: json['code'] as String,
  );
}

Map<String, dynamic> _$_$_AuthUserDataQueryToJson(
        _$_AuthUserDataQuery instance) =>
    <String, dynamic>{
      'state': instance.state,
      'code': instance.code,
    };

_$_AuthUserDataQueryErr _$_$_AuthUserDataQueryErrFromJson(
    Map<String, dynamic> json) {
  return _$_AuthUserDataQueryErr(
    error: json['error'] as String,
    errorDescription: json['error_description'] as String,
  );
}

Map<String, dynamic> _$_$_AuthUserDataQueryErrToJson(
        _$_AuthUserDataQueryErr instance) =>
    <String, dynamic>{
      'error': instance.error,
      'error_description': instance.errorDescription,
    };
