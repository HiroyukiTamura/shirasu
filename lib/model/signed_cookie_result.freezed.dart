// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'signed_cookie_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SignedCookieResult _$SignedCookieResultFromJson(Map<String, dynamic> json) {
  return _SignedCookieResult.fromJson(json);
}

/// @nodoc
class _$SignedCookieResultTearOff {
  const _$SignedCookieResultTearOff();

// ignore: unused_element
  _SignedCookieResult call(
      {@required bool ok, String url, DateTime signLimitAt, DateTime now}) {
    return _SignedCookieResult(
      ok: ok,
      url: url,
      signLimitAt: signLimitAt,
      now: now,
    );
  }

// ignore: unused_element
  SignedCookieResult fromJson(Map<String, Object> json) {
    return SignedCookieResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SignedCookieResult = _$SignedCookieResultTearOff();

/// @nodoc
mixin _$SignedCookieResult {
  bool get ok;
  String get url;
  DateTime get signLimitAt;
  DateTime get now;

  Map<String, dynamic> toJson();
  $SignedCookieResultCopyWith<SignedCookieResult> get copyWith;
}

/// @nodoc
abstract class $SignedCookieResultCopyWith<$Res> {
  factory $SignedCookieResultCopyWith(
          SignedCookieResult value, $Res Function(SignedCookieResult) then) =
      _$SignedCookieResultCopyWithImpl<$Res>;
  $Res call({bool ok, String url, DateTime signLimitAt, DateTime now});
}

/// @nodoc
class _$SignedCookieResultCopyWithImpl<$Res>
    implements $SignedCookieResultCopyWith<$Res> {
  _$SignedCookieResultCopyWithImpl(this._value, this._then);

  final SignedCookieResult _value;
  // ignore: unused_field
  final $Res Function(SignedCookieResult) _then;

  @override
  $Res call({
    Object ok = freezed,
    Object url = freezed,
    Object signLimitAt = freezed,
    Object now = freezed,
  }) {
    return _then(_value.copyWith(
      ok: ok == freezed ? _value.ok : ok as bool,
      url: url == freezed ? _value.url : url as String,
      signLimitAt:
          signLimitAt == freezed ? _value.signLimitAt : signLimitAt as DateTime,
      now: now == freezed ? _value.now : now as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$SignedCookieResultCopyWith<$Res>
    implements $SignedCookieResultCopyWith<$Res> {
  factory _$SignedCookieResultCopyWith(
          _SignedCookieResult value, $Res Function(_SignedCookieResult) then) =
      __$SignedCookieResultCopyWithImpl<$Res>;
  @override
  $Res call({bool ok, String url, DateTime signLimitAt, DateTime now});
}

/// @nodoc
class __$SignedCookieResultCopyWithImpl<$Res>
    extends _$SignedCookieResultCopyWithImpl<$Res>
    implements _$SignedCookieResultCopyWith<$Res> {
  __$SignedCookieResultCopyWithImpl(
      _SignedCookieResult _value, $Res Function(_SignedCookieResult) _then)
      : super(_value, (v) => _then(v as _SignedCookieResult));

  @override
  _SignedCookieResult get _value => super._value as _SignedCookieResult;

  @override
  $Res call({
    Object ok = freezed,
    Object url = freezed,
    Object signLimitAt = freezed,
    Object now = freezed,
  }) {
    return _then(_SignedCookieResult(
      ok: ok == freezed ? _value.ok : ok as bool,
      url: url == freezed ? _value.url : url as String,
      signLimitAt:
          signLimitAt == freezed ? _value.signLimitAt : signLimitAt as DateTime,
      now: now == freezed ? _value.now : now as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SignedCookieResult implements _SignedCookieResult {
  _$_SignedCookieResult(
      {@required this.ok, this.url, this.signLimitAt, this.now})
      : assert(ok != null);

  factory _$_SignedCookieResult.fromJson(Map<String, dynamic> json) =>
      _$_$_SignedCookieResultFromJson(json);

  @override
  final bool ok;
  @override
  final String url;
  @override
  final DateTime signLimitAt;
  @override
  final DateTime now;

  @override
  String toString() {
    return 'SignedCookieResult(ok: $ok, url: $url, signLimitAt: $signLimitAt, now: $now)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignedCookieResult &&
            (identical(other.ok, ok) ||
                const DeepCollectionEquality().equals(other.ok, ok)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.signLimitAt, signLimitAt) ||
                const DeepCollectionEquality()
                    .equals(other.signLimitAt, signLimitAt)) &&
            (identical(other.now, now) ||
                const DeepCollectionEquality().equals(other.now, now)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ok) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(signLimitAt) ^
      const DeepCollectionEquality().hash(now);

  @override
  _$SignedCookieResultCopyWith<_SignedCookieResult> get copyWith =>
      __$SignedCookieResultCopyWithImpl<_SignedCookieResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SignedCookieResultToJson(this);
  }
}

abstract class _SignedCookieResult implements SignedCookieResult {
  factory _SignedCookieResult(
      {@required bool ok,
      String url,
      DateTime signLimitAt,
      DateTime now}) = _$_SignedCookieResult;

  factory _SignedCookieResult.fromJson(Map<String, dynamic> json) =
      _$_SignedCookieResult.fromJson;

  @override
  bool get ok;
  @override
  String get url;
  @override
  DateTime get signLimitAt;
  @override
  DateTime get now;
  @override
  _$SignedCookieResultCopyWith<_SignedCookieResult> get copyWith;
}
