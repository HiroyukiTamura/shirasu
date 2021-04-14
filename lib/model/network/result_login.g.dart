// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResult _$_$_LoginResultFromJson(Map<String, dynamic> json) {
  return _$_LoginResult(
    accessToken: json['access_token'] as String,
    idToken: json['id_token'] as String,
    scope: json['scope'] as String,
    expiresIn: json['expires_in'] as int,
    tokenType: json['token_type'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_LoginResultToJson(_$_LoginResult instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'id_token': instance.idToken,
      'scope': instance.scope,
      'expires_in': instance.expiresIn,
      'token_type': instance.tokenType,
      'refresh_token': instance.refreshToken,
    };
