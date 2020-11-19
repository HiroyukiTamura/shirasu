// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_token_refresh.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultTokenRefresh _$_$_ResultTokenRefreshFromJson(
    Map<String, dynamic> json) {
  return _$_ResultTokenRefresh(
    accessToken: json['accessToken'] as String,
    expiresIn: json['expiresIn'] as int,
    scope: json['scope'] as String,
    idToken: json['idToken'] as String,
    tokenType: json['tokenType'] as String,
  );
}

Map<String, dynamic> _$_$_ResultTokenRefreshToJson(
        _$_ResultTokenRefresh instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'expiresIn': instance.expiresIn,
      'scope': instance.scope,
      'idToken': instance.idToken,
      'tokenType': instance.tokenType,
    };
