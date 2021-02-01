// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HiveAuthDataTearOff {
  const _$HiveAuthDataTearOff();

// ignore: unused_element
  _HiveAuthData call(
      {@required @HiveField(0) HiveBody body,
      @required @HiveField(1) int expiresAt}) {
    return _HiveAuthData(
      body: body,
      expiresAt: expiresAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveAuthData = _$HiveAuthDataTearOff();

/// @nodoc
mixin _$HiveAuthData {
  @HiveField(0)
  HiveBody get body;
  @HiveField(1)
  int get expiresAt;

  $HiveAuthDataCopyWith<HiveAuthData> get copyWith;
}

/// @nodoc
abstract class $HiveAuthDataCopyWith<$Res> {
  factory $HiveAuthDataCopyWith(
          HiveAuthData value, $Res Function(HiveAuthData) then) =
      _$HiveAuthDataCopyWithImpl<$Res>;
  $Res call({@HiveField(0) HiveBody body, @HiveField(1) int expiresAt});

  $HiveBodyCopyWith<$Res> get body;
}

/// @nodoc
class _$HiveAuthDataCopyWithImpl<$Res> implements $HiveAuthDataCopyWith<$Res> {
  _$HiveAuthDataCopyWithImpl(this._value, this._then);

  final HiveAuthData _value;
  // ignore: unused_field
  final $Res Function(HiveAuthData) _then;

  @override
  $Res call({
    Object body = freezed,
    Object expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as HiveBody,
      expiresAt: expiresAt == freezed ? _value.expiresAt : expiresAt as int,
    ));
  }

  @override
  $HiveBodyCopyWith<$Res> get body {
    if (_value.body == null) {
      return null;
    }
    return $HiveBodyCopyWith<$Res>(_value.body, (value) {
      return _then(_value.copyWith(body: value));
    });
  }
}

/// @nodoc
abstract class _$HiveAuthDataCopyWith<$Res>
    implements $HiveAuthDataCopyWith<$Res> {
  factory _$HiveAuthDataCopyWith(
          _HiveAuthData value, $Res Function(_HiveAuthData) then) =
      __$HiveAuthDataCopyWithImpl<$Res>;
  @override
  $Res call({@HiveField(0) HiveBody body, @HiveField(1) int expiresAt});

  @override
  $HiveBodyCopyWith<$Res> get body;
}

/// @nodoc
class __$HiveAuthDataCopyWithImpl<$Res> extends _$HiveAuthDataCopyWithImpl<$Res>
    implements _$HiveAuthDataCopyWith<$Res> {
  __$HiveAuthDataCopyWithImpl(
      _HiveAuthData _value, $Res Function(_HiveAuthData) _then)
      : super(_value, (v) => _then(v as _HiveAuthData));

  @override
  _HiveAuthData get _value => super._value as _HiveAuthData;

  @override
  $Res call({
    Object body = freezed,
    Object expiresAt = freezed,
  }) {
    return _then(_HiveAuthData(
      body: body == freezed ? _value.body : body as HiveBody,
      expiresAt: expiresAt == freezed ? _value.expiresAt : expiresAt as int,
    ));
  }
}

@protected
@HiveType(typeId: 0)

/// @nodoc
class _$_HiveAuthData implements _HiveAuthData {
  const _$_HiveAuthData(
      {@required @HiveField(0) this.body,
      @required @HiveField(1) this.expiresAt})
      : assert(body != null),
        assert(expiresAt != null);

  @override
  @HiveField(0)
  final HiveBody body;
  @override
  @HiveField(1)
  final int expiresAt;

  @override
  String toString() {
    return 'HiveAuthData(body: $body, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveAuthData &&
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
  _$HiveAuthDataCopyWith<_HiveAuthData> get copyWith =>
      __$HiveAuthDataCopyWithImpl<_HiveAuthData>(this, _$identity);
}

abstract class _HiveAuthData implements HiveAuthData {
  const factory _HiveAuthData(
      {@required @HiveField(0) HiveBody body,
      @required @HiveField(1) int expiresAt}) = _$_HiveAuthData;

  @override
  @HiveField(0)
  HiveBody get body;
  @override
  @HiveField(1)
  int get expiresAt;
  @override
  _$HiveAuthDataCopyWith<_HiveAuthData> get copyWith;
}

/// @nodoc
class _$HiveBodyTearOff {
  const _$HiveBodyTearOff();

// ignore: unused_element
  _HiveBody call(
      {@required @HiveField(2) String clientId,
      @required @HiveField(3) String accessToken,
      @required @HiveField(4) String refreshToken,
      @required @HiveField(5) String idToken,
      @required @HiveField(6) String scope,
      @required @HiveField(7) int expiresIn,
      @required @HiveField(8) String tokenType,
      @required @HiveField(9) HiveDecodedToken decodedToken,
      @required @HiveField(10) String audience}) {
    return _HiveBody(
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
}

/// @nodoc
// ignore: unused_element
const $HiveBody = _$HiveBodyTearOff();

/// @nodoc
mixin _$HiveBody {
  @HiveField(2)
  String get clientId;
  @HiveField(3)
  String get accessToken;
  @HiveField(4)
  String get refreshToken;
  @HiveField(5)
  String get idToken;
  @HiveField(6)
  String get scope;
  @HiveField(7)
  int get expiresIn;
  @HiveField(8)
  String get tokenType;
  @HiveField(9)
  HiveDecodedToken get decodedToken;
  @HiveField(10)
  String get audience;

  $HiveBodyCopyWith<HiveBody> get copyWith;
}

/// @nodoc
abstract class $HiveBodyCopyWith<$Res> {
  factory $HiveBodyCopyWith(HiveBody value, $Res Function(HiveBody) then) =
      _$HiveBodyCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(2) String clientId,
      @HiveField(3) String accessToken,
      @HiveField(4) String refreshToken,
      @HiveField(5) String idToken,
      @HiveField(6) String scope,
      @HiveField(7) int expiresIn,
      @HiveField(8) String tokenType,
      @HiveField(9) HiveDecodedToken decodedToken,
      @HiveField(10) String audience});

  $HiveDecodedTokenCopyWith<$Res> get decodedToken;
}

/// @nodoc
class _$HiveBodyCopyWithImpl<$Res> implements $HiveBodyCopyWith<$Res> {
  _$HiveBodyCopyWithImpl(this._value, this._then);

  final HiveBody _value;
  // ignore: unused_field
  final $Res Function(HiveBody) _then;

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
          : decodedToken as HiveDecodedToken,
      audience: audience == freezed ? _value.audience : audience as String,
    ));
  }

  @override
  $HiveDecodedTokenCopyWith<$Res> get decodedToken {
    if (_value.decodedToken == null) {
      return null;
    }
    return $HiveDecodedTokenCopyWith<$Res>(_value.decodedToken, (value) {
      return _then(_value.copyWith(decodedToken: value));
    });
  }
}

/// @nodoc
abstract class _$HiveBodyCopyWith<$Res> implements $HiveBodyCopyWith<$Res> {
  factory _$HiveBodyCopyWith(_HiveBody value, $Res Function(_HiveBody) then) =
      __$HiveBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(2) String clientId,
      @HiveField(3) String accessToken,
      @HiveField(4) String refreshToken,
      @HiveField(5) String idToken,
      @HiveField(6) String scope,
      @HiveField(7) int expiresIn,
      @HiveField(8) String tokenType,
      @HiveField(9) HiveDecodedToken decodedToken,
      @HiveField(10) String audience});

  @override
  $HiveDecodedTokenCopyWith<$Res> get decodedToken;
}

/// @nodoc
class __$HiveBodyCopyWithImpl<$Res> extends _$HiveBodyCopyWithImpl<$Res>
    implements _$HiveBodyCopyWith<$Res> {
  __$HiveBodyCopyWithImpl(_HiveBody _value, $Res Function(_HiveBody) _then)
      : super(_value, (v) => _then(v as _HiveBody));

  @override
  _HiveBody get _value => super._value as _HiveBody;

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
    return _then(_HiveBody(
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
          : decodedToken as HiveDecodedToken,
      audience: audience == freezed ? _value.audience : audience as String,
    ));
  }
}

@protected
@HiveType(typeId: 1)

/// @nodoc
class _$_HiveBody implements _HiveBody {
  const _$_HiveBody(
      {@required @HiveField(2) this.clientId,
      @required @HiveField(3) this.accessToken,
      @required @HiveField(4) this.refreshToken,
      @required @HiveField(5) this.idToken,
      @required @HiveField(6) this.scope,
      @required @HiveField(7) this.expiresIn,
      @required @HiveField(8) this.tokenType,
      @required @HiveField(9) this.decodedToken,
      @required @HiveField(10) this.audience})
      : assert(clientId != null),
        assert(accessToken != null),
        assert(refreshToken != null),
        assert(idToken != null),
        assert(scope != null),
        assert(expiresIn != null),
        assert(tokenType != null),
        assert(decodedToken != null),
        assert(audience != null);

  @override
  @HiveField(2)
  final String clientId;
  @override
  @HiveField(3)
  final String accessToken;
  @override
  @HiveField(4)
  final String refreshToken;
  @override
  @HiveField(5)
  final String idToken;
  @override
  @HiveField(6)
  final String scope;
  @override
  @HiveField(7)
  final int expiresIn;
  @override
  @HiveField(8)
  final String tokenType;
  @override
  @HiveField(9)
  final HiveDecodedToken decodedToken;
  @override
  @HiveField(10)
  final String audience;

  @override
  String toString() {
    return 'HiveBody(clientId: $clientId, accessToken: $accessToken, refreshToken: $refreshToken, idToken: $idToken, scope: $scope, expiresIn: $expiresIn, tokenType: $tokenType, decodedToken: $decodedToken, audience: $audience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveBody &&
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
  _$HiveBodyCopyWith<_HiveBody> get copyWith =>
      __$HiveBodyCopyWithImpl<_HiveBody>(this, _$identity);
}

abstract class _HiveBody implements HiveBody {
  const factory _HiveBody(
      {@required @HiveField(2) String clientId,
      @required @HiveField(3) String accessToken,
      @required @HiveField(4) String refreshToken,
      @required @HiveField(5) String idToken,
      @required @HiveField(6) String scope,
      @required @HiveField(7) int expiresIn,
      @required @HiveField(8) String tokenType,
      @required @HiveField(9) HiveDecodedToken decodedToken,
      @required @HiveField(10) String audience}) = _$_HiveBody;

  @override
  @HiveField(2)
  String get clientId;
  @override
  @HiveField(3)
  String get accessToken;
  @override
  @HiveField(4)
  String get refreshToken;
  @override
  @HiveField(5)
  String get idToken;
  @override
  @HiveField(6)
  String get scope;
  @override
  @HiveField(7)
  int get expiresIn;
  @override
  @HiveField(8)
  String get tokenType;
  @override
  @HiveField(9)
  HiveDecodedToken get decodedToken;
  @override
  @HiveField(10)
  String get audience;
  @override
  _$HiveBodyCopyWith<_HiveBody> get copyWith;
}

/// @nodoc
class _$HiveDecodedTokenTearOff {
  const _$HiveDecodedTokenTearOff();

// ignore: unused_element
  _HiveDecodedToken call(
      {@required @HiveField(11) HiveEncoded encoded,
      @required @HiveField(12) HiveHeader header,
      @required @HiveField(13) HiveClaims claims,
      @required @HiveField(14) HiveUser user}) {
    return _HiveDecodedToken(
      encoded: encoded,
      header: header,
      claims: claims,
      user: user,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveDecodedToken = _$HiveDecodedTokenTearOff();

/// @nodoc
mixin _$HiveDecodedToken {
  @HiveField(11)
  HiveEncoded get encoded;
  @HiveField(12)
  HiveHeader get header;
  @HiveField(13)
  HiveClaims get claims;
  @HiveField(14)
  HiveUser get user;

  $HiveDecodedTokenCopyWith<HiveDecodedToken> get copyWith;
}

/// @nodoc
abstract class $HiveDecodedTokenCopyWith<$Res> {
  factory $HiveDecodedTokenCopyWith(
          HiveDecodedToken value, $Res Function(HiveDecodedToken) then) =
      _$HiveDecodedTokenCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(11) HiveEncoded encoded,
      @HiveField(12) HiveHeader header,
      @HiveField(13) HiveClaims claims,
      @HiveField(14) HiveUser user});

  $HiveEncodedCopyWith<$Res> get encoded;
  $HiveHeaderCopyWith<$Res> get header;
  $HiveClaimsCopyWith<$Res> get claims;
  $HiveUserCopyWith<$Res> get user;
}

/// @nodoc
class _$HiveDecodedTokenCopyWithImpl<$Res>
    implements $HiveDecodedTokenCopyWith<$Res> {
  _$HiveDecodedTokenCopyWithImpl(this._value, this._then);

  final HiveDecodedToken _value;
  // ignore: unused_field
  final $Res Function(HiveDecodedToken) _then;

  @override
  $Res call({
    Object encoded = freezed,
    Object header = freezed,
    Object claims = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      encoded: encoded == freezed ? _value.encoded : encoded as HiveEncoded,
      header: header == freezed ? _value.header : header as HiveHeader,
      claims: claims == freezed ? _value.claims : claims as HiveClaims,
      user: user == freezed ? _value.user : user as HiveUser,
    ));
  }

  @override
  $HiveEncodedCopyWith<$Res> get encoded {
    if (_value.encoded == null) {
      return null;
    }
    return $HiveEncodedCopyWith<$Res>(_value.encoded, (value) {
      return _then(_value.copyWith(encoded: value));
    });
  }

  @override
  $HiveHeaderCopyWith<$Res> get header {
    if (_value.header == null) {
      return null;
    }
    return $HiveHeaderCopyWith<$Res>(_value.header, (value) {
      return _then(_value.copyWith(header: value));
    });
  }

  @override
  $HiveClaimsCopyWith<$Res> get claims {
    if (_value.claims == null) {
      return null;
    }
    return $HiveClaimsCopyWith<$Res>(_value.claims, (value) {
      return _then(_value.copyWith(claims: value));
    });
  }

  @override
  $HiveUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $HiveUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$HiveDecodedTokenCopyWith<$Res>
    implements $HiveDecodedTokenCopyWith<$Res> {
  factory _$HiveDecodedTokenCopyWith(
          _HiveDecodedToken value, $Res Function(_HiveDecodedToken) then) =
      __$HiveDecodedTokenCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(11) HiveEncoded encoded,
      @HiveField(12) HiveHeader header,
      @HiveField(13) HiveClaims claims,
      @HiveField(14) HiveUser user});

  @override
  $HiveEncodedCopyWith<$Res> get encoded;
  @override
  $HiveHeaderCopyWith<$Res> get header;
  @override
  $HiveClaimsCopyWith<$Res> get claims;
  @override
  $HiveUserCopyWith<$Res> get user;
}

/// @nodoc
class __$HiveDecodedTokenCopyWithImpl<$Res>
    extends _$HiveDecodedTokenCopyWithImpl<$Res>
    implements _$HiveDecodedTokenCopyWith<$Res> {
  __$HiveDecodedTokenCopyWithImpl(
      _HiveDecodedToken _value, $Res Function(_HiveDecodedToken) _then)
      : super(_value, (v) => _then(v as _HiveDecodedToken));

  @override
  _HiveDecodedToken get _value => super._value as _HiveDecodedToken;

  @override
  $Res call({
    Object encoded = freezed,
    Object header = freezed,
    Object claims = freezed,
    Object user = freezed,
  }) {
    return _then(_HiveDecodedToken(
      encoded: encoded == freezed ? _value.encoded : encoded as HiveEncoded,
      header: header == freezed ? _value.header : header as HiveHeader,
      claims: claims == freezed ? _value.claims : claims as HiveClaims,
      user: user == freezed ? _value.user : user as HiveUser,
    ));
  }
}

@HiveType(typeId: 2)
@protected

/// @nodoc
class _$_HiveDecodedToken implements _HiveDecodedToken {
  const _$_HiveDecodedToken(
      {@required @HiveField(11) this.encoded,
      @required @HiveField(12) this.header,
      @required @HiveField(13) this.claims,
      @required @HiveField(14) this.user})
      : assert(encoded != null),
        assert(header != null),
        assert(claims != null),
        assert(user != null);

  @override
  @HiveField(11)
  final HiveEncoded encoded;
  @override
  @HiveField(12)
  final HiveHeader header;
  @override
  @HiveField(13)
  final HiveClaims claims;
  @override
  @HiveField(14)
  final HiveUser user;

  @override
  String toString() {
    return 'HiveDecodedToken(encoded: $encoded, header: $header, claims: $claims, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveDecodedToken &&
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
  _$HiveDecodedTokenCopyWith<_HiveDecodedToken> get copyWith =>
      __$HiveDecodedTokenCopyWithImpl<_HiveDecodedToken>(this, _$identity);
}

abstract class _HiveDecodedToken implements HiveDecodedToken {
  const factory _HiveDecodedToken(
      {@required @HiveField(11) HiveEncoded encoded,
      @required @HiveField(12) HiveHeader header,
      @required @HiveField(13) HiveClaims claims,
      @required @HiveField(14) HiveUser user}) = _$_HiveDecodedToken;

  @override
  @HiveField(11)
  HiveEncoded get encoded;
  @override
  @HiveField(12)
  HiveHeader get header;
  @override
  @HiveField(13)
  HiveClaims get claims;
  @override
  @HiveField(14)
  HiveUser get user;
  @override
  _$HiveDecodedTokenCopyWith<_HiveDecodedToken> get copyWith;
}

/// @nodoc
class _$HiveClaimsTearOff {
  const _$HiveClaimsTearOff();

// ignore: unused_element
  _HiveClaims call(
      {@required
      @HiveField(15)
          String raw,
      @required
      @HiveField(16)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @required
      @HiveField(17)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required
      @HiveField(18)
          String httpsShirasuIoCustomerId,
      @required
      @HiveField(19)
      @protected
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @required
      @HiveField(20)
      @protected
          List<dynamic> rawHttpsShirasuIoTenants,
      @required
      @HiveField(23)
          String nickname,
      @required
      @HiveField(24)
          String name,
      @required
      @HiveField(25)
          String picture,
      @required
      @HiveField(27)
          DateTime updatedAt,
      @required
      @HiveField(28)
          String email,
      @required
      @HiveField(29)
          bool emailVerified,
      @required
      @HiveField(30)
          String iss,
      @required
      @HiveField(31)
          String sub,
      @required
      @HiveField(32)
          String aud,
      @required
      @HiveField(33)
          int iat,
      @required
      @HiveField(34)
          int exp}) {
    return _HiveClaims(
      raw: raw,
      rawHttpsShirasuIoRoles: rawHttpsShirasuIoRoles,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId,
      rawHttpsShirasuIoDistributeds: rawHttpsShirasuIoDistributeds,
      rawHttpsShirasuIoTenants: rawHttpsShirasuIoTenants,
      nickname: nickname,
      name: name,
      picture: picture,
      updatedAt: updatedAt,
      email: email,
      emailVerified: emailVerified,
      iss: iss,
      sub: sub,
      aud: aud,
      iat: iat,
      exp: exp,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveClaims = _$HiveClaimsTearOff();

/// @nodoc
mixin _$HiveClaims {
  @HiveField(15)
  String get raw;
  @HiveField(16)
  @protected
  List<String> get rawHttpsShirasuIoRoles;
  @HiveField(17)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @HiveField(18)
  String get httpsShirasuIoCustomerId;
  @HiveField(19)
  @protected
  List<dynamic> get rawHttpsShirasuIoDistributeds;
  @HiveField(20)
  @protected
  List<dynamic> get rawHttpsShirasuIoTenants; // @HiveField(21)
// String givenName,
// @HiveField(22)
// String familyName,
  @HiveField(23)
  String get nickname;
  @HiveField(24)
  String get name;
  @HiveField(25)
  String get picture; // @HiveField(26)
// String locale,
  @HiveField(27)
  DateTime get updatedAt;
  @HiveField(28)
  String get email;
  @HiveField(29)
  bool get emailVerified;
  @HiveField(30)
  String get iss;
  @HiveField(31)
  String get sub;
  @HiveField(32)
  String get aud;
  @HiveField(33)
  int get iat;
  @HiveField(34)
  int get exp;

  $HiveClaimsCopyWith<HiveClaims> get copyWith;
}

/// @nodoc
abstract class $HiveClaimsCopyWith<$Res> {
  factory $HiveClaimsCopyWith(
          HiveClaims value, $Res Function(HiveClaims) then) =
      _$HiveClaimsCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(15)
          String raw,
      @HiveField(16)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @HiveField(17)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @HiveField(18)
          String httpsShirasuIoCustomerId,
      @HiveField(19)
      @protected
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @HiveField(20)
      @protected
          List<dynamic> rawHttpsShirasuIoTenants,
      @HiveField(23)
          String nickname,
      @HiveField(24)
          String name,
      @HiveField(25)
          String picture,
      @HiveField(27)
          DateTime updatedAt,
      @HiveField(28)
          String email,
      @HiveField(29)
          bool emailVerified,
      @HiveField(30)
          String iss,
      @HiveField(31)
          String sub,
      @HiveField(32)
          String aud,
      @HiveField(33)
          int iat,
      @HiveField(34)
          int exp});

  $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
      get httpsShirasuIoUserAttribute;
}

/// @nodoc
class _$HiveClaimsCopyWithImpl<$Res> implements $HiveClaimsCopyWith<$Res> {
  _$HiveClaimsCopyWithImpl(this._value, this._then);

  final HiveClaims _value;
  // ignore: unused_field
  final $Res Function(HiveClaims) _then;

  @override
  $Res call({
    Object raw = freezed,
    Object rawHttpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object rawHttpsShirasuIoDistributeds = freezed,
    Object rawHttpsShirasuIoTenants = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object iss = freezed,
    Object sub = freezed,
    Object aud = freezed,
    Object iat = freezed,
    Object exp = freezed,
  }) {
    return _then(_value.copyWith(
      raw: raw == freezed ? _value.raw : raw as String,
      rawHttpsShirasuIoRoles: rawHttpsShirasuIoRoles == freezed
          ? _value.rawHttpsShirasuIoRoles
          : rawHttpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      rawHttpsShirasuIoDistributeds: rawHttpsShirasuIoDistributeds == freezed
          ? _value.rawHttpsShirasuIoDistributeds
          : rawHttpsShirasuIoDistributeds as List<dynamic>,
      rawHttpsShirasuIoTenants: rawHttpsShirasuIoTenants == freezed
          ? _value.rawHttpsShirasuIoTenants
          : rawHttpsShirasuIoTenants as List<dynamic>,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
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
    ));
  }

  @override
  $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
      get httpsShirasuIoUserAttribute {
    if (_value.httpsShirasuIoUserAttribute == null) {
      return null;
    }
    return $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>(
        _value.httpsShirasuIoUserAttribute, (value) {
      return _then(_value.copyWith(httpsShirasuIoUserAttribute: value));
    });
  }
}

/// @nodoc
abstract class _$HiveClaimsCopyWith<$Res> implements $HiveClaimsCopyWith<$Res> {
  factory _$HiveClaimsCopyWith(
          _HiveClaims value, $Res Function(_HiveClaims) then) =
      __$HiveClaimsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(15)
          String raw,
      @HiveField(16)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @HiveField(17)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @HiveField(18)
          String httpsShirasuIoCustomerId,
      @HiveField(19)
      @protected
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @HiveField(20)
      @protected
          List<dynamic> rawHttpsShirasuIoTenants,
      @HiveField(23)
          String nickname,
      @HiveField(24)
          String name,
      @HiveField(25)
          String picture,
      @HiveField(27)
          DateTime updatedAt,
      @HiveField(28)
          String email,
      @HiveField(29)
          bool emailVerified,
      @HiveField(30)
          String iss,
      @HiveField(31)
          String sub,
      @HiveField(32)
          String aud,
      @HiveField(33)
          int iat,
      @HiveField(34)
          int exp});

  @override
  $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
      get httpsShirasuIoUserAttribute;
}

/// @nodoc
class __$HiveClaimsCopyWithImpl<$Res> extends _$HiveClaimsCopyWithImpl<$Res>
    implements _$HiveClaimsCopyWith<$Res> {
  __$HiveClaimsCopyWithImpl(
      _HiveClaims _value, $Res Function(_HiveClaims) _then)
      : super(_value, (v) => _then(v as _HiveClaims));

  @override
  _HiveClaims get _value => super._value as _HiveClaims;

  @override
  $Res call({
    Object raw = freezed,
    Object rawHttpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object rawHttpsShirasuIoDistributeds = freezed,
    Object rawHttpsShirasuIoTenants = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object iss = freezed,
    Object sub = freezed,
    Object aud = freezed,
    Object iat = freezed,
    Object exp = freezed,
  }) {
    return _then(_HiveClaims(
      raw: raw == freezed ? _value.raw : raw as String,
      rawHttpsShirasuIoRoles: rawHttpsShirasuIoRoles == freezed
          ? _value.rawHttpsShirasuIoRoles
          : rawHttpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      rawHttpsShirasuIoDistributeds: rawHttpsShirasuIoDistributeds == freezed
          ? _value.rawHttpsShirasuIoDistributeds
          : rawHttpsShirasuIoDistributeds as List<dynamic>,
      rawHttpsShirasuIoTenants: rawHttpsShirasuIoTenants == freezed
          ? _value.rawHttpsShirasuIoTenants
          : rawHttpsShirasuIoTenants as List<dynamic>,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
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
    ));
  }
}

@HiveType(typeId: 3)
@protected

/// @nodoc
class _$_HiveClaims extends _HiveClaims {
  const _$_HiveClaims(
      {@required @HiveField(15) this.raw,
      @required @HiveField(16) @protected this.rawHttpsShirasuIoRoles,
      @required @HiveField(17) this.httpsShirasuIoUserAttribute,
      @required @HiveField(18) this.httpsShirasuIoCustomerId,
      @required @HiveField(19) @protected this.rawHttpsShirasuIoDistributeds,
      @required @HiveField(20) @protected this.rawHttpsShirasuIoTenants,
      @required @HiveField(23) this.nickname,
      @required @HiveField(24) this.name,
      @required @HiveField(25) this.picture,
      @required @HiveField(27) this.updatedAt,
      @required @HiveField(28) this.email,
      @required @HiveField(29) this.emailVerified,
      @required @HiveField(30) this.iss,
      @required @HiveField(31) this.sub,
      @required @HiveField(32) this.aud,
      @required @HiveField(33) this.iat,
      @required @HiveField(34) this.exp})
      : assert(raw != null),
        assert(rawHttpsShirasuIoRoles != null),
        assert(httpsShirasuIoUserAttribute != null),
        assert(httpsShirasuIoCustomerId != null),
        assert(rawHttpsShirasuIoDistributeds != null),
        assert(rawHttpsShirasuIoTenants != null),
        assert(nickname != null),
        assert(name != null),
        assert(picture != null),
        assert(updatedAt != null),
        assert(email != null),
        assert(emailVerified != null),
        assert(iss != null),
        assert(sub != null),
        assert(aud != null),
        assert(iat != null),
        assert(exp != null),
        super._();

  @override
  @HiveField(15)
  final String raw;
  @override
  @HiveField(16)
  @protected
  final List<String> rawHttpsShirasuIoRoles;
  @override
  @HiveField(17)
  final HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @override
  @HiveField(18)
  final String httpsShirasuIoCustomerId;
  @override
  @HiveField(19)
  @protected
  final List<dynamic> rawHttpsShirasuIoDistributeds;
  @override
  @HiveField(20)
  @protected
  final List<dynamic> rawHttpsShirasuIoTenants;
  @override // @HiveField(21)
// String givenName,
// @HiveField(22)
// String familyName,
  @HiveField(23)
  final String nickname;
  @override
  @HiveField(24)
  final String name;
  @override
  @HiveField(25)
  final String picture;
  @override // @HiveField(26)
// String locale,
  @HiveField(27)
  final DateTime updatedAt;
  @override
  @HiveField(28)
  final String email;
  @override
  @HiveField(29)
  final bool emailVerified;
  @override
  @HiveField(30)
  final String iss;
  @override
  @HiveField(31)
  final String sub;
  @override
  @HiveField(32)
  final String aud;
  @override
  @HiveField(33)
  final int iat;
  @override
  @HiveField(34)
  final int exp;

  @override
  String toString() {
    return 'HiveClaims(raw: $raw, rawHttpsShirasuIoRoles: $rawHttpsShirasuIoRoles, httpsShirasuIoUserAttribute: $httpsShirasuIoUserAttribute, httpsShirasuIoCustomerId: $httpsShirasuIoCustomerId, rawHttpsShirasuIoDistributeds: $rawHttpsShirasuIoDistributeds, rawHttpsShirasuIoTenants: $rawHttpsShirasuIoTenants, nickname: $nickname, name: $name, picture: $picture, updatedAt: $updatedAt, email: $email, emailVerified: $emailVerified, iss: $iss, sub: $sub, aud: $aud, iat: $iat, exp: $exp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveClaims &&
            (identical(other.raw, raw) ||
                const DeepCollectionEquality().equals(other.raw, raw)) &&
            (identical(other.rawHttpsShirasuIoRoles, rawHttpsShirasuIoRoles) ||
                const DeepCollectionEquality().equals(
                    other.rawHttpsShirasuIoRoles, rawHttpsShirasuIoRoles)) &&
            (identical(other.httpsShirasuIoUserAttribute, httpsShirasuIoUserAttribute) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute)) &&
            (identical(other.httpsShirasuIoCustomerId, httpsShirasuIoCustomerId) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoCustomerId,
                    httpsShirasuIoCustomerId)) &&
            (identical(other.rawHttpsShirasuIoDistributeds, rawHttpsShirasuIoDistributeds) ||
                const DeepCollectionEquality().equals(
                    other.rawHttpsShirasuIoDistributeds,
                    rawHttpsShirasuIoDistributeds)) &&
            (identical(other.rawHttpsShirasuIoTenants, rawHttpsShirasuIoTenants) ||
                const DeepCollectionEquality().equals(
                    other.rawHttpsShirasuIoTenants,
                    rawHttpsShirasuIoTenants)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)) &&
            (identical(other.iss, iss) || const DeepCollectionEquality().equals(other.iss, iss)) &&
            (identical(other.sub, sub) || const DeepCollectionEquality().equals(other.sub, sub)) &&
            (identical(other.aud, aud) || const DeepCollectionEquality().equals(other.aud, aud)) &&
            (identical(other.iat, iat) || const DeepCollectionEquality().equals(other.iat, iat)) &&
            (identical(other.exp, exp) || const DeepCollectionEquality().equals(other.exp, exp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(raw) ^
      const DeepCollectionEquality().hash(rawHttpsShirasuIoRoles) ^
      const DeepCollectionEquality().hash(httpsShirasuIoUserAttribute) ^
      const DeepCollectionEquality().hash(httpsShirasuIoCustomerId) ^
      const DeepCollectionEquality().hash(rawHttpsShirasuIoDistributeds) ^
      const DeepCollectionEquality().hash(rawHttpsShirasuIoTenants) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(iss) ^
      const DeepCollectionEquality().hash(sub) ^
      const DeepCollectionEquality().hash(aud) ^
      const DeepCollectionEquality().hash(iat) ^
      const DeepCollectionEquality().hash(exp);

  @override
  _$HiveClaimsCopyWith<_HiveClaims> get copyWith =>
      __$HiveClaimsCopyWithImpl<_HiveClaims>(this, _$identity);
}

abstract class _HiveClaims extends HiveClaims {
  const _HiveClaims._() : super._();
  const factory _HiveClaims(
      {@required
      @HiveField(15)
          String raw,
      @required
      @HiveField(16)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @required
      @HiveField(17)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required
      @HiveField(18)
          String httpsShirasuIoCustomerId,
      @required
      @HiveField(19)
      @protected
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @required
      @HiveField(20)
      @protected
          List<dynamic> rawHttpsShirasuIoTenants,
      @required
      @HiveField(23)
          String nickname,
      @required
      @HiveField(24)
          String name,
      @required
      @HiveField(25)
          String picture,
      @required
      @HiveField(27)
          DateTime updatedAt,
      @required
      @HiveField(28)
          String email,
      @required
      @HiveField(29)
          bool emailVerified,
      @required
      @HiveField(30)
          String iss,
      @required
      @HiveField(31)
          String sub,
      @required
      @HiveField(32)
          String aud,
      @required
      @HiveField(33)
          int iat,
      @required
      @HiveField(34)
          int exp}) = _$_HiveClaims;

  @override
  @HiveField(15)
  String get raw;
  @override
  @HiveField(16)
  @protected
  List<String> get rawHttpsShirasuIoRoles;
  @override
  @HiveField(17)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @override
  @HiveField(18)
  String get httpsShirasuIoCustomerId;
  @override
  @HiveField(19)
  @protected
  List<dynamic> get rawHttpsShirasuIoDistributeds;
  @override
  @HiveField(20)
  @protected
  List<dynamic> get rawHttpsShirasuIoTenants;
  @override // @HiveField(21)
// String givenName,
// @HiveField(22)
// String familyName,
  @HiveField(23)
  String get nickname;
  @override
  @HiveField(24)
  String get name;
  @override
  @HiveField(25)
  String get picture;
  @override // @HiveField(26)
// String locale,
  @HiveField(27)
  DateTime get updatedAt;
  @override
  @HiveField(28)
  String get email;
  @override
  @HiveField(29)
  bool get emailVerified;
  @override
  @HiveField(30)
  String get iss;
  @override
  @HiveField(31)
  String get sub;
  @override
  @HiveField(32)
  String get aud;
  @override
  @HiveField(33)
  int get iat;
  @override
  @HiveField(34)
  int get exp;
  @override
  _$HiveClaimsCopyWith<_HiveClaims> get copyWith;
}

/// @nodoc
class _$HiveHttpsShirasuIoUserAttributeTearOff {
  const _$HiveHttpsShirasuIoUserAttributeTearOff();

// ignore: unused_element
  _HiveHttpsShirasuIoUserAttribute call(
      {@required @HiveField(36) DateTime birthDate,
      @required @HiveField(37) String job,
      @required @HiveField(38) String country,
      @required @HiveField(39) String prefecture,
      @required @HiveField(40) String familyName,
      @required @HiveField(41) String givenName,
      @required @HiveField(42) String familyNameReading,
      @required @HiveField(43) String givenNameReading}) {
    return _HiveHttpsShirasuIoUserAttribute(
      birthDate: birthDate,
      job: job,
      country: country,
      prefecture: prefecture,
      familyName: familyName,
      givenName: givenName,
      familyNameReading: familyNameReading,
      givenNameReading: givenNameReading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveHttpsShirasuIoUserAttribute =
    _$HiveHttpsShirasuIoUserAttributeTearOff();

/// @nodoc
mixin _$HiveHttpsShirasuIoUserAttribute {
  @HiveField(36)
  DateTime get birthDate;
  @HiveField(37)
  String get job;
  @HiveField(38)
  String get country;
  @HiveField(39)
  String get prefecture;
  @HiveField(40)
  String get familyName;
  @HiveField(41)
  String get givenName;
  @HiveField(42)
  String get familyNameReading;
  @HiveField(43)
  String get givenNameReading;

  $HiveHttpsShirasuIoUserAttributeCopyWith<HiveHttpsShirasuIoUserAttribute>
      get copyWith;
}

/// @nodoc
abstract class $HiveHttpsShirasuIoUserAttributeCopyWith<$Res> {
  factory $HiveHttpsShirasuIoUserAttributeCopyWith(
          HiveHttpsShirasuIoUserAttribute value,
          $Res Function(HiveHttpsShirasuIoUserAttribute) then) =
      _$HiveHttpsShirasuIoUserAttributeCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(36) DateTime birthDate,
      @HiveField(37) String job,
      @HiveField(38) String country,
      @HiveField(39) String prefecture,
      @HiveField(40) String familyName,
      @HiveField(41) String givenName,
      @HiveField(42) String familyNameReading,
      @HiveField(43) String givenNameReading});
}

/// @nodoc
class _$HiveHttpsShirasuIoUserAttributeCopyWithImpl<$Res>
    implements $HiveHttpsShirasuIoUserAttributeCopyWith<$Res> {
  _$HiveHttpsShirasuIoUserAttributeCopyWithImpl(this._value, this._then);

  final HiveHttpsShirasuIoUserAttribute _value;
  // ignore: unused_field
  final $Res Function(HiveHttpsShirasuIoUserAttribute) _then;

  @override
  $Res call({
    Object birthDate = freezed,
    Object job = freezed,
    Object country = freezed,
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
      country: country == freezed ? _value.country : country as String,
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
abstract class _$HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
    implements $HiveHttpsShirasuIoUserAttributeCopyWith<$Res> {
  factory _$HiveHttpsShirasuIoUserAttributeCopyWith(
          _HiveHttpsShirasuIoUserAttribute value,
          $Res Function(_HiveHttpsShirasuIoUserAttribute) then) =
      __$HiveHttpsShirasuIoUserAttributeCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(36) DateTime birthDate,
      @HiveField(37) String job,
      @HiveField(38) String country,
      @HiveField(39) String prefecture,
      @HiveField(40) String familyName,
      @HiveField(41) String givenName,
      @HiveField(42) String familyNameReading,
      @HiveField(43) String givenNameReading});
}

/// @nodoc
class __$HiveHttpsShirasuIoUserAttributeCopyWithImpl<$Res>
    extends _$HiveHttpsShirasuIoUserAttributeCopyWithImpl<$Res>
    implements _$HiveHttpsShirasuIoUserAttributeCopyWith<$Res> {
  __$HiveHttpsShirasuIoUserAttributeCopyWithImpl(
      _HiveHttpsShirasuIoUserAttribute _value,
      $Res Function(_HiveHttpsShirasuIoUserAttribute) _then)
      : super(_value, (v) => _then(v as _HiveHttpsShirasuIoUserAttribute));

  @override
  _HiveHttpsShirasuIoUserAttribute get _value =>
      super._value as _HiveHttpsShirasuIoUserAttribute;

  @override
  $Res call({
    Object birthDate = freezed,
    Object job = freezed,
    Object country = freezed,
    Object prefecture = freezed,
    Object familyName = freezed,
    Object givenName = freezed,
    Object familyNameReading = freezed,
    Object givenNameReading = freezed,
  }) {
    return _then(_HiveHttpsShirasuIoUserAttribute(
      birthDate:
          birthDate == freezed ? _value.birthDate : birthDate as DateTime,
      job: job == freezed ? _value.job : job as String,
      country: country == freezed ? _value.country : country as String,
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

@HiveType(typeId: 4)
@protected

/// @nodoc
class _$_HiveHttpsShirasuIoUserAttribute
    implements _HiveHttpsShirasuIoUserAttribute {
  const _$_HiveHttpsShirasuIoUserAttribute(
      {@required @HiveField(36) this.birthDate,
      @required @HiveField(37) this.job,
      @required @HiveField(38) this.country,
      @required @HiveField(39) this.prefecture,
      @required @HiveField(40) this.familyName,
      @required @HiveField(41) this.givenName,
      @required @HiveField(42) this.familyNameReading,
      @required @HiveField(43) this.givenNameReading})
      : assert(birthDate != null),
        assert(job != null),
        assert(country != null),
        assert(prefecture != null),
        assert(familyName != null),
        assert(givenName != null),
        assert(familyNameReading != null),
        assert(givenNameReading != null);

  @override
  @HiveField(36)
  final DateTime birthDate;
  @override
  @HiveField(37)
  final String job;
  @override
  @HiveField(38)
  final String country;
  @override
  @HiveField(39)
  final String prefecture;
  @override
  @HiveField(40)
  final String familyName;
  @override
  @HiveField(41)
  final String givenName;
  @override
  @HiveField(42)
  final String familyNameReading;
  @override
  @HiveField(43)
  final String givenNameReading;

  @override
  String toString() {
    return 'HiveHttpsShirasuIoUserAttribute(birthDate: $birthDate, job: $job, country: $country, prefecture: $prefecture, familyName: $familyName, givenName: $givenName, familyNameReading: $familyNameReading, givenNameReading: $givenNameReading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveHttpsShirasuIoUserAttribute &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.job, job) ||
                const DeepCollectionEquality().equals(other.job, job)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
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
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(prefecture) ^
      const DeepCollectionEquality().hash(familyName) ^
      const DeepCollectionEquality().hash(givenName) ^
      const DeepCollectionEquality().hash(familyNameReading) ^
      const DeepCollectionEquality().hash(givenNameReading);

  @override
  _$HiveHttpsShirasuIoUserAttributeCopyWith<_HiveHttpsShirasuIoUserAttribute>
      get copyWith => __$HiveHttpsShirasuIoUserAttributeCopyWithImpl<
          _HiveHttpsShirasuIoUserAttribute>(this, _$identity);
}

abstract class _HiveHttpsShirasuIoUserAttribute
    implements HiveHttpsShirasuIoUserAttribute {
  const factory _HiveHttpsShirasuIoUserAttribute(
          {@required @HiveField(36) DateTime birthDate,
          @required @HiveField(37) String job,
          @required @HiveField(38) String country,
          @required @HiveField(39) String prefecture,
          @required @HiveField(40) String familyName,
          @required @HiveField(41) String givenName,
          @required @HiveField(42) String familyNameReading,
          @required @HiveField(43) String givenNameReading}) =
      _$_HiveHttpsShirasuIoUserAttribute;

  @override
  @HiveField(36)
  DateTime get birthDate;
  @override
  @HiveField(37)
  String get job;
  @override
  @HiveField(38)
  String get country;
  @override
  @HiveField(39)
  String get prefecture;
  @override
  @HiveField(40)
  String get familyName;
  @override
  @HiveField(41)
  String get givenName;
  @override
  @HiveField(42)
  String get familyNameReading;
  @override
  @HiveField(43)
  String get givenNameReading;
  @override
  _$HiveHttpsShirasuIoUserAttributeCopyWith<_HiveHttpsShirasuIoUserAttribute>
      get copyWith;
}

/// @nodoc
class _$HiveEncodedTearOff {
  const _$HiveEncodedTearOff();

// ignore: unused_element
  _HiveEncoded call(
      {@required @HiveField(43) String header,
      @required @HiveField(44) String payload,
      @required @HiveField(45) String signature}) {
    return _HiveEncoded(
      header: header,
      payload: payload,
      signature: signature,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveEncoded = _$HiveEncodedTearOff();

/// @nodoc
mixin _$HiveEncoded {
  @HiveField(43)
  String get header;
  @HiveField(44)
  String get payload;
  @HiveField(45)
  String get signature;

  $HiveEncodedCopyWith<HiveEncoded> get copyWith;
}

/// @nodoc
abstract class $HiveEncodedCopyWith<$Res> {
  factory $HiveEncodedCopyWith(
          HiveEncoded value, $Res Function(HiveEncoded) then) =
      _$HiveEncodedCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(43) String header,
      @HiveField(44) String payload,
      @HiveField(45) String signature});
}

/// @nodoc
class _$HiveEncodedCopyWithImpl<$Res> implements $HiveEncodedCopyWith<$Res> {
  _$HiveEncodedCopyWithImpl(this._value, this._then);

  final HiveEncoded _value;
  // ignore: unused_field
  final $Res Function(HiveEncoded) _then;

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
abstract class _$HiveEncodedCopyWith<$Res>
    implements $HiveEncodedCopyWith<$Res> {
  factory _$HiveEncodedCopyWith(
          _HiveEncoded value, $Res Function(_HiveEncoded) then) =
      __$HiveEncodedCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(43) String header,
      @HiveField(44) String payload,
      @HiveField(45) String signature});
}

/// @nodoc
class __$HiveEncodedCopyWithImpl<$Res> extends _$HiveEncodedCopyWithImpl<$Res>
    implements _$HiveEncodedCopyWith<$Res> {
  __$HiveEncodedCopyWithImpl(
      _HiveEncoded _value, $Res Function(_HiveEncoded) _then)
      : super(_value, (v) => _then(v as _HiveEncoded));

  @override
  _HiveEncoded get _value => super._value as _HiveEncoded;

  @override
  $Res call({
    Object header = freezed,
    Object payload = freezed,
    Object signature = freezed,
  }) {
    return _then(_HiveEncoded(
      header: header == freezed ? _value.header : header as String,
      payload: payload == freezed ? _value.payload : payload as String,
      signature: signature == freezed ? _value.signature : signature as String,
    ));
  }
}

@protected
@HiveType(typeId: 5)

/// @nodoc
class _$_HiveEncoded implements _HiveEncoded {
  const _$_HiveEncoded(
      {@required @HiveField(43) this.header,
      @required @HiveField(44) this.payload,
      @required @HiveField(45) this.signature})
      : assert(header != null),
        assert(payload != null),
        assert(signature != null);

  @override
  @HiveField(43)
  final String header;
  @override
  @HiveField(44)
  final String payload;
  @override
  @HiveField(45)
  final String signature;

  @override
  String toString() {
    return 'HiveEncoded(header: $header, payload: $payload, signature: $signature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveEncoded &&
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
  _$HiveEncodedCopyWith<_HiveEncoded> get copyWith =>
      __$HiveEncodedCopyWithImpl<_HiveEncoded>(this, _$identity);
}

abstract class _HiveEncoded implements HiveEncoded {
  const factory _HiveEncoded(
      {@required @HiveField(43) String header,
      @required @HiveField(44) String payload,
      @required @HiveField(45) String signature}) = _$_HiveEncoded;

  @override
  @HiveField(43)
  String get header;
  @override
  @HiveField(44)
  String get payload;
  @override
  @HiveField(45)
  String get signature;
  @override
  _$HiveEncodedCopyWith<_HiveEncoded> get copyWith;
}

/// @nodoc
class _$HiveHeaderTearOff {
  const _$HiveHeaderTearOff();

// ignore: unused_element
  _HiveHeader call(
      {@required @HiveField(46) String alg,
      @required @HiveField(47) String typ,
      @required @HiveField(48) String kid}) {
    return _HiveHeader(
      alg: alg,
      typ: typ,
      kid: kid,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveHeader = _$HiveHeaderTearOff();

/// @nodoc
mixin _$HiveHeader {
  @HiveField(46)
  String get alg;
  @HiveField(47)
  String get typ;
  @HiveField(48)
  String get kid;

  $HiveHeaderCopyWith<HiveHeader> get copyWith;
}

/// @nodoc
abstract class $HiveHeaderCopyWith<$Res> {
  factory $HiveHeaderCopyWith(
          HiveHeader value, $Res Function(HiveHeader) then) =
      _$HiveHeaderCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(46) String alg,
      @HiveField(47) String typ,
      @HiveField(48) String kid});
}

/// @nodoc
class _$HiveHeaderCopyWithImpl<$Res> implements $HiveHeaderCopyWith<$Res> {
  _$HiveHeaderCopyWithImpl(this._value, this._then);

  final HiveHeader _value;
  // ignore: unused_field
  final $Res Function(HiveHeader) _then;

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
abstract class _$HiveHeaderCopyWith<$Res> implements $HiveHeaderCopyWith<$Res> {
  factory _$HiveHeaderCopyWith(
          _HiveHeader value, $Res Function(_HiveHeader) then) =
      __$HiveHeaderCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(46) String alg,
      @HiveField(47) String typ,
      @HiveField(48) String kid});
}

/// @nodoc
class __$HiveHeaderCopyWithImpl<$Res> extends _$HiveHeaderCopyWithImpl<$Res>
    implements _$HiveHeaderCopyWith<$Res> {
  __$HiveHeaderCopyWithImpl(
      _HiveHeader _value, $Res Function(_HiveHeader) _then)
      : super(_value, (v) => _then(v as _HiveHeader));

  @override
  _HiveHeader get _value => super._value as _HiveHeader;

  @override
  $Res call({
    Object alg = freezed,
    Object typ = freezed,
    Object kid = freezed,
  }) {
    return _then(_HiveHeader(
      alg: alg == freezed ? _value.alg : alg as String,
      typ: typ == freezed ? _value.typ : typ as String,
      kid: kid == freezed ? _value.kid : kid as String,
    ));
  }
}

@HiveType(typeId: 6)
@protected

/// @nodoc
class _$_HiveHeader implements _HiveHeader {
  const _$_HiveHeader(
      {@required @HiveField(46) this.alg,
      @required @HiveField(47) this.typ,
      @required @HiveField(48) this.kid})
      : assert(alg != null),
        assert(typ != null),
        assert(kid != null);

  @override
  @HiveField(46)
  final String alg;
  @override
  @HiveField(47)
  final String typ;
  @override
  @HiveField(48)
  final String kid;

  @override
  String toString() {
    return 'HiveHeader(alg: $alg, typ: $typ, kid: $kid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveHeader &&
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
  _$HiveHeaderCopyWith<_HiveHeader> get copyWith =>
      __$HiveHeaderCopyWithImpl<_HiveHeader>(this, _$identity);
}

abstract class _HiveHeader implements HiveHeader {
  const factory _HiveHeader(
      {@required @HiveField(46) String alg,
      @required @HiveField(47) String typ,
      @required @HiveField(48) String kid}) = _$_HiveHeader;

  @override
  @HiveField(46)
  String get alg;
  @override
  @HiveField(47)
  String get typ;
  @override
  @HiveField(48)
  String get kid;
  @override
  _$HiveHeaderCopyWith<_HiveHeader> get copyWith;
}

/// @nodoc
class _$HiveUserTearOff {
  const _$HiveUserTearOff();

// ignore: unused_element
  _HiveUser call(
      {@required
      @HiveField(49)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @required
      @HiveField(50)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required
      @HiveField(51)
          String httpsShirasuIoCustomerId,
      @required
      @protected
      @HiveField(52)
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @required
      @protected
      @HiveField(53)
          List<dynamic> rawHttpsShirasuIoTenants,
      @required
      @HiveField(56)
          String nickname,
      @required
      @HiveField(57)
          String name,
      @required
      @HiveField(58)
          String picture,
      @required
      @HiveField(60)
          DateTime updatedAt,
      @required
      @HiveField(61)
          String email,
      @required
      @HiveField(62)
          bool emailVerified,
      @required
      @HiveField(63)
          String sub}) {
    return _HiveUser(
      rawHttpsShirasuIoRoles: rawHttpsShirasuIoRoles,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId,
      rawHttpsShirasuIoDistributeds: rawHttpsShirasuIoDistributeds,
      rawHttpsShirasuIoTenants: rawHttpsShirasuIoTenants,
      nickname: nickname,
      name: name,
      picture: picture,
      updatedAt: updatedAt,
      email: email,
      emailVerified: emailVerified,
      sub: sub,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveUser = _$HiveUserTearOff();

/// @nodoc
mixin _$HiveUser {
  @HiveField(49)
  @protected
  List<String> get rawHttpsShirasuIoRoles;
  @HiveField(50)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @HiveField(51)
  String get httpsShirasuIoCustomerId;
  @protected
  @HiveField(52)
  List<dynamic> get rawHttpsShirasuIoDistributeds;
  @protected
  @HiveField(53)
  List<dynamic> get rawHttpsShirasuIoTenants; // @required @HiveField(54)
// String givenName,
// @required @HiveField(55)
// String familyName,
  @HiveField(56)
  String get nickname;
  @HiveField(57)
  String get name;
  @HiveField(58)
  String get picture; // @required @HiveField(59)
// String locale,
  @HiveField(60)
  DateTime get updatedAt;
  @HiveField(61)
  String get email;
  @HiveField(62)
  bool get emailVerified;
  @HiveField(63)
  String get sub;

  $HiveUserCopyWith<HiveUser> get copyWith;
}

/// @nodoc
abstract class $HiveUserCopyWith<$Res> {
  factory $HiveUserCopyWith(HiveUser value, $Res Function(HiveUser) then) =
      _$HiveUserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(49)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @HiveField(50)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @HiveField(51)
          String httpsShirasuIoCustomerId,
      @protected
      @HiveField(52)
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @protected
      @HiveField(53)
          List<dynamic> rawHttpsShirasuIoTenants,
      @HiveField(56)
          String nickname,
      @HiveField(57)
          String name,
      @HiveField(58)
          String picture,
      @HiveField(60)
          DateTime updatedAt,
      @HiveField(61)
          String email,
      @HiveField(62)
          bool emailVerified,
      @HiveField(63)
          String sub});

  $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
      get httpsShirasuIoUserAttribute;
}

/// @nodoc
class _$HiveUserCopyWithImpl<$Res> implements $HiveUserCopyWith<$Res> {
  _$HiveUserCopyWithImpl(this._value, this._then);

  final HiveUser _value;
  // ignore: unused_field
  final $Res Function(HiveUser) _then;

  @override
  $Res call({
    Object rawHttpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object rawHttpsShirasuIoDistributeds = freezed,
    Object rawHttpsShirasuIoTenants = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object sub = freezed,
  }) {
    return _then(_value.copyWith(
      rawHttpsShirasuIoRoles: rawHttpsShirasuIoRoles == freezed
          ? _value.rawHttpsShirasuIoRoles
          : rawHttpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      rawHttpsShirasuIoDistributeds: rawHttpsShirasuIoDistributeds == freezed
          ? _value.rawHttpsShirasuIoDistributeds
          : rawHttpsShirasuIoDistributeds as List<dynamic>,
      rawHttpsShirasuIoTenants: rawHttpsShirasuIoTenants == freezed
          ? _value.rawHttpsShirasuIoTenants
          : rawHttpsShirasuIoTenants as List<dynamic>,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
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
  $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
      get httpsShirasuIoUserAttribute {
    if (_value.httpsShirasuIoUserAttribute == null) {
      return null;
    }
    return $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>(
        _value.httpsShirasuIoUserAttribute, (value) {
      return _then(_value.copyWith(httpsShirasuIoUserAttribute: value));
    });
  }
}

/// @nodoc
abstract class _$HiveUserCopyWith<$Res> implements $HiveUserCopyWith<$Res> {
  factory _$HiveUserCopyWith(_HiveUser value, $Res Function(_HiveUser) then) =
      __$HiveUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(49)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @HiveField(50)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @HiveField(51)
          String httpsShirasuIoCustomerId,
      @protected
      @HiveField(52)
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @protected
      @HiveField(53)
          List<dynamic> rawHttpsShirasuIoTenants,
      @HiveField(56)
          String nickname,
      @HiveField(57)
          String name,
      @HiveField(58)
          String picture,
      @HiveField(60)
          DateTime updatedAt,
      @HiveField(61)
          String email,
      @HiveField(62)
          bool emailVerified,
      @HiveField(63)
          String sub});

  @override
  $HiveHttpsShirasuIoUserAttributeCopyWith<$Res>
      get httpsShirasuIoUserAttribute;
}

/// @nodoc
class __$HiveUserCopyWithImpl<$Res> extends _$HiveUserCopyWithImpl<$Res>
    implements _$HiveUserCopyWith<$Res> {
  __$HiveUserCopyWithImpl(_HiveUser _value, $Res Function(_HiveUser) _then)
      : super(_value, (v) => _then(v as _HiveUser));

  @override
  _HiveUser get _value => super._value as _HiveUser;

  @override
  $Res call({
    Object rawHttpsShirasuIoRoles = freezed,
    Object httpsShirasuIoUserAttribute = freezed,
    Object httpsShirasuIoCustomerId = freezed,
    Object rawHttpsShirasuIoDistributeds = freezed,
    Object rawHttpsShirasuIoTenants = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object sub = freezed,
  }) {
    return _then(_HiveUser(
      rawHttpsShirasuIoRoles: rawHttpsShirasuIoRoles == freezed
          ? _value.rawHttpsShirasuIoRoles
          : rawHttpsShirasuIoRoles as List<String>,
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: httpsShirasuIoCustomerId == freezed
          ? _value.httpsShirasuIoCustomerId
          : httpsShirasuIoCustomerId as String,
      rawHttpsShirasuIoDistributeds: rawHttpsShirasuIoDistributeds == freezed
          ? _value.rawHttpsShirasuIoDistributeds
          : rawHttpsShirasuIoDistributeds as List<dynamic>,
      rawHttpsShirasuIoTenants: rawHttpsShirasuIoTenants == freezed
          ? _value.rawHttpsShirasuIoTenants
          : rawHttpsShirasuIoTenants as List<dynamic>,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      name: name == freezed ? _value.name : name as String,
      picture: picture == freezed ? _value.picture : picture as String,
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

@HiveType(typeId: 7)
@protected

/// @nodoc
class _$_HiveUser extends _HiveUser {
  const _$_HiveUser(
      {@required @HiveField(49) @protected this.rawHttpsShirasuIoRoles,
      @required @HiveField(50) this.httpsShirasuIoUserAttribute,
      @required @HiveField(51) this.httpsShirasuIoCustomerId,
      @required @protected @HiveField(52) this.rawHttpsShirasuIoDistributeds,
      @required @protected @HiveField(53) this.rawHttpsShirasuIoTenants,
      @required @HiveField(56) this.nickname,
      @required @HiveField(57) this.name,
      @required @HiveField(58) this.picture,
      @required @HiveField(60) this.updatedAt,
      @required @HiveField(61) this.email,
      @required @HiveField(62) this.emailVerified,
      @required @HiveField(63) this.sub})
      : assert(rawHttpsShirasuIoRoles != null),
        assert(httpsShirasuIoUserAttribute != null),
        assert(httpsShirasuIoCustomerId != null),
        assert(rawHttpsShirasuIoDistributeds != null),
        assert(rawHttpsShirasuIoTenants != null),
        assert(nickname != null),
        assert(name != null),
        assert(picture != null),
        assert(updatedAt != null),
        assert(email != null),
        assert(emailVerified != null),
        assert(sub != null),
        super._();

  @override
  @HiveField(49)
  @protected
  final List<String> rawHttpsShirasuIoRoles;
  @override
  @HiveField(50)
  final HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @override
  @HiveField(51)
  final String httpsShirasuIoCustomerId;
  @override
  @protected
  @HiveField(52)
  final List<dynamic> rawHttpsShirasuIoDistributeds;
  @override
  @protected
  @HiveField(53)
  final List<dynamic> rawHttpsShirasuIoTenants;
  @override // @required @HiveField(54)
// String givenName,
// @required @HiveField(55)
// String familyName,
  @HiveField(56)
  final String nickname;
  @override
  @HiveField(57)
  final String name;
  @override
  @HiveField(58)
  final String picture;
  @override // @required @HiveField(59)
// String locale,
  @HiveField(60)
  final DateTime updatedAt;
  @override
  @HiveField(61)
  final String email;
  @override
  @HiveField(62)
  final bool emailVerified;
  @override
  @HiveField(63)
  final String sub;

  @override
  String toString() {
    return 'HiveUser(rawHttpsShirasuIoRoles: $rawHttpsShirasuIoRoles, httpsShirasuIoUserAttribute: $httpsShirasuIoUserAttribute, httpsShirasuIoCustomerId: $httpsShirasuIoCustomerId, rawHttpsShirasuIoDistributeds: $rawHttpsShirasuIoDistributeds, rawHttpsShirasuIoTenants: $rawHttpsShirasuIoTenants, nickname: $nickname, name: $name, picture: $picture, updatedAt: $updatedAt, email: $email, emailVerified: $emailVerified, sub: $sub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveUser &&
            (identical(other.rawHttpsShirasuIoRoles, rawHttpsShirasuIoRoles) ||
                const DeepCollectionEquality().equals(
                    other.rawHttpsShirasuIoRoles, rawHttpsShirasuIoRoles)) &&
            (identical(other.httpsShirasuIoUserAttribute, httpsShirasuIoUserAttribute) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute)) &&
            (identical(other.httpsShirasuIoCustomerId, httpsShirasuIoCustomerId) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoCustomerId,
                    httpsShirasuIoCustomerId)) &&
            (identical(other.rawHttpsShirasuIoDistributeds, rawHttpsShirasuIoDistributeds) ||
                const DeepCollectionEquality().equals(
                    other.rawHttpsShirasuIoDistributeds,
                    rawHttpsShirasuIoDistributeds)) &&
            (identical(other.rawHttpsShirasuIoTenants, rawHttpsShirasuIoTenants) ||
                const DeepCollectionEquality().equals(
                    other.rawHttpsShirasuIoTenants,
                    rawHttpsShirasuIoTenants)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.picture, picture) ||
                const DeepCollectionEquality()
                    .equals(other.picture, picture)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.emailVerified, emailVerified) ||
                const DeepCollectionEquality()
                    .equals(other.emailVerified, emailVerified)) &&
            (identical(other.sub, sub) || const DeepCollectionEquality().equals(other.sub, sub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawHttpsShirasuIoRoles) ^
      const DeepCollectionEquality().hash(httpsShirasuIoUserAttribute) ^
      const DeepCollectionEquality().hash(httpsShirasuIoCustomerId) ^
      const DeepCollectionEquality().hash(rawHttpsShirasuIoDistributeds) ^
      const DeepCollectionEquality().hash(rawHttpsShirasuIoTenants) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(sub);

  @override
  _$HiveUserCopyWith<_HiveUser> get copyWith =>
      __$HiveUserCopyWithImpl<_HiveUser>(this, _$identity);
}

abstract class _HiveUser extends HiveUser {
  const _HiveUser._() : super._();
  const factory _HiveUser(
      {@required
      @HiveField(49)
      @protected
          List<String> rawHttpsShirasuIoRoles,
      @required
      @HiveField(50)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required
      @HiveField(51)
          String httpsShirasuIoCustomerId,
      @required
      @protected
      @HiveField(52)
          List<dynamic> rawHttpsShirasuIoDistributeds,
      @required
      @protected
      @HiveField(53)
          List<dynamic> rawHttpsShirasuIoTenants,
      @required
      @HiveField(56)
          String nickname,
      @required
      @HiveField(57)
          String name,
      @required
      @HiveField(58)
          String picture,
      @required
      @HiveField(60)
          DateTime updatedAt,
      @required
      @HiveField(61)
          String email,
      @required
      @HiveField(62)
          bool emailVerified,
      @required
      @HiveField(63)
          String sub}) = _$_HiveUser;

  @override
  @HiveField(49)
  @protected
  List<String> get rawHttpsShirasuIoRoles;
  @override
  @HiveField(50)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @override
  @HiveField(51)
  String get httpsShirasuIoCustomerId;
  @override
  @protected
  @HiveField(52)
  List<dynamic> get rawHttpsShirasuIoDistributeds;
  @override
  @protected
  @HiveField(53)
  List<dynamic> get rawHttpsShirasuIoTenants;
  @override // @required @HiveField(54)
// String givenName,
// @required @HiveField(55)
// String familyName,
  @HiveField(56)
  String get nickname;
  @override
  @HiveField(57)
  String get name;
  @override
  @HiveField(58)
  String get picture;
  @override // @required @HiveField(59)
// String locale,
  @HiveField(60)
  DateTime get updatedAt;
  @override
  @HiveField(61)
  String get email;
  @override
  @HiveField(62)
  bool get emailVerified;
  @override
  @HiveField(63)
  String get sub;
  @override
  _$HiveUserCopyWith<_HiveUser> get copyWith;
}
