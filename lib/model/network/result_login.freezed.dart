// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'result_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LoginResult _$LoginResultFromJson(Map<String, dynamic> json) {
  return _LoginResult.fromJson(json);
}

/// @nodoc
class _$LoginResultTearOff {
  const _$LoginResultTearOff();

// ignore: unused_element
  _LoginResult call(
      {@required @JsonKey(name: 'access_token') String accessToken,
      @required @JsonKey(name: 'id_token') String idToken,
      @required String scope,
      @required @JsonKey(name: 'expires_in') int expiresIn,
      @required @JsonKey(name: 'token_type') String tokenType,
      @required @JsonKey(name: 'refresh_token') String refreshToken}) {
    return _LoginResult(
      accessToken: accessToken,
      idToken: idToken,
      scope: scope,
      expiresIn: expiresIn,
      tokenType: tokenType,
      refreshToken: refreshToken,
    );
  }

// ignore: unused_element
  LoginResult fromJson(Map<String, Object> json) {
    return LoginResult.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LoginResult = _$LoginResultTearOff();

/// @nodoc
mixin _$LoginResult {
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'id_token')
  String get idToken;
  String get scope;
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @JsonKey(name: 'token_type')
  String get tokenType;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LoginResultCopyWith<LoginResult> get copyWith;
}

/// @nodoc
abstract class $LoginResultCopyWith<$Res> {
  factory $LoginResultCopyWith(
          LoginResult value, $Res Function(LoginResult) then) =
      _$LoginResultCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'id_token') String idToken,
      String scope,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$LoginResultCopyWithImpl<$Res> implements $LoginResultCopyWith<$Res> {
  _$LoginResultCopyWithImpl(this._value, this._then);

  final LoginResult _value;
  // ignore: unused_field
  final $Res Function(LoginResult) _then;

  @override
  $Res call({
    Object accessToken = freezed,
    Object idToken = freezed,
    Object scope = freezed,
    Object expiresIn = freezed,
    Object tokenType = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
      scope: scope == freezed ? _value.scope : scope as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginResultCopyWith<$Res>
    implements $LoginResultCopyWith<$Res> {
  factory _$LoginResultCopyWith(
          _LoginResult value, $Res Function(_LoginResult) then) =
      __$LoginResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'id_token') String idToken,
      String scope,
      @JsonKey(name: 'expires_in') int expiresIn,
      @JsonKey(name: 'token_type') String tokenType,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$LoginResultCopyWithImpl<$Res> extends _$LoginResultCopyWithImpl<$Res>
    implements _$LoginResultCopyWith<$Res> {
  __$LoginResultCopyWithImpl(
      _LoginResult _value, $Res Function(_LoginResult) _then)
      : super(_value, (v) => _then(v as _LoginResult));

  @override
  _LoginResult get _value => super._value as _LoginResult;

  @override
  $Res call({
    Object accessToken = freezed,
    Object idToken = freezed,
    Object scope = freezed,
    Object expiresIn = freezed,
    Object tokenType = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_LoginResult(
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
      scope: scope == freezed ? _value.scope : scope as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LoginResult implements _LoginResult {
  const _$_LoginResult(
      {@required @JsonKey(name: 'access_token') this.accessToken,
      @required @JsonKey(name: 'id_token') this.idToken,
      @required this.scope,
      @required @JsonKey(name: 'expires_in') this.expiresIn,
      @required @JsonKey(name: 'token_type') this.tokenType,
      @required @JsonKey(name: 'refresh_token') this.refreshToken})
      : assert(accessToken != null),
        assert(idToken != null),
        assert(scope != null),
        assert(expiresIn != null),
        assert(tokenType != null),
        assert(refreshToken != null);

  factory _$_LoginResult.fromJson(Map<String, dynamic> json) =>
      _$_$_LoginResultFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'id_token')
  final String idToken;
  @override
  final String scope;
  @override
  @JsonKey(name: 'expires_in')
  final int expiresIn;
  @override
  @JsonKey(name: 'token_type')
  final String tokenType;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'LoginResult(accessToken: $accessToken, idToken: $idToken, scope: $scope, expiresIn: $expiresIn, tokenType: $tokenType, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginResult &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.idToken, idToken) ||
                const DeepCollectionEquality()
                    .equals(other.idToken, idToken)) &&
            (identical(other.scope, scope) ||
                const DeepCollectionEquality().equals(other.scope, scope)) &&
            (identical(other.expiresIn, expiresIn) ||
                const DeepCollectionEquality()
                    .equals(other.expiresIn, expiresIn)) &&
            (identical(other.tokenType, tokenType) ||
                const DeepCollectionEquality()
                    .equals(other.tokenType, tokenType)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(refreshToken);

  @JsonKey(ignore: true)
  @override
  _$LoginResultCopyWith<_LoginResult> get copyWith =>
      __$LoginResultCopyWithImpl<_LoginResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LoginResultToJson(this);
  }
}

abstract class _LoginResult implements LoginResult {
  const factory _LoginResult(
          {@required @JsonKey(name: 'access_token') String accessToken,
          @required @JsonKey(name: 'id_token') String idToken,
          @required String scope,
          @required @JsonKey(name: 'expires_in') int expiresIn,
          @required @JsonKey(name: 'token_type') String tokenType,
          @required @JsonKey(name: 'refresh_token') String refreshToken}) =
      _$_LoginResult;

  factory _LoginResult.fromJson(Map<String, dynamic> json) =
      _$_LoginResult.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'id_token')
  String get idToken;
  @override
  String get scope;
  @override
  @JsonKey(name: 'expires_in')
  int get expiresIn;
  @override
  @JsonKey(name: 'token_type')
  String get tokenType;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$LoginResultCopyWith<_LoginResult> get copyWith;
}

/// @nodoc
class _$LoginDataTearOff {
  const _$LoginDataTearOff();

// ignore: unused_element
  _LoginData call({@required String username, @required String password}) {
    return _LoginData(
      username: username,
      password: password,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginData = _$LoginDataTearOff();

/// @nodoc
mixin _$LoginData {
  String get username;
  String get password;

  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res> implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  final LoginData _value;
  // ignore: unused_field
  final $Res Function(LoginData) _then;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
abstract class _$LoginDataCopyWith<$Res> implements $LoginDataCopyWith<$Res> {
  factory _$LoginDataCopyWith(
          _LoginData value, $Res Function(_LoginData) then) =
      __$LoginDataCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$LoginDataCopyWithImpl<$Res> extends _$LoginDataCopyWithImpl<$Res>
    implements _$LoginDataCopyWith<$Res> {
  __$LoginDataCopyWithImpl(_LoginData _value, $Res Function(_LoginData) _then)
      : super(_value, (v) => _then(v as _LoginData));

  @override
  _LoginData get _value => super._value as _LoginData;

  @override
  $Res call({
    Object username = freezed,
    Object password = freezed,
  }) {
    return _then(_LoginData(
      username: username == freezed ? _value.username : username as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$_LoginData implements _LoginData {
  const _$_LoginData({@required this.username, @required this.password})
      : assert(username != null),
        assert(password != null);

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginData(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginData &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginDataCopyWith<_LoginData> get copyWith =>
      __$LoginDataCopyWithImpl<_LoginData>(this, _$identity);
}

abstract class _LoginData implements LoginData {
  const factory _LoginData(
      {@required String username, @required String password}) = _$_LoginData;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$LoginDataCopyWith<_LoginData> get copyWith;
}
