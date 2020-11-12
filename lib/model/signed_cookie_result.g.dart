// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signed_cookie_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignedCookieResult _$_$_SignedCookieResultFromJson(
    Map<String, dynamic> json) {
  return _$_SignedCookieResult(
    ok: json['ok'] as bool,
    url: json['url'] as String,
    signLimitAt: json['signLimitAt'] == null
        ? null
        : DateTime.parse(json['signLimitAt'] as String),
    now: json['now'] == null ? null : DateTime.parse(json['now'] as String),
  );
}

Map<String, dynamic> _$_$_SignedCookieResultToJson(
        _$_SignedCookieResult instance) =>
    <String, dynamic>{
      'ok': instance.ok,
      'url': instance.url,
      'signLimitAt': instance.signLimitAt?.toIso8601String(),
      'now': instance.now?.toIso8601String(),
    };
