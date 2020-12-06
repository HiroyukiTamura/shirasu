// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AuthData _$AuthDataFromJson(Map<String, dynamic> json) {
  return _AuthData.fromJson(json);
}

/// @nodoc
class _$AuthDataTearOff {
  const _$AuthDataTearOff();

// ignore: unused_element
  _AuthData call({@required Body body, @required int expiresAt}) {
    return _AuthData(
      body: body,
      expiresAt: expiresAt,
    );
  }

// ignore: unused_element
  AuthData fromJson(Map<String, Object> json) {
    return AuthData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $AuthData = _$AuthDataTearOff();

/// @nodoc
mixin _$AuthData {
  Body get body;
  int get expiresAt;

  Map<String, dynamic> toJson();
  $AuthDataCopyWith<AuthData> get copyWith;
}

/// @nodoc
abstract class $AuthDataCopyWith<$Res> {
  factory $AuthDataCopyWith(AuthData value, $Res Function(AuthData) then) =
      _$AuthDataCopyWithImpl<$Res>;
  $Res call({Body body, int expiresAt});

  $BodyCopyWith<$Res> get body;
}

/// @nodoc
class _$AuthDataCopyWithImpl<$Res> implements $AuthDataCopyWith<$Res> {
  _$AuthDataCopyWithImpl(this._value, this._then);

  final AuthData _value;
  // ignore: unused_field
  final $Res Function(AuthData) _then;

  @override
  $Res call({
    Object body = freezed,
    Object expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as Body,
      expiresAt: expiresAt == freezed ? _value.expiresAt : expiresAt as int,
    ));
  }

  @override
  $BodyCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $BodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$AuthDataCopyWith<$Res> implements $AuthDataCopyWith<$Res> {
  factory _$AuthDataCopyWith(_AuthData value, $Res Function(_AuthData) then) =
      __$AuthDataCopyWithImpl<$Res>;
  @override
  $Res call({Body body, int expiresAt});

  @override
  $BodyCopyWith<$Res> get body;
}

/// @nodoc
class __$AuthDataCopyWithImpl<$Res> extends _$AuthDataCopyWithImpl<$Res>
    implements _$AuthDataCopyWith<$Res> {
  __$AuthDataCopyWithImpl(_AuthData _value, $Res Function(_AuthData) _then)
      : super(_value, (v) => _then(v as _AuthData));

  @override
  _AuthData get _value => super._value as _AuthData;

  @override
  $Res call({
    Object body = freezed,
    Object expiresAt = freezed,
  }) {
    return _then(_AuthData(
      body: body == freezed ? _value.body : body as Body,
      expiresAt: expiresAt == freezed ? _value.expiresAt : expiresAt as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_AuthData implements _AuthData {
  const _$_AuthData({@required this.body, @required this.expiresAt})
      : assert(body != null),
        assert(expiresAt != null);

  factory _$_AuthData.fromJson(Map<String, dynamic> json) =>
      _$_$_AuthDataFromJson(json);

  @override
  final Body body;
  @override
  final int expiresAt;

  @override
  String toString() {
    return 'AuthData(body: $body, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthData &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(expiresAt);

  @override
  _$AuthDataCopyWith<_AuthData> get copyWith =>
      __$AuthDataCopyWithImpl<_AuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AuthDataToJson(this);
  }
}

abstract class _AuthData implements AuthData {
  const factory _AuthData({@required Body body, @required int expiresAt}) =
      _$_AuthData;

  factory _AuthData.fromJson(Map<String, dynamic> json) = _$_AuthData.fromJson;

  @override
  Body get body;
  @override
  int get expiresAt;
  @override
  _$AuthDataCopyWith<_AuthData> get copyWith;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
class _$BodyTearOff {
  const _$BodyTearOff();

// ignore: unused_element
  _Body call(
      {@required String clientId,
      @required String accessToken,
      @required String refreshToken,
      @required String idToken,
      @required String scope,
      @required int expiresIn,
      @required String tokenType,
      @required DecodedToken decodedToken,
      @required String audience}) {
    return _Body(
      clientId: clientId,
      accessToken: accessToken,
      refreshToken: refreshToken,
      idToken: idToken,
      scope: scope,
      expiresIn: expiresIn,
      tokenType: tokenType,
      decodedToken: decodedToken,
      audience: audience,
    );
  }

// ignore: unused_element
  Body fromJson(Map<String, Object> json) {
    return Body.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Body = _$BodyTearOff();

/// @nodoc
mixin _$Body {
  String get clientId;
  String get accessToken;
  String get refreshToken;
  String get idToken;
  String get scope;
  int get expiresIn;
  String get tokenType;
  DecodedToken get decodedToken;
  String get audience;

  Map<String, dynamic> toJson();
  $BodyCopyWith<Body> get copyWith;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res>;
  $Res call(
      {String clientId,
      String accessToken,
      String refreshToken,
      String idToken,
      String scope,
      int expiresIn,
      String tokenType,
      DecodedToken decodedToken,
      String audience});

  $DecodedTokenCopyWith<$Res> get decodedToken;
}

/// @nodoc
class _$BodyCopyWithImpl<$Res> implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  final Body _value;
  // ignore: unused_field
  final $Res Function(Body) _then;

  @override
  $Res call({
    Object clientId = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
    Object idToken = freezed,
    Object scope = freezed,
    Object expiresIn = freezed,
    Object tokenType = freezed,
    Object decodedToken = freezed,
    Object audience = freezed,
  }) {
    return _then(_value.copyWith(
      clientId: clientId == freezed ? _value.clientId : clientId as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
      scope: scope == freezed ? _value.scope : scope as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      decodedToken: decodedToken == freezed
          ? _value.decodedToken
          : decodedToken as DecodedToken,
      audience: audience == freezed ? _value.audience : audience as String,
    ));
  }

  @override
  $DecodedTokenCopyWith<$Res> get decodedToken {
    if (_value.decodedToken == null) {
      return null;
    }
    return $DecodedTokenCopyWith<$Res>(_value.decodedToken, (value) {
      return _then(_value.copyWith(decodedToken: value));
    });
  }
}

/// @nodoc
abstract class _$BodyCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$BodyCopyWith(_Body value, $Res Function(_Body) then) =
      __$BodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clientId,
      String accessToken,
      String refreshToken,
      String idToken,
      String scope,
      int expiresIn,
      String tokenType,
      DecodedToken decodedToken,
      String audience});

  @override
  $DecodedTokenCopyWith<$Res> get decodedToken;
}

/// @nodoc
class __$BodyCopyWithImpl<$Res> extends _$BodyCopyWithImpl<$Res>
    implements _$BodyCopyWith<$Res> {
  __$BodyCopyWithImpl(_Body _value, $Res Function(_Body) _then)
      : super(_value, (v) => _then(v as _Body));

  @override
  _Body get _value => super._value as _Body;

  @override
  $Res call({
    Object clientId = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
    Object idToken = freezed,
    Object scope = freezed,
    Object expiresIn = freezed,
    Object tokenType = freezed,
    Object decodedToken = freezed,
    Object audience = freezed,
  }) {
    return _then(_Body(
      clientId: clientId == freezed ? _value.clientId : clientId as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
      idToken: idToken == freezed ? _value.idToken : idToken as String,
      scope: scope == freezed ? _value.scope : scope as String,
      expiresIn: expiresIn == freezed ? _value.expiresIn : expiresIn as int,
      tokenType: tokenType == freezed ? _value.tokenType : tokenType as String,
      decodedToken: decodedToken == freezed
          ? _value.decodedToken
          : decodedToken as DecodedToken,
      audience: audience == freezed ? _value.audience : audience as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Body implements _Body {
  const _$_Body(
      {@required this.clientId,
      @required this.accessToken,
      @required this.refreshToken,
      @required this.idToken,
      @required this.scope,
      @required this.expiresIn,
      @required this.tokenType,
      @required this.decodedToken,
      @required this.audience})
      : assert(clientId != null),
        assert(accessToken != null),
        assert(refreshToken != null),
        assert(idToken != null),
        assert(scope != null),
        assert(expiresIn != null),
        assert(tokenType != null),
        assert(decodedToken != null),
        assert(audience != null);

  factory _$_Body.fromJson(Map<String, dynamic> json) =>
      _$_$_BodyFromJson(json);

  @override
  final String clientId;
  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String idToken;
  @override
  final String scope;
  @override
  final int expiresIn;
  @override
  final String tokenType;
  @override
  final DecodedToken decodedToken;
  @override
  final String audience;

  @override
  String toString() {
    return 'Body(clientId: $clientId, accessToken: $accessToken, refreshToken: $refreshToken, idToken: $idToken, scope: $scope, expiresIn: $expiresIn, tokenType: $tokenType, decodedToken: $decodedToken, audience: $audience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Body &&
            (identical(other.clientId, clientId) ||
                const DeepCollectionEquality()
                    .equals(other.clientId, clientId)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
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
            (identical(other.decodedToken, decodedToken) ||
                const DeepCollectionEquality()
                    .equals(other.decodedToken, decodedToken)) &&
            (identical(other.audience, audience) ||
                const DeepCollectionEquality()
                    .equals(other.audience, audience)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(clientId) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(idToken) ^
      const DeepCollectionEquality().hash(scope) ^
      const DeepCollectionEquality().hash(expiresIn) ^
      const DeepCollectionEquality().hash(tokenType) ^
      const DeepCollectionEquality().hash(decodedToken) ^
      const DeepCollectionEquality().hash(audience);

  @override
  _$BodyCopyWith<_Body> get copyWith =>
      __$BodyCopyWithImpl<_Body>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BodyToJson(this);
  }
}

abstract class _Body implements Body {
  const factory _Body(
      {@required String clientId,
      @required String accessToken,
      @required String refreshToken,
      @required String idToken,
      @required String scope,
      @required int expiresIn,
      @required String tokenType,
      @required DecodedToken decodedToken,
      @required String audience}) = _$_Body;

  factory _Body.fromJson(Map<String, dynamic> json) = _$_Body.fromJson;

  @override
  String get clientId;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get idToken;
  @override
  String get scope;
  @override
  int get expiresIn;
  @override
  String get tokenType;
  @override
  DecodedToken get decodedToken;
  @override
  String get audience;
  @override
  _$BodyCopyWith<_Body> get copyWith;
}

DecodedToken _$DecodedTokenFromJson(Map<String, dynamic> json) {
  return _DecodedToken.fromJson(json);
}

/// @nodoc
class _$DecodedTokenTearOff {
  const _$DecodedTokenTearOff();

// ignore: unused_element
  _DecodedToken call(
      {@required Encoded encoded,
      @required Header header,
      @required Claims claims,
      @required User user}) {
    return _DecodedToken(
      encoded: encoded,
      header: header,
      claims: claims,
      user: user,
    );
  }

// ignore: unused_element
  DecodedToken fromJson(Map<String, Object> json) {
    return DecodedToken.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DecodedToken = _$DecodedTokenTearOff();

/// @nodoc
mixin _$DecodedToken {
  Encoded get encoded;
  Header get header;
  Claims get claims;
  User get user;

  Map<String, dynamic> toJson();
  $DecodedTokenCopyWith<DecodedToken> get copyWith;
}

/// @nodoc
abstract class $DecodedTokenCopyWith<$Res> {
  factory $DecodedTokenCopyWith(
          DecodedToken value, $Res Function(DecodedToken) then) =
      _$DecodedTokenCopyWithImpl<$Res>;
  $Res call({Encoded encoded, Header header, Claims claims, User user});

  $EncodedCopyWith<$Res> get encoded;
  $HeaderCopyWith<$Res> get header;
  $ClaimsCopyWith<$Res> get claims;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$DecodedTokenCopyWithImpl<$Res> implements $DecodedTokenCopyWith<$Res> {
  _$DecodedTokenCopyWithImpl(this._value, this._then);

  final DecodedToken _value;
  // ignore: unused_field
  final $Res Function(DecodedToken) _then;

  @override
  $Res call({
    Object encoded = freezed,
    Object header = freezed,
    Object claims = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      encoded: encoded == freezed ? _value.encoded : encoded as Encoded,
      header: header == freezed ? _value.header : header as Header,
      claims: claims == freezed ? _value.claims : claims as Claims,
      user: user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $EncodedCopyWith<$Res> get encoded {
    if (_value.encoded == null) {
      return null;
    }
    return $EncodedCopyWith<$Res>(_value.encoded, (value) {
      return _then(_value.copyWith(encoded: value));
    });
  }

  @override
  $HeaderCopyWith<$Res> get header {
    if (_value.header == null) {
      return null;
    }
    return $HeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  @override
  $ClaimsCopyWith<$Res> get claims {
    if (_value.claims == null) {
      return null;
    }
    return $ClaimsCopyWith<$Res>(_value.claims, (value) {
      return _then(_value.copyWith(claims: value));
    });
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$DecodedTokenCopyWith<$Res>
    implements $DecodedTokenCopyWith<$Res> {
  factory _$DecodedTokenCopyWith(
          _DecodedToken value, $Res Function(_DecodedToken) then) =
      __$DecodedTokenCopyWithImpl<$Res>;
  @override
  $Res call({Encoded encoded, Header header, Claims claims, User user});

  @override
  $EncodedCopyWith<$Res> get encoded;
  @override
  $HeaderCopyWith<$Res> get header;
  @override
  $ClaimsCopyWith<$Res> get claims;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$DecodedTokenCopyWithImpl<$Res> extends _$DecodedTokenCopyWithImpl<$Res>
    implements _$DecodedTokenCopyWith<$Res> {
  __$DecodedTokenCopyWithImpl(
      _DecodedToken _value, $Res Function(_DecodedToken) _then)
      : super(_value, (v) => _then(v as _DecodedToken));

  @override
  _DecodedToken get _value => super._value as _DecodedToken;

  @override
  $Res call({
    Object encoded = freezed,
    Object header = freezed,
    Object claims = freezed,
    Object user = freezed,
  }) {
    return _then(_DecodedToken(
      encoded: encoded == freezed ? _value.encoded : encoded as Encoded,
      header: header == freezed ? _value.header : header as Header,
      claims: claims == freezed ? _value.claims : claims as Claims,
      user: user == freezed ? _value.user : user as User,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DecodedToken implements _DecodedToken {
  const _$_DecodedToken(
      {@required this.encoded,
      @required this.header,
      @required this.claims,
      @required this.user})
      : assert(encoded != null),
        assert(header != null),
        assert(claims != null),
        assert(user != null);

  factory _$_DecodedToken.fromJson(Map<String, dynamic> json) =>
      _$_$_DecodedTokenFromJson(json);

  @override
  final Encoded encoded;
  @override
  final Header header;
  @override
  final Claims claims;
  @override
  final User user;

  @override
  String toString() {
    return 'DecodedToken(encoded: $encoded, header: $header, claims: $claims, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecodedToken &&
            (identical(other.encoded, encoded) ||
                const DeepCollectionEquality()
                    .equals(other.encoded, encoded)) &&
            (identical(other.header, header) ||
                const DeepCollectionEquality().equals(other.header, header)) &&
            (identical(other.claims, claims) ||
                const DeepCollectionEquality().equals(other.claims, claims)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(encoded) ^
      const DeepCollectionEquality().hash(header) ^
      const DeepCollectionEquality().hash(claims) ^
      const DeepCollectionEquality().hash(user);

  @override
  _$DecodedTokenCopyWith<_DecodedToken> get copyWith =>
      __$DecodedTokenCopyWithImpl<_DecodedToken>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DecodedTokenToJson(this);
  }
}

abstract class _DecodedToken implements DecodedToken {
  const factory _DecodedToken(
      {@required Encoded encoded,
      @required Header header,
      @required Claims claims,
      @required User user}) = _$_DecodedToken;

  factory _DecodedToken.fromJson(Map<String, dynamic> json) =
      _$_DecodedToken.fromJson;

  @override
  Encoded get encoded;
  @override
  Header get header;
  @override
  Claims get claims;
  @override
  User get user;
  @override
  _$DecodedTokenCopyWith<_DecodedToken> get copyWith;
}

Claims _$ClaimsFromJson(Map<String, dynamic> json) {
  return _Claims.fromJson(json);
}

/// @nodoc
class _$ClaimsTearOff {
  const _$ClaimsTearOff();

// ignore: unused_element
  _Claims call(
      {@required String raw,
      @required List<String> httpsShirasuIoRoles,
      @required HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required String httpsShirasuIoCustomerId,
      @required List<dynamic> httpsShirasuIoDistributeds,
      @required List<dynamic> httpsShirasuIoTenants,
      @required String givenName,
      @required String familyName,
      @required String nickname,
      @required String name,
      @required String picture,
      @required String locale,
      @required DateTime updatedAt,
      @required String email,
      @required bool emailVerified,
      @required String iss,
      @required String sub,
      @required String aud,
      @required int iat,
      @required int exp,
      @required String nonce}) {
    return _Claims(
      raw: raw,
      httpsShirasuIoRoles: httpsShirasuIoRoles,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId,
      httpsShirasuIoDistributeds: httpsShirasuIoDistributeds,
      httpsShirasuIoTenants: httpsShirasuIoTenants,
      givenName: givenName,
      familyName: familyName,
      nickname: nickname,
      name: name,
      picture: picture,
      locale: locale,
      updatedAt: updatedAt,
      email: email,
      emailVerified: emailVerified,
      iss: iss,
      sub: sub,
      aud: aud,
      iat: iat,
      exp: exp,
      nonce: nonce,
    );
  }

// ignore: unused_element
  Claims fromJson(Map<String, Object> json) {
    return Claims.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Claims = _$ClaimsTearOff();

/// @nodoc
mixin _$Claims {
  String get raw;
  List<String> get httpsShirasuIoRoles;
  HttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  String get httpsShirasuIoCustomerId;
  List<dynamic> get httpsShirasuIoDistributeds;
  List<dynamic> get httpsShirasuIoTenants;
  String get givenName;
  String get familyName;
  String get nickname;
  String get name;
  String get picture;
  String get locale;
  DateTime get updatedAt;
  String get email;
  bool get emailVerified;
  String get iss;
  String get sub;
  String get aud;
  int get iat;
  int get exp;
  String get nonce;

  Map<String, dynamic> toJson();
  $ClaimsCopyWith<Claims> get copyWith;
}

/// @nodoc
abstract class $ClaimsCopyWith<$Res> {
  factory $ClaimsCopyWith(Claims value, $Res Function(Claims) then) =
      _$ClaimsCopyWithImpl<$Res>;
  $Res call(
      {String raw,
      List<String> httpsShirasuIoRoles,
      HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      String httpsShirasuIoCustomerId,
      List<dynamic> httpsShirasuIoDistributeds,
      List<dynamic> httpsShirasuIoTenants,
      String givenName,
      String familyName,
      String nickname,
      String name,
      String picture,
      String locale,
      DateTime updatedAt,
      String email,
      bool emailVerified,
      String iss,
      String sub,
      String aud,
      int iat,
      int exp,
      String nonce});

  $HttpsShirasuIoUserAttributeCopyWith<$Res> get httpsShirasuIoUserAttribute;
}

/// @nodoc
class _$ClaimsCopyWithImpl<$Res> implements $ClaimsCopyWith<$Res> {
  _$ClaimsCopyWithImpl(this._value, this._then);

  final Claims _value;
  // ignore: unused_field
  final $Res Function(Claims) _then;

  @override
  $Res call({
    Object raw = freezed,
    Object httpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object httpsShirasuIoDistributeds = freezed,
    Object httpsShirasuIoTenants = freezed,
    Object givenName = freezed,
    Object familyName = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object locale = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object iss = freezed,
    Object sub = freezed,
    Object aud = freezed,
    Object iat = freezed,
    Object exp = freezed,
    Object nonce = freezed,
  }) {
    return _then(_value.copyWith(
      raw: raw == freezed ? _value.raw : raw as String,
      httpsShirasuIoRoles: httpsShirasuIoRoles == freezed
          ? _value.httpsShirasuIoRoles
          : httpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      httpsShirasuIoDistributeds: httpsShirasuIoDistributeds == freezed
          ? _value.httpsShirasuIoDistributeds
          : httpsShirasuIoDistributeds as List<dynamic>,
      httpsShirasuIoTenants: httpsShirasuIoTenants == freezed
          ? _value.httpsShirasuIoTenants
          : httpsShirasuIoTenants as List<dynamic>,
      givenName: givenName == freezed ? _value.givenName : givenName as String,
      familyName:
          familyName == freezed ? _value.familyName : familyName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
      locale: locale == freezed ? _value.locale : locale as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      email: email == freezed ? _value.email : email as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      iss: iss == freezed ? _value.iss : iss as String,
      sub: sub == freezed ? _value.sub : sub as String,
      aud: aud == freezed ? _value.aud : aud as String,
      iat: iat == freezed ? _value.iat : iat as int,
      exp: exp == freezed ? _value.exp : exp as int,
      nonce: nonce == freezed ? _value.nonce : nonce as String,
    ));
  }

  @override
  $HttpsShirasuIoUserAttributeCopyWith<$Res> get httpsShirasuIoUserAttribute {
    if (_value.httpsShirasuIoUserAttribute == null) {
      return null;
    }
    return $HttpsShirasuIoUserAttributeCopyWith<$Res>(
        _value.httpsShirasuIoUserAttribute, (value) {
      return _then(_value.copyWith(httpsShirasuIoUserAttribute: value));
    });
  }
}

/// @nodoc
abstract class _$ClaimsCopyWith<$Res> implements $ClaimsCopyWith<$Res> {
  factory _$ClaimsCopyWith(_Claims value, $Res Function(_Claims) then) =
      __$ClaimsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String raw,
      List<String> httpsShirasuIoRoles,
      HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      String httpsShirasuIoCustomerId,
      List<dynamic> httpsShirasuIoDistributeds,
      List<dynamic> httpsShirasuIoTenants,
      String givenName,
      String familyName,
      String nickname,
      String name,
      String picture,
      String locale,
      DateTime updatedAt,
      String email,
      bool emailVerified,
      String iss,
      String sub,
      String aud,
      int iat,
      int exp,
      String nonce});

  @override
  $HttpsShirasuIoUserAttributeCopyWith<$Res> get httpsShirasuIoUserAttribute;
}

/// @nodoc
class __$ClaimsCopyWithImpl<$Res> extends _$ClaimsCopyWithImpl<$Res>
    implements _$ClaimsCopyWith<$Res> {
  __$ClaimsCopyWithImpl(_Claims _value, $Res Function(_Claims) _then)
      : super(_value, (v) => _then(v as _Claims));

  @override
  _Claims get _value => super._value as _Claims;

  @override
  $Res call({
    Object raw = freezed,
    Object httpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object httpsShirasuIoDistributeds = freezed,
    Object httpsShirasuIoTenants = freezed,
    Object givenName = freezed,
    Object familyName = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object locale = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object iss = freezed,
    Object sub = freezed,
    Object aud = freezed,
    Object iat = freezed,
    Object exp = freezed,
    Object nonce = freezed,
  }) {
    return _then(_Claims(
      raw: raw == freezed ? _value.raw : raw as String,
      httpsShirasuIoRoles: httpsShirasuIoRoles == freezed
          ? _value.httpsShirasuIoRoles
          : httpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      httpsShirasuIoDistributeds: httpsShirasuIoDistributeds == freezed
          ? _value.httpsShirasuIoDistributeds
          : httpsShirasuIoDistributeds as List<dynamic>,
      httpsShirasuIoTenants: httpsShirasuIoTenants == freezed
          ? _value.httpsShirasuIoTenants
          : httpsShirasuIoTenants as List<dynamic>,
      givenName: givenName == freezed ? _value.givenName : givenName as String,
      familyName:
          familyName == freezed ? _value.familyName : familyName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
      locale: locale == freezed ? _value.locale : locale as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      email: email == freezed ? _value.email : email as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      iss: iss == freezed ? _value.iss : iss as String,
      sub: sub == freezed ? _value.sub : sub as String,
      aud: aud == freezed ? _value.aud : aud as String,
      iat: iat == freezed ? _value.iat : iat as int,
      exp: exp == freezed ? _value.exp : exp as int,
      nonce: nonce == freezed ? _value.nonce : nonce as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Claims implements _Claims {
  const _$_Claims(
      {@required this.raw,
      @required this.httpsShirasuIoRoles,
      @required this.httpsShirasuIoUserAttribute,
      @required this.httpsShirasuIoCustomerId,
      @required this.httpsShirasuIoDistributeds,
      @required this.httpsShirasuIoTenants,
      @required this.givenName,
      @required this.familyName,
      @required this.nickname,
      @required this.name,
      @required this.picture,
      @required this.locale,
      @required this.updatedAt,
      @required this.email,
      @required this.emailVerified,
      @required this.iss,
      @required this.sub,
      @required this.aud,
      @required this.iat,
      @required this.exp,
      @required this.nonce})
      : assert(raw != null),
        assert(httpsShirasuIoRoles != null),
        assert(httpsShirasuIoUserAttribute != null),
        assert(httpsShirasuIoCustomerId != null),
        assert(httpsShirasuIoDistributeds != null),
        assert(httpsShirasuIoTenants != null),
        assert(givenName != null),
        assert(familyName != null),
        assert(nickname != null),
        assert(name != null),
        assert(picture != null),
        assert(locale != null),
        assert(updatedAt != null),
        assert(email != null),
        assert(emailVerified != null),
        assert(iss != null),
        assert(sub != null),
        assert(aud != null),
        assert(iat != null),
        assert(exp != null),
        assert(nonce != null);

  factory _$_Claims.fromJson(Map<String, dynamic> json) =>
      _$_$_ClaimsFromJson(json);

  @override
  final String raw;
  @override
  final List<String> httpsShirasuIoRoles;
  @override
  final HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @override
  final String httpsShirasuIoCustomerId;
  @override
  final List<dynamic> httpsShirasuIoDistributeds;
  @override
  final List<dynamic> httpsShirasuIoTenants;
  @override
  final String givenName;
  @override
  final String familyName;
  @override
  final String nickname;
  @override
  final String name;
  @override
  final String picture;
  @override
  final String locale;
  @override
  final DateTime updatedAt;
  @override
  final String email;
  @override
  final bool emailVerified;
  @override
  final String iss;
  @override
  final String sub;
  @override
  final String aud;
  @override
  final int iat;
  @override
  final int exp;
  @override
  final String nonce;

  @override
  String toString() {
    return 'Claims(raw: $raw, httpsShirasuIoRoles: $httpsShirasuIoRoles, httpsShirasuIoUserAttribute: $httpsShirasuIoUserAttribute, httpsShirasuIoCustomerId: $httpsShirasuIoCustomerId, httpsShirasuIoDistributeds: $httpsShirasuIoDistributeds, httpsShirasuIoTenants: $httpsShirasuIoTenants, givenName: $givenName, familyName: $familyName, nickname: $nickname, name: $name, picture: $picture, locale: $locale, updatedAt: $updatedAt, email: $email, emailVerified: $emailVerified, iss: $iss, sub: $sub, aud: $aud, iat: $iat, exp: $exp, nonce: $nonce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Claims &&
            (identical(other.raw, raw) ||
                const DeepCollectionEquality().equals(other.raw, raw)) &&
            (identical(other.httpsShirasuIoRoles, httpsShirasuIoRoles) ||
                const DeepCollectionEquality()
                    .equals(other.httpsShirasuIoRoles, httpsShirasuIoRoles)) &&
            (identical(other.httpsShirasuIoUserAttribute, httpsShirasuIoUserAttribute) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute)) &&
            (identical(other.httpsShirasuIoCustomerId, httpsShirasuIoCustomerId) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoCustomerId,
                    httpsShirasuIoCustomerId)) &&
            (identical(other.httpsShirasuIoDistributeds, httpsShirasuIoDistributeds) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoDistributeds,
                    httpsShirasuIoDistributeds)) &&
            (identical(other.httpsShirasuIoTenants, httpsShirasuIoTenants) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoTenants, httpsShirasuIoTenants)) &&
            (identical(other.givenName, givenName) ||
                const DeepCollectionEquality()
                    .equals(other.givenName, givenName)) &&
            (identical(other.familyName, familyName) ||
                const DeepCollectionEquality()
                    .equals(other.familyName, familyName)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality().equals(other.updatedAt, updatedAt)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) || const DeepCollectionEquality().equals(other.emailVerified, emailVerified)) &&
            (identical(other.iss, iss) || const DeepCollectionEquality().equals(other.iss, iss)) &&
            (identical(other.sub, sub) || const DeepCollectionEquality().equals(other.sub, sub)) &&
            (identical(other.aud, aud) || const DeepCollectionEquality().equals(other.aud, aud)) &&
            (identical(other.iat, iat) || const DeepCollectionEquality().equals(other.iat, iat)) &&
            (identical(other.exp, exp) || const DeepCollectionEquality().equals(other.exp, exp)) &&
            (identical(other.nonce, nonce) || const DeepCollectionEquality().equals(other.nonce, nonce)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(raw) ^
      const DeepCollectionEquality().hash(httpsShirasuIoRoles) ^
      const DeepCollectionEquality().hash(httpsShirasuIoUserAttribute) ^
      const DeepCollectionEquality().hash(httpsShirasuIoCustomerId) ^
      const DeepCollectionEquality().hash(httpsShirasuIoDistributeds) ^
      const DeepCollectionEquality().hash(httpsShirasuIoTenants) ^
      const DeepCollectionEquality().hash(givenName) ^
      const DeepCollectionEquality().hash(familyName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(iss) ^
      const DeepCollectionEquality().hash(sub) ^
      const DeepCollectionEquality().hash(aud) ^
      const DeepCollectionEquality().hash(iat) ^
      const DeepCollectionEquality().hash(exp) ^
      const DeepCollectionEquality().hash(nonce);

  @override
  _$ClaimsCopyWith<_Claims> get copyWith =>
      __$ClaimsCopyWithImpl<_Claims>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ClaimsToJson(this);
  }
}

abstract class _Claims implements Claims {
  const factory _Claims(
      {@required String raw,
      @required List<String> httpsShirasuIoRoles,
      @required HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required String httpsShirasuIoCustomerId,
      @required List<dynamic> httpsShirasuIoDistributeds,
      @required List<dynamic> httpsShirasuIoTenants,
      @required String givenName,
      @required String familyName,
      @required String nickname,
      @required String name,
      @required String picture,
      @required String locale,
      @required DateTime updatedAt,
      @required String email,
      @required bool emailVerified,
      @required String iss,
      @required String sub,
      @required String aud,
      @required int iat,
      @required int exp,
      @required String nonce}) = _$_Claims;

  factory _Claims.fromJson(Map<String, dynamic> json) = _$_Claims.fromJson;

  @override
  String get raw;
  @override
  List<String> get httpsShirasuIoRoles;
  @override
  HttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @override
  String get httpsShirasuIoCustomerId;
  @override
  List<dynamic> get httpsShirasuIoDistributeds;
  @override
  List<dynamic> get httpsShirasuIoTenants;
  @override
  String get givenName;
  @override
  String get familyName;
  @override
  String get nickname;
  @override
  String get name;
  @override
  String get picture;
  @override
  String get locale;
  @override
  DateTime get updatedAt;
  @override
  String get email;
  @override
  bool get emailVerified;
  @override
  String get iss;
  @override
  String get sub;
  @override
  String get aud;
  @override
  int get iat;
  @override
  int get exp;
  @override
  String get nonce;
  @override
  _$ClaimsCopyWith<_Claims> get copyWith;
}

HttpsShirasuIoUserAttribute _$HttpsShirasuIoUserAttributeFromJson(
    Map<String, dynamic> json) {
  return _HttpsShirasuIoUserAttribute.fromJson(json);
}

/// @nodoc
class _$HttpsShirasuIoUserAttributeTearOff {
  const _$HttpsShirasuIoUserAttributeTearOff();

// ignore: unused_element
  _HttpsShirasuIoUserAttribute call(
      {@required DateTime birthDate,
      @required String job,
      @required @JsonKey(name: 'country') String countryNonFixedCase,
      @required String prefecture,
      @required String familyName,
      @required String givenName,
      @required String familyNameReading,
      @required String givenNameReading}) {
    return _HttpsShirasuIoUserAttribute(
      birthDate: birthDate,
      job: job,
      countryNonFixedCase: countryNonFixedCase,
      prefecture: prefecture,
      familyName: familyName,
      givenName: givenName,
      familyNameReading: familyNameReading,
      givenNameReading: givenNameReading,
    );
  }

// ignore: unused_element
  HttpsShirasuIoUserAttribute fromJson(Map<String, Object> json) {
    return HttpsShirasuIoUserAttribute.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HttpsShirasuIoUserAttribute = _$HttpsShirasuIoUserAttributeTearOff();

/// @nodoc
mixin _$HttpsShirasuIoUserAttribute {
  DateTime get birthDate;
  String get job;
  @JsonKey(name: 'country')
  String get countryNonFixedCase;
  String get prefecture;
  String get familyName;
  String get givenName;
  String get familyNameReading;
  String get givenNameReading;

  Map<String, dynamic> toJson();
  $HttpsShirasuIoUserAttributeCopyWith<HttpsShirasuIoUserAttribute>
      get copyWith;
}

/// @nodoc
abstract class $HttpsShirasuIoUserAttributeCopyWith<$Res> {
  factory $HttpsShirasuIoUserAttributeCopyWith(
          HttpsShirasuIoUserAttribute value,
          $Res Function(HttpsShirasuIoUserAttribute) then) =
      _$HttpsShirasuIoUserAttributeCopyWithImpl<$Res>;
  $Res call(
      {DateTime birthDate,
      String job,
      @JsonKey(name: 'country') String countryNonFixedCase,
      String prefecture,
      String familyName,
      String givenName,
      String familyNameReading,
      String givenNameReading});
}

/// @nodoc
class _$HttpsShirasuIoUserAttributeCopyWithImpl<$Res>
    implements $HttpsShirasuIoUserAttributeCopyWith<$Res> {
  _$HttpsShirasuIoUserAttributeCopyWithImpl(this._value, this._then);

  final HttpsShirasuIoUserAttribute _value;
  // ignore: unused_field
  final $Res Function(HttpsShirasuIoUserAttribute) _then;

  @override
  $Res call({
    Object birthDate = freezed,
    Object job = freezed,
    Object countryNonFixedCase = freezed,
    Object prefecture = freezed,
    Object familyName = freezed,
    Object givenName = freezed,
    Object familyNameReading = freezed,
    Object givenNameReading = freezed,
  }) {
    return _then(_value.copyWith(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      countryNonFixedCase: countryNonFixedCase == freezed
          ? _value.countryNonFixedCase
          : countryNonFixedCase as String,
      prefecture:
          prefecture == freezed ? _value.prefecture : prefecture as String,
      familyName:
          familyName == freezed ? _value.familyName : familyName as String,
      givenName: givenName == freezed ? _value.givenName : givenName as String,
      familyNameReading: familyNameReading == freezed
          ? _value.familyNameReading
          : familyNameReading as String,
      givenNameReading: givenNameReading == freezed
          ? _value.givenNameReading
          : givenNameReading as String,
    ));
  }
}

/// @nodoc
abstract class _$HttpsShirasuIoUserAttributeCopyWith<$Res>
    implements $HttpsShirasuIoUserAttributeCopyWith<$Res> {
  factory _$HttpsShirasuIoUserAttributeCopyWith(
          _HttpsShirasuIoUserAttribute value,
          $Res Function(_HttpsShirasuIoUserAttribute) then) =
      __$HttpsShirasuIoUserAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime birthDate,
      String job,
      @JsonKey(name: 'country') String countryNonFixedCase,
      String prefecture,
      String familyName,
      String givenName,
      String familyNameReading,
      String givenNameReading});
}

/// @nodoc
class __$HttpsShirasuIoUserAttributeCopyWithImpl<$Res>
    extends _$HttpsShirasuIoUserAttributeCopyWithImpl<$Res>
    implements _$HttpsShirasuIoUserAttributeCopyWith<$Res> {
  __$HttpsShirasuIoUserAttributeCopyWithImpl(
      _HttpsShirasuIoUserAttribute _value,
      $Res Function(_HttpsShirasuIoUserAttribute) _then)
      : super(_value, (v) => _then(v as _HttpsShirasuIoUserAttribute));

  @override
  _HttpsShirasuIoUserAttribute get _value =>
      super._value as _HttpsShirasuIoUserAttribute;

  @override
  $Res call({
    Object birthDate = freezed,
    Object job = freezed,
    Object countryNonFixedCase = freezed,
    Object prefecture = freezed,
    Object familyName = freezed,
    Object givenName = freezed,
    Object familyNameReading = freezed,
    Object givenNameReading = freezed,
  }) {
    return _then(_HttpsShirasuIoUserAttribute(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      countryNonFixedCase: countryNonFixedCase == freezed
          ? _value.countryNonFixedCase
          : countryNonFixedCase as String,
      prefecture:
          prefecture == freezed ? _value.prefecture : prefecture as String,
      familyName:
          familyName == freezed ? _value.familyName : familyName as String,
      givenName: givenName == freezed ? _value.givenName : givenName as String,
      familyNameReading: familyNameReading == freezed
          ? _value.familyNameReading
          : familyNameReading as String,
      givenNameReading: givenNameReading == freezed
          ? _value.givenNameReading
          : givenNameReading as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HttpsShirasuIoUserAttribute extends _HttpsShirasuIoUserAttribute {
  const _$_HttpsShirasuIoUserAttribute(
      {@required this.birthDate,
      @required this.job,
      @required @JsonKey(name: 'country') this.countryNonFixedCase,
      @required this.prefecture,
      @required this.familyName,
      @required this.givenName,
      @required this.familyNameReading,
      @required this.givenNameReading})
      : assert(birthDate != null),
        assert(job != null),
        assert(countryNonFixedCase != null),
        assert(prefecture != null),
        assert(familyName != null),
        assert(givenName != null),
        assert(familyNameReading != null),
        assert(givenNameReading != null),
        super._();

  factory _$_HttpsShirasuIoUserAttribute.fromJson(Map<String, dynamic> json) =>
      _$_$_HttpsShirasuIoUserAttributeFromJson(json);

  @override
  final DateTime birthDate;
  @override
  final String job;
  @override
  @JsonKey(name: 'country')
  final String countryNonFixedCase;
  @override
  final String prefecture;
  @override
  final String familyName;
  @override
  final String givenName;
  @override
  final String familyNameReading;
  @override
  final String givenNameReading;

  @override
  String toString() {
    return 'HttpsShirasuIoUserAttribute(birthDate: $birthDate, job: $job, countryNonFixedCase: $countryNonFixedCase, prefecture: $prefecture, familyName: $familyName, givenName: $givenName, familyNameReading: $familyNameReading, givenNameReading: $givenNameReading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HttpsShirasuIoUserAttribute &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.countryNonFixedCase, countryNonFixedCase) ||
                const DeepCollectionEquality()
                    .equals(other.countryNonFixedCase, countryNonFixedCase)) &&
            (identical(other.prefecture, prefecture) ||
                const DeepCollectionEquality()
                    .equals(other.prefecture, prefecture)) &&
            (identical(other.familyName, familyName) ||
                const DeepCollectionEquality()
                    .equals(other.familyName, familyName)) &&
            (identical(other.givenName, givenName) ||
                const DeepCollectionEquality()
                    .equals(other.givenName, givenName)) &&
            (identical(other.familyNameReading, familyNameReading) ||
                const DeepCollectionEquality()
                    .equals(other.familyNameReading, familyNameReading)) &&
            (identical(other.givenNameReading, givenNameReading) ||
                const DeepCollectionEquality()
                    .equals(other.givenNameReading, givenNameReading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(job) ^
      const DeepCollectionEquality().hash(countryNonFixedCase) ^
      const DeepCollectionEquality().hash(prefecture) ^
      const DeepCollectionEquality().hash(familyName) ^
      const DeepCollectionEquality().hash(givenName) ^
      const DeepCollectionEquality().hash(familyNameReading) ^
      const DeepCollectionEquality().hash(givenNameReading);

  @override
  _$HttpsShirasuIoUserAttributeCopyWith<_HttpsShirasuIoUserAttribute>
      get copyWith => __$HttpsShirasuIoUserAttributeCopyWithImpl<
          _HttpsShirasuIoUserAttribute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HttpsShirasuIoUserAttributeToJson(this);
  }
}

abstract class _HttpsShirasuIoUserAttribute
    extends HttpsShirasuIoUserAttribute {
  const _HttpsShirasuIoUserAttribute._() : super._();
  const factory _HttpsShirasuIoUserAttribute(
      {@required DateTime birthDate,
      @required String job,
      @required @JsonKey(name: 'country') String countryNonFixedCase,
      @required String prefecture,
      @required String familyName,
      @required String givenName,
      @required String familyNameReading,
      @required String givenNameReading}) = _$_HttpsShirasuIoUserAttribute;

  factory _HttpsShirasuIoUserAttribute.fromJson(Map<String, dynamic> json) =
      _$_HttpsShirasuIoUserAttribute.fromJson;

  @override
  DateTime get birthDate;
  @override
  String get job;
  @override
  @JsonKey(name: 'country')
  String get countryNonFixedCase;
  @override
  String get prefecture;
  @override
  String get familyName;
  @override
  String get givenName;
  @override
  String get familyNameReading;
  @override
  String get givenNameReading;
  @override
  _$HttpsShirasuIoUserAttributeCopyWith<_HttpsShirasuIoUserAttribute>
      get copyWith;
}

Encoded _$EncodedFromJson(Map<String, dynamic> json) {
  return _Encoded.fromJson(json);
}

/// @nodoc
class _$EncodedTearOff {
  const _$EncodedTearOff();

// ignore: unused_element
  _Encoded call(
      {@required String header,
      @required String payload,
      @required String signature}) {
    return _Encoded(
      header: header,
      payload: payload,
      signature: signature,
    );
  }

// ignore: unused_element
  Encoded fromJson(Map<String, Object> json) {
    return Encoded.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Encoded = _$EncodedTearOff();

/// @nodoc
mixin _$Encoded {
  String get header;
  String get payload;
  String get signature;

  Map<String, dynamic> toJson();
  $EncodedCopyWith<Encoded> get copyWith;
}

/// @nodoc
abstract class $EncodedCopyWith<$Res> {
  factory $EncodedCopyWith(Encoded value, $Res Function(Encoded) then) =
      _$EncodedCopyWithImpl<$Res>;
  $Res call({String header, String payload, String signature});
}

/// @nodoc
class _$EncodedCopyWithImpl<$Res> implements $EncodedCopyWith<$Res> {
  _$EncodedCopyWithImpl(this._value, this._then);

  final Encoded _value;
  // ignore: unused_field
  final $Res Function(Encoded) _then;

  @override
  $Res call({
    Object header = freezed,
    Object payload = freezed,
    Object signature = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed ? _value.header : header as String,
      payload: payload == freezed ? _value.payload : payload as String,
      signature: signature == freezed ? _value.signature : signature as String,
    ));
  }
}

/// @nodoc
abstract class _$EncodedCopyWith<$Res> implements $EncodedCopyWith<$Res> {
  factory _$EncodedCopyWith(_Encoded value, $Res Function(_Encoded) then) =
      __$EncodedCopyWithImpl<$Res>;
  @override
  $Res call({String header, String payload, String signature});
}

/// @nodoc
class __$EncodedCopyWithImpl<$Res> extends _$EncodedCopyWithImpl<$Res>
    implements _$EncodedCopyWith<$Res> {
  __$EncodedCopyWithImpl(_Encoded _value, $Res Function(_Encoded) _then)
      : super(_value, (v) => _then(v as _Encoded));

  @override
  _Encoded get _value => super._value as _Encoded;

  @override
  $Res call({
    Object header = freezed,
    Object payload = freezed,
    Object signature = freezed,
  }) {
    return _then(_Encoded(
      header: header == freezed ? _value.header : header as String,
      payload: payload == freezed ? _value.payload : payload as String,
      signature: signature == freezed ? _value.signature : signature as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Encoded implements _Encoded {
  const _$_Encoded(
      {@required this.header, @required this.payload, @required this.signature})
      : assert(header != null),
        assert(payload != null),
        assert(signature != null);

  factory _$_Encoded.fromJson(Map<String, dynamic> json) =>
      _$_$_EncodedFromJson(json);

  @override
  final String header;
  @override
  final String payload;
  @override
  final String signature;

  @override
  String toString() {
    return 'Encoded(header: $header, payload: $payload, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Encoded &&
            (identical(other.header, header) ||
                const DeepCollectionEquality().equals(other.header, header)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(header) ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(signature);

  @override
  _$EncodedCopyWith<_Encoded> get copyWith =>
      __$EncodedCopyWithImpl<_Encoded>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EncodedToJson(this);
  }
}

abstract class _Encoded implements Encoded {
  const factory _Encoded(
      {@required String header,
      @required String payload,
      @required String signature}) = _$_Encoded;

  factory _Encoded.fromJson(Map<String, dynamic> json) = _$_Encoded.fromJson;

  @override
  String get header;
  @override
  String get payload;
  @override
  String get signature;
  @override
  _$EncodedCopyWith<_Encoded> get copyWith;
}

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return _Header.fromJson(json);
}

/// @nodoc
class _$HeaderTearOff {
  const _$HeaderTearOff();

// ignore: unused_element
  _Header call(
      {@required String alg, @required String typ, @required String kid}) {
    return _Header(
      alg: alg,
      typ: typ,
      kid: kid,
    );
  }

// ignore: unused_element
  Header fromJson(Map<String, Object> json) {
    return Header.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Header = _$HeaderTearOff();

/// @nodoc
mixin _$Header {
  String get alg;
  String get typ;
  String get kid;

  Map<String, dynamic> toJson();
  $HeaderCopyWith<Header> get copyWith;
}

/// @nodoc
abstract class $HeaderCopyWith<$Res> {
  factory $HeaderCopyWith(Header value, $Res Function(Header) then) =
      _$HeaderCopyWithImpl<$Res>;
  $Res call({String alg, String typ, String kid});
}

/// @nodoc
class _$HeaderCopyWithImpl<$Res> implements $HeaderCopyWith<$Res> {
  _$HeaderCopyWithImpl(this._value, this._then);

  final Header _value;
  // ignore: unused_field
  final $Res Function(Header) _then;

  @override
  $Res call({
    Object alg = freezed,
    Object typ = freezed,
    Object kid = freezed,
  }) {
    return _then(_value.copyWith(
      alg: alg == freezed ? _value.alg : alg as String,
      typ: typ == freezed ? _value.typ : typ as String,
      kid: kid == freezed ? _value.kid : kid as String,
    ));
  }
}

/// @nodoc
abstract class _$HeaderCopyWith<$Res> implements $HeaderCopyWith<$Res> {
  factory _$HeaderCopyWith(_Header value, $Res Function(_Header) then) =
      __$HeaderCopyWithImpl<$Res>;
  @override
  $Res call({String alg, String typ, String kid});
}

/// @nodoc
class __$HeaderCopyWithImpl<$Res> extends _$HeaderCopyWithImpl<$Res>
    implements _$HeaderCopyWith<$Res> {
  __$HeaderCopyWithImpl(_Header _value, $Res Function(_Header) _then)
      : super(_value, (v) => _then(v as _Header));

  @override
  _Header get _value => super._value as _Header;

  @override
  $Res call({
    Object alg = freezed,
    Object typ = freezed,
    Object kid = freezed,
  }) {
    return _then(_Header(
      alg: alg == freezed ? _value.alg : alg as String,
      typ: typ == freezed ? _value.typ : typ as String,
      kid: kid == freezed ? _value.kid : kid as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Header implements _Header {
  const _$_Header({@required this.alg, @required this.typ, @required this.kid})
      : assert(alg != null),
        assert(typ != null),
        assert(kid != null);

  factory _$_Header.fromJson(Map<String, dynamic> json) =>
      _$_$_HeaderFromJson(json);

  @override
  final String alg;
  @override
  final String typ;
  @override
  final String kid;

  @override
  String toString() {
    return 'Header(alg: $alg, typ: $typ, kid: $kid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Header &&
            (identical(other.alg, alg) ||
                const DeepCollectionEquality().equals(other.alg, alg)) &&
            (identical(other.typ, typ) ||
                const DeepCollectionEquality().equals(other.typ, typ)) &&
            (identical(other.kid, kid) ||
                const DeepCollectionEquality().equals(other.kid, kid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(alg) ^
      const DeepCollectionEquality().hash(typ) ^
      const DeepCollectionEquality().hash(kid);

  @override
  _$HeaderCopyWith<_Header> get copyWith =>
      __$HeaderCopyWithImpl<_Header>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeaderToJson(this);
  }
}

abstract class _Header implements Header {
  const factory _Header(
      {@required String alg,
      @required String typ,
      @required String kid}) = _$_Header;

  factory _Header.fromJson(Map<String, dynamic> json) = _$_Header.fromJson;

  @override
  String get alg;
  @override
  String get typ;
  @override
  String get kid;
  @override
  _$HeaderCopyWith<_Header> get copyWith;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required List<String> httpsShirasuIoRoles,
      @required HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required String httpsShirasuIoCustomerId,
      @required List<dynamic> httpsShirasuIoDistributeds,
      @required List<dynamic> httpsShirasuIoTenants,
      @required String givenName,
      @required String familyName,
      @required String nickname,
      @required String name,
      @required String picture,
      @required String locale,
      @required DateTime updatedAt,
      @required String email,
      @required bool emailVerified,
      @required String sub}) {
    return _User(
      httpsShirasuIoRoles: httpsShirasuIoRoles,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId,
      httpsShirasuIoDistributeds: httpsShirasuIoDistributeds,
      httpsShirasuIoTenants: httpsShirasuIoTenants,
      givenName: givenName,
      familyName: familyName,
      nickname: nickname,
      name: name,
      picture: picture,
      locale: locale,
      updatedAt: updatedAt,
      email: email,
      emailVerified: emailVerified,
      sub: sub,
    );
  }

// ignore: unused_element
  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  List<String> get httpsShirasuIoRoles;
  HttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  String get httpsShirasuIoCustomerId;
  List<dynamic> get httpsShirasuIoDistributeds;
  List<dynamic> get httpsShirasuIoTenants;
  String get givenName;
  String get familyName;
  String get nickname;
  String get name;
  String get picture;
  String get locale;
  DateTime get updatedAt;
  String get email;
  bool get emailVerified;
  String get sub;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {List<String> httpsShirasuIoRoles,
      HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      String httpsShirasuIoCustomerId,
      List<dynamic> httpsShirasuIoDistributeds,
      List<dynamic> httpsShirasuIoTenants,
      String givenName,
      String familyName,
      String nickname,
      String name,
      String picture,
      String locale,
      DateTime updatedAt,
      String email,
      bool emailVerified,
      String sub});

  $HttpsShirasuIoUserAttributeCopyWith<$Res> get httpsShirasuIoUserAttribute;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object httpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object httpsShirasuIoDistributeds = freezed,
    Object httpsShirasuIoTenants = freezed,
    Object givenName = freezed,
    Object familyName = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object locale = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object sub = freezed,
  }) {
    return _then(_value.copyWith(
      httpsShirasuIoRoles: httpsShirasuIoRoles == freezed
          ? _value.httpsShirasuIoRoles
          : httpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      httpsShirasuIoDistributeds: httpsShirasuIoDistributeds == freezed
          ? _value.httpsShirasuIoDistributeds
          : httpsShirasuIoDistributeds as List<dynamic>,
      httpsShirasuIoTenants: httpsShirasuIoTenants == freezed
          ? _value.httpsShirasuIoTenants
          : httpsShirasuIoTenants as List<dynamic>,
      givenName: givenName == freezed ? _value.givenName : givenName as String,
      familyName:
          familyName == freezed ? _value.familyName : familyName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
      locale: locale == freezed ? _value.locale : locale as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      email: email == freezed ? _value.email : email as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      sub: sub == freezed ? _value.sub : sub as String,
    ));
  }

  @override
  $HttpsShirasuIoUserAttributeCopyWith<$Res> get httpsShirasuIoUserAttribute {
    if (_value.httpsShirasuIoUserAttribute == null) {
      return null;
    }
    return $HttpsShirasuIoUserAttributeCopyWith<$Res>(
        _value.httpsShirasuIoUserAttribute, (value) {
      return _then(_value.copyWith(httpsShirasuIoUserAttribute: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> httpsShirasuIoRoles,
      HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      String httpsShirasuIoCustomerId,
      List<dynamic> httpsShirasuIoDistributeds,
      List<dynamic> httpsShirasuIoTenants,
      String givenName,
      String familyName,
      String nickname,
      String name,
      String picture,
      String locale,
      DateTime updatedAt,
      String email,
      bool emailVerified,
      String sub});

  @override
  $HttpsShirasuIoUserAttributeCopyWith<$Res> get httpsShirasuIoUserAttribute;
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object httpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object httpsShirasuIoDistributeds = freezed,
    Object httpsShirasuIoTenants = freezed,
    Object givenName = freezed,
    Object familyName = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object locale = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object sub = freezed,
  }) {
    return _then(_User(
      httpsShirasuIoRoles: httpsShirasuIoRoles == freezed
          ? _value.httpsShirasuIoRoles
          : httpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      httpsShirasuIoDistributeds: httpsShirasuIoDistributeds == freezed
          ? _value.httpsShirasuIoDistributeds
          : httpsShirasuIoDistributeds as List<dynamic>,
      httpsShirasuIoTenants: httpsShirasuIoTenants == freezed
          ? _value.httpsShirasuIoTenants
          : httpsShirasuIoTenants as List<dynamic>,
      givenName: givenName == freezed ? _value.givenName : givenName as String,
      familyName:
          familyName == freezed ? _value.familyName : familyName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
      locale: locale == freezed ? _value.locale : locale as String,
      updatedAt:
          updatedAt == freezed ? _value.updatedAt : updatedAt as DateTime,
      email: email == freezed ? _value.email : email as String,
      emailVerified: emailVerified == freezed
          ? _value.emailVerified
          : emailVerified as bool,
      sub: sub == freezed ? _value.sub : sub as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required this.httpsShirasuIoRoles,
      @required this.httpsShirasuIoUserAttribute,
      @required this.httpsShirasuIoCustomerId,
      @required this.httpsShirasuIoDistributeds,
      @required this.httpsShirasuIoTenants,
      @required this.givenName,
      @required this.familyName,
      @required this.nickname,
      @required this.name,
      @required this.picture,
      @required this.locale,
      @required this.updatedAt,
      @required this.email,
      @required this.emailVerified,
      @required this.sub})
      : assert(httpsShirasuIoRoles != null),
        assert(httpsShirasuIoUserAttribute != null),
        assert(httpsShirasuIoCustomerId != null),
        assert(httpsShirasuIoDistributeds != null),
        assert(httpsShirasuIoTenants != null),
        assert(givenName != null),
        assert(familyName != null),
        assert(nickname != null),
        assert(name != null),
        assert(picture != null),
        assert(locale != null),
        assert(updatedAt != null),
        assert(email != null),
        assert(emailVerified != null),
        assert(sub != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final List<String> httpsShirasuIoRoles;
  @override
  final HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @override
  final String httpsShirasuIoCustomerId;
  @override
  final List<dynamic> httpsShirasuIoDistributeds;
  @override
  final List<dynamic> httpsShirasuIoTenants;
  @override
  final String givenName;
  @override
  final String familyName;
  @override
  final String nickname;
  @override
  final String name;
  @override
  final String picture;
  @override
  final String locale;
  @override
  final DateTime updatedAt;
  @override
  final String email;
  @override
  final bool emailVerified;
  @override
  final String sub;

  @override
  String toString() {
    return 'User(httpsShirasuIoRoles: $httpsShirasuIoRoles, httpsShirasuIoUserAttribute: $httpsShirasuIoUserAttribute, httpsShirasuIoCustomerId: $httpsShirasuIoCustomerId, httpsShirasuIoDistributeds: $httpsShirasuIoDistributeds, httpsShirasuIoTenants: $httpsShirasuIoTenants, givenName: $givenName, familyName: $familyName, nickname: $nickname, name: $name, picture: $picture, locale: $locale, updatedAt: $updatedAt, email: $email, emailVerified: $emailVerified, sub: $sub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.httpsShirasuIoRoles, httpsShirasuIoRoles) ||
                const DeepCollectionEquality()
                    .equals(other.httpsShirasuIoRoles, httpsShirasuIoRoles)) &&
            (identical(other.httpsShirasuIoUserAttribute, httpsShirasuIoUserAttribute) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute)) &&
            (identical(other.httpsShirasuIoCustomerId, httpsShirasuIoCustomerId) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoCustomerId,
                    httpsShirasuIoCustomerId)) &&
            (identical(other.httpsShirasuIoDistributeds, httpsShirasuIoDistributeds) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoDistributeds,
                    httpsShirasuIoDistributeds)) &&
            (identical(other.httpsShirasuIoTenants, httpsShirasuIoTenants) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoTenants, httpsShirasuIoTenants)) &&
            (identical(other.givenName, givenName) ||
                const DeepCollectionEquality()
                    .equals(other.givenName, givenName)) &&
            (identical(other.familyName, familyName) ||
                const DeepCollectionEquality()
                    .equals(other.familyName, familyName)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.email, email) || const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) || const DeepCollectionEquality().equals(other.emailVerified, emailVerified)) &&
            (identical(other.sub, sub) || const DeepCollectionEquality().equals(other.sub, sub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(httpsShirasuIoRoles) ^
      const DeepCollectionEquality().hash(httpsShirasuIoUserAttribute) ^
      const DeepCollectionEquality().hash(httpsShirasuIoCustomerId) ^
      const DeepCollectionEquality().hash(httpsShirasuIoDistributeds) ^
      const DeepCollectionEquality().hash(httpsShirasuIoTenants) ^
      const DeepCollectionEquality().hash(givenName) ^
      const DeepCollectionEquality().hash(familyName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(locale) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(sub);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required List<String> httpsShirasuIoRoles,
      @required HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required String httpsShirasuIoCustomerId,
      @required List<dynamic> httpsShirasuIoDistributeds,
      @required List<dynamic> httpsShirasuIoTenants,
      @required String givenName,
      @required String familyName,
      @required String nickname,
      @required String name,
      @required String picture,
      @required String locale,
      @required DateTime updatedAt,
      @required String email,
      @required bool emailVerified,
      @required String sub}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  List<String> get httpsShirasuIoRoles;
  @override
  HttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @override
  String get httpsShirasuIoCustomerId;
  @override
  List<dynamic> get httpsShirasuIoDistributeds;
  @override
  List<dynamic> get httpsShirasuIoTenants;
  @override
  String get givenName;
  @override
  String get familyName;
  @override
  String get nickname;
  @override
  String get name;
  @override
  String get picture;
  @override
  String get locale;
  @override
  DateTime get updatedAt;
  @override
  String get email;
  @override
  bool get emailVerified;
  @override
  String get sub;
  @override
  _$UserCopyWith<_User> get copyWith;
}
