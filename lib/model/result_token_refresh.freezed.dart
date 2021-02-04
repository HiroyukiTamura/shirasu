// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'result_token_refresh.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ResultTokenRefresh _$ResultTokenRefreshFromJson(Map<String, dynamic> json) {
  return _ResultTokenRefresh.fromJson(json);
}

/// @nodoc
class _$ResultTokenRefreshTearOff {
  const _$ResultTokenRefreshTearOff();

// ignore: unused_element
  _ResultTokenRefresh call(
      {@required String accessToken,
      @required int expiresIn,
      @required String scope,
      @required String idToken,
      @required String tokenType}) {
    return _ResultTokenRefresh(
      accessToken: accessToken,
      expiresIn: expiresIn,
      scope: scope,
      idToken: idToken,
      tokenType: tokenType,
    );
  }

// ignore: unused_element
  ResultTokenRefresh fromJson(Map<String, Object> json) {
    return ResultTokenRefresh.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ResultTokenRefresh = _$ResultTokenRefreshTearOff();

/// @nodoc
mixin _$ResultTokenRefresh {
  String get accessToken;
  int get expiresIn;
  String get scope;
  String get idToken;
  String get tokenType;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ResultTokenRefreshCopyWith<ResultTokenRefresh> get copyWith;
}

/// @nodoc
abstract class $ResultTokenRefreshCopyWith<$Res> {
  factory $ResultTokenRefreshCopyWith(
          ResultTokenRefresh value, $Res Function(ResultTokenRefresh) then) =
      _$ResultTokenRefreshCopyWithImpl<$Res>;
  $Res call(
      {String accessToken,
      int expiresIn,
      String scope,
      String idToken,
      String tokenType});
}

/// @nodoc
class _$ResultTokenRefreshCopyWithImpl<$Res>
    implements $ResultTokenRefreshCopyWith<$Res> {
  _$ResultTokenRefreshCopyWithImpl(this._value, this._then);

  final ResultTokenRefresh _value;
  // ignore: unused_field
  final $Res Function(ResultTokenRefresh) _then;

  @override
  $Res call({
    Object accessToken = freezed,
    Object expiresIn = freezed,
    Object scope = freezed,
    Object idToken = freezed,
    Object tokenType = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      scope: scope == freezed ? _value.scope : scope as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
    ));
  }
}

/// @nodoc
abstract class _$ResultTokenRefreshCopyWith<$Res>
    implements $ResultTokenRefreshCopyWith<$Res> {
  factory _$ResultTokenRefreshCopyWith(
          _ResultTokenRefresh value, $Res Function(_ResultTokenRefresh) then) =
      __$ResultTokenRefreshCopyWithImpl<$Res>;
  @override
  $Res call(
      {String accessToken,
      int expiresIn,
      String scope,
      String idToken,
      String tokenType});
}

/// @nodoc
class __$ResultTokenRefreshCopyWithImpl<$Res>
    extends _$ResultTokenRefreshCopyWithImpl<$Res>
    implements _$ResultTokenRefreshCopyWith<$Res> {
  __$ResultTokenRefreshCopyWithImpl(
      _ResultTokenRefresh _value, $Res Function(_ResultTokenRefresh) _then)
      : super(_value, (v) => _then(v as _ResultTokenRefresh));

  @override
  _ResultTokenRefresh get _value => super._value as _ResultTokenRefresh;

  @override
  $Res call({
    Object accessToken = freezed,
    Object expiresIn = freezed,
    Object scope = freezed,
    Object idToken = freezed,
    Object tokenType = freezed,
  }) {
    return _then(_ResultTokenRefresh(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      scope: scope == freezed ? _value.scope : scope as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ResultTokenRefresh implements _ResultTokenRefresh {
  const _$_ResultTokenRefresh(
      {@required this.accessToken,
      @required this.expiresIn,
      @required this.scope,
      @required this.idToken,
      @required this.tokenType})
      : assert(accessToken != null),
        assert(expiresIn != null),
        assert(scope != null),
        assert(idToken != null),
        assert(tokenType != null);

  factory _$_ResultTokenRefresh.fromJson(Map<String, dynamic> json) =>
      _$_$_ResultTokenRefreshFromJson(json);

  @override
  final String accessToken;
  @override
  final int expiresIn;
  @override
  final String scope;
  @override
  final String idToken;
  @override
  final String tokenType;

  @override
  String toString() {
    return 'ResultTokenRefresh(accessToken: $accessToken, expiresIn: $expiresIn, scope: $scope, idToken: $idToken, tokenType: $tokenType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResultTokenRefresh &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(tokenType);

  @JsonKey(ignore: true)
  @override
  _$ResultTokenRefreshCopyWith<_ResultTokenRefresh> get copyWith =>
      __$ResultTokenRefreshCopyWithImpl<_ResultTokenRefresh>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ResultTokenRefreshToJson(this);
  }
}

abstract class _ResultTokenRefresh implements ResultTokenRefresh {
  const factory _ResultTokenRefresh(
      {@required String accessToken,
      @required int expiresIn,
      @required String scope,
      @required String idToken,
      @required String tokenType}) = _$_ResultTokenRefresh;

  factory _ResultTokenRefresh.fromJson(Map<String, dynamic> json) =
      _$_ResultTokenRefresh.fromJson;

  @override
  String get accessToken;
  @override
  int get expiresIn;
  @override
  String get scope;
  @override
  String get idToken;
  @override
  String get tokenType;
  @override
  @JsonKey(ignore: true)
  _$ResultTokenRefreshCopyWith<_ResultTokenRefresh> get copyWith;
}
