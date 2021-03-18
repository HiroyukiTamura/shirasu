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
      @required @HiveField(2) DateTime tokenPublishedAt}) {
    return _HiveAuthData(
      body: body,
      tokenPublishedAt: tokenPublishedAt,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveAuthData = _$HiveAuthDataTearOff();

/// @nodoc
mixin _$HiveAuthData {
  @HiveField(0)
  HiveBody get body; // @required @HiveField(1) @protected int rawExpiresAt,
  @HiveField(2)
  DateTime get tokenPublishedAt;

  @JsonKey(ignore: true)
  $HiveAuthDataCopyWith<HiveAuthData> get copyWith;
}

/// @nodoc
abstract class $HiveAuthDataCopyWith<$Res> {
  factory $HiveAuthDataCopyWith(
          HiveAuthData value, $Res Function(HiveAuthData) then) =
      _$HiveAuthDataCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) HiveBody body, @HiveField(2) DateTime tokenPublishedAt});

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
    Object tokenPublishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as HiveBody,
      tokenPublishedAt: tokenPublishedAt == freezed
          ? _value.tokenPublishedAt
          : tokenPublishedAt as DateTime,
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
  $Res call(
      {@HiveField(0) HiveBody body, @HiveField(2) DateTime tokenPublishedAt});

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
    Object tokenPublishedAt = freezed,
  }) {
    return _then(_HiveAuthData(
      body: body == freezed ? _value.body : body as HiveBody,
      tokenPublishedAt: tokenPublishedAt == freezed
          ? _value.tokenPublishedAt
          : tokenPublishedAt as DateTime,
    ));
  }
}

@protected
@HiveType(typeId: 0)

/// @nodoc
class _$_HiveAuthData extends _HiveAuthData {
  const _$_HiveAuthData(
      {@required @HiveField(0) this.body,
      @required @HiveField(2) this.tokenPublishedAt})
      : assert(body != null),
        assert(tokenPublishedAt != null),
        super._();

  @override
  @HiveField(0)
  final HiveBody body;
  @override // @required @HiveField(1) @protected int rawExpiresAt,
  @HiveField(2)
  final DateTime tokenPublishedAt;

  @override
  String toString() {
    return 'HiveAuthData(body: $body, tokenPublishedAt: $tokenPublishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveAuthData &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.tokenPublishedAt, tokenPublishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.tokenPublishedAt, tokenPublishedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(tokenPublishedAt);

  @JsonKey(ignore: true)
  @override
  _$HiveAuthDataCopyWith<_HiveAuthData> get copyWith =>
      __$HiveAuthDataCopyWithImpl<_HiveAuthData>(this, _$identity);
}

abstract class _HiveAuthData extends HiveAuthData {
  const _HiveAuthData._() : super._();
  const factory _HiveAuthData(
      {@required @HiveField(0) HiveBody body,
      @required @HiveField(2) DateTime tokenPublishedAt}) = _$_HiveAuthData;

  @override
  @HiveField(0)
  HiveBody get body;
  @override // @required @HiveField(1) @protected int rawExpiresAt,
  @HiveField(2)
  DateTime get tokenPublishedAt;
  @override
  @JsonKey(ignore: true)
  _$HiveAuthDataCopyWith<_HiveAuthData> get copyWith;
}

/// @nodoc
class _$HiveBodyTearOff {
  const _$HiveBodyTearOff();

// ignore: unused_element
  _HiveBody call(
      {@required @HiveField(3) String clientId,
      @required @HiveField(4) String accessToken,
      @required @HiveField(5) String refreshToken,
      @required @HiveField(6) String idToken,
      @required @HiveField(7) String scope,
      @required @HiveField(8) int expiresIn,
      @required @HiveField(9) String tokenType,
      @required @HiveField(10) HiveDecodedToken decodedToken,
      @required @HiveField(11) String audience}) {
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
  @HiveField(3)
  String get clientId;
  @HiveField(4)
  String get accessToken;
  @HiveField(5)
  String get refreshToken;
  @HiveField(6)
  String get idToken;
  @HiveField(7)
  String get scope;
  @HiveField(8)
  int get expiresIn;
  @HiveField(9)
  String get tokenType;
  @HiveField(10)
  HiveDecodedToken get decodedToken;
  @HiveField(11)
  String get audience;

  @JsonKey(ignore: true)
  $HiveBodyCopyWith<HiveBody> get copyWith;
}

/// @nodoc
abstract class $HiveBodyCopyWith<$Res> {
  factory $HiveBodyCopyWith(HiveBody value, $Res Function(HiveBody) then) =
      _$HiveBodyCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(3) String clientId,
      @HiveField(4) String accessToken,
      @HiveField(5) String refreshToken,
      @HiveField(6) String idToken,
      @HiveField(7) String scope,
      @HiveField(8) int expiresIn,
      @HiveField(9) String tokenType,
      @HiveField(10) HiveDecodedToken decodedToken,
      @HiveField(11) String audience});

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
      {@HiveField(3) String clientId,
      @HiveField(4) String accessToken,
      @HiveField(5) String refreshToken,
      @HiveField(6) String idToken,
      @HiveField(7) String scope,
      @HiveField(8) int expiresIn,
      @HiveField(9) String tokenType,
      @HiveField(10) HiveDecodedToken decodedToken,
      @HiveField(11) String audience});

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
      {@required @HiveField(3) this.clientId,
      @required @HiveField(4) this.accessToken,
      @required @HiveField(5) this.refreshToken,
      @required @HiveField(6) this.idToken,
      @required @HiveField(7) this.scope,
      @required @HiveField(8) this.expiresIn,
      @required @HiveField(9) this.tokenType,
      @required @HiveField(10) this.decodedToken,
      @required @HiveField(11) this.audience})
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
  @HiveField(3)
  final String clientId;
  @override
  @HiveField(4)
  final String accessToken;
  @override
  @HiveField(5)
  final String refreshToken;
  @override
  @HiveField(6)
  final String idToken;
  @override
  @HiveField(7)
  final String scope;
  @override
  @HiveField(8)
  final int expiresIn;
  @override
  @HiveField(9)
  final String tokenType;
  @override
  @HiveField(10)
  final HiveDecodedToken decodedToken;
  @override
  @HiveField(11)
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

  @JsonKey(ignore: true)
  @override
  _$HiveBodyCopyWith<_HiveBody> get copyWith =>
      __$HiveBodyCopyWithImpl<_HiveBody>(this, _$identity);
}

abstract class _HiveBody implements HiveBody {
  const factory _HiveBody(
      {@required @HiveField(3) String clientId,
      @required @HiveField(4) String accessToken,
      @required @HiveField(5) String refreshToken,
      @required @HiveField(6) String idToken,
      @required @HiveField(7) String scope,
      @required @HiveField(8) int expiresIn,
      @required @HiveField(9) String tokenType,
      @required @HiveField(10) HiveDecodedToken decodedToken,
      @required @HiveField(11) String audience}) = _$_HiveBody;

  @override
  @HiveField(3)
  String get clientId;
  @override
  @HiveField(4)
  String get accessToken;
  @override
  @HiveField(5)
  String get refreshToken;
  @override
  @HiveField(6)
  String get idToken;
  @override
  @HiveField(7)
  String get scope;
  @override
  @HiveField(8)
  int get expiresIn;
  @override
  @HiveField(9)
  String get tokenType;
  @override
  @HiveField(10)
  HiveDecodedToken get decodedToken;
  @override
  @HiveField(11)
  String get audience;
  @override
  @JsonKey(ignore: true)
  _$HiveBodyCopyWith<_HiveBody> get copyWith;
}

/// @nodoc
class _$HiveDecodedTokenTearOff {
  const _$HiveDecodedTokenTearOff();

// ignore: unused_element
  _HiveDecodedToken call(
      {@required @HiveField(12) HiveClaims claims,
      @required @HiveField(13) HiveUser user}) {
    return _HiveDecodedToken(
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
// @required @HiveField(11) HiveEncoded encoded,
// @required @HiveField(12) HiveHeader header,
  @HiveField(12)
  HiveClaims get claims;
  @HiveField(13)
  HiveUser get user;

  @JsonKey(ignore: true)
  $HiveDecodedTokenCopyWith<HiveDecodedToken> get copyWith;
}

/// @nodoc
abstract class $HiveDecodedTokenCopyWith<$Res> {
  factory $HiveDecodedTokenCopyWith(
          HiveDecodedToken value, $Res Function(HiveDecodedToken) then) =
      _$HiveDecodedTokenCopyWithImpl<$Res>;
  $Res call({@HiveField(12) HiveClaims claims, @HiveField(13) HiveUser user});

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
    Object claims = freezed,
    Object user = freezed,
  }) {
    return _then(_value.copyWith(
      claims: claims == freezed ? _value.claims : claims as HiveClaims,
      user: user == freezed ? _value.user : user as HiveUser,
    ));
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
  $Res call({@HiveField(12) HiveClaims claims, @HiveField(13) HiveUser user});

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
    Object claims = freezed,
    Object user = freezed,
  }) {
    return _then(_HiveDecodedToken(
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
      {@required @HiveField(12) this.claims,
      @required @HiveField(13) this.user})
      : assert(claims != null),
        assert(user != null);

  @override // @required @HiveField(11) HiveEncoded encoded,
// @required @HiveField(12) HiveHeader header,
  @HiveField(12)
  final HiveClaims claims;
  @override
  @HiveField(13)
  final HiveUser user;

  @override
  String toString() {
    return 'HiveDecodedToken(claims: $claims, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveDecodedToken &&
            (identical(other.claims, claims) ||
                const DeepCollectionEquality().equals(other.claims, claims)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(claims) ^
      const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$HiveDecodedTokenCopyWith<_HiveDecodedToken> get copyWith =>
      __$HiveDecodedTokenCopyWithImpl<_HiveDecodedToken>(this, _$identity);
}

abstract class _HiveDecodedToken implements HiveDecodedToken {
  const factory _HiveDecodedToken(
      {@required @HiveField(12) HiveClaims claims,
      @required @HiveField(13) HiveUser user}) = _$_HiveDecodedToken;

  @override // @required @HiveField(11) HiveEncoded encoded,
// @required @HiveField(12) HiveHeader header,
  @HiveField(12)
  HiveClaims get claims;
  @override
  @HiveField(13)
  HiveUser get user;
  @override
  @JsonKey(ignore: true)
  _$HiveDecodedTokenCopyWith<_HiveDecodedToken> get copyWith;
}

/// @nodoc
class _$HiveClaimsTearOff {
  const _$HiveClaimsTearOff();

// ignore: unused_element
  _HiveClaims call(
      {@required
      @HiveField(14)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute}) {
    return _HiveClaims(
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HiveClaims = _$HiveClaimsTearOff();

/// @nodoc
mixin _$HiveClaims {
// @required @HiveField(15) String raw,
// @required @HiveField(16) @protected List<String> rawHttpsShirasuIoRoles,
  @HiveField(14)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;

  @JsonKey(ignore: true)
  $HiveClaimsCopyWith<HiveClaims> get copyWith;
}

/// @nodoc
abstract class $HiveClaimsCopyWith<$Res> {
  factory $HiveClaimsCopyWith(
          HiveClaims value, $Res Function(HiveClaims) then) =
      _$HiveClaimsCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(14)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute});

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
    Object httpsShirasuIoUserAttribute = freezed,
  }) {
    return _then(_value.copyWith(
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
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
      {@HiveField(14)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute});

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
    Object httpsShirasuIoUserAttribute = freezed,
  }) {
    return _then(_HiveClaims(
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
    ));
  }
}

@HiveType(typeId: 3)
@protected

/// @nodoc
class _$_HiveClaims extends _HiveClaims {
  const _$_HiveClaims(
      {@required @HiveField(14) this.httpsShirasuIoUserAttribute})
      : assert(httpsShirasuIoUserAttribute != null),
        super._();

  @override // @required @HiveField(15) String raw,
// @required @HiveField(16) @protected List<String> rawHttpsShirasuIoRoles,
  @HiveField(14)
  final HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;

  @override
  String toString() {
    return 'HiveClaims(httpsShirasuIoUserAttribute: $httpsShirasuIoUserAttribute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveClaims &&
            (identical(other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(httpsShirasuIoUserAttribute);

  @JsonKey(ignore: true)
  @override
  _$HiveClaimsCopyWith<_HiveClaims> get copyWith =>
      __$HiveClaimsCopyWithImpl<_HiveClaims>(this, _$identity);
}

abstract class _HiveClaims extends HiveClaims {
  const _HiveClaims._() : super._();
  const factory _HiveClaims(
          {@required
          @HiveField(14)
              HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute}) =
      _$_HiveClaims;

  @override // @required @HiveField(15) String raw,
// @required @HiveField(16) @protected List<String> rawHttpsShirasuIoRoles,
  @HiveField(14)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @override
  @JsonKey(ignore: true)
  _$HiveClaimsCopyWith<_HiveClaims> get copyWith;
}

/// @nodoc
class _$HiveHttpsShirasuIoUserAttributeTearOff {
  const _$HiveHttpsShirasuIoUserAttributeTearOff();

// ignore: unused_element
  _HiveHttpsShirasuIoUserAttribute call(
      {@required @HiveField(15) DateTime birthDate,
      @required @HiveField(16) String job,
      @required @HiveField(17) String country,
      @required @HiveField(18) String prefecture,
      @required @HiveField(19) String familyName,
      @required @HiveField(20) String givenName,
      @required @HiveField(21) String familyNameReading,
      @required @HiveField(22) String givenNameReading}) {
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
  @HiveField(15)
  DateTime get birthDate;
  @HiveField(16)
  String get job;
  @HiveField(17)
  String get country;
  @HiveField(18)
  String get prefecture;
  @HiveField(19)
  String get familyName;
  @HiveField(20)
  String get givenName;
  @HiveField(21)
  String get familyNameReading;
  @HiveField(22)
  String get givenNameReading;

  @JsonKey(ignore: true)
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
      {@HiveField(15) DateTime birthDate,
      @HiveField(16) String job,
      @HiveField(17) String country,
      @HiveField(18) String prefecture,
      @HiveField(19) String familyName,
      @HiveField(20) String givenName,
      @HiveField(21) String familyNameReading,
      @HiveField(22) String givenNameReading});
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
      {@HiveField(15) DateTime birthDate,
      @HiveField(16) String job,
      @HiveField(17) String country,
      @HiveField(18) String prefecture,
      @HiveField(19) String familyName,
      @HiveField(20) String givenName,
      @HiveField(21) String familyNameReading,
      @HiveField(22) String givenNameReading});
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
      {@required @HiveField(15) this.birthDate,
      @required @HiveField(16) this.job,
      @required @HiveField(17) this.country,
      @required @HiveField(18) this.prefecture,
      @required @HiveField(19) this.familyName,
      @required @HiveField(20) this.givenName,
      @required @HiveField(21) this.familyNameReading,
      @required @HiveField(22) this.givenNameReading})
      : assert(birthDate != null),
        assert(job != null),
        assert(country != null),
        assert(prefecture != null),
        assert(familyName != null),
        assert(givenName != null),
        assert(familyNameReading != null),
        assert(givenNameReading != null);

  @override
  @HiveField(15)
  final DateTime birthDate;
  @override
  @HiveField(16)
  final String job;
  @override
  @HiveField(17)
  final String country;
  @override
  @HiveField(18)
  final String prefecture;
  @override
  @HiveField(19)
  final String familyName;
  @override
  @HiveField(20)
  final String givenName;
  @override
  @HiveField(21)
  final String familyNameReading;
  @override
  @HiveField(22)
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

  @JsonKey(ignore: true)
  @override
  _$HiveHttpsShirasuIoUserAttributeCopyWith<_HiveHttpsShirasuIoUserAttribute>
      get copyWith => __$HiveHttpsShirasuIoUserAttributeCopyWithImpl<
          _HiveHttpsShirasuIoUserAttribute>(this, _$identity);
}

abstract class _HiveHttpsShirasuIoUserAttribute
    implements HiveHttpsShirasuIoUserAttribute {
  const factory _HiveHttpsShirasuIoUserAttribute(
          {@required @HiveField(15) DateTime birthDate,
          @required @HiveField(16) String job,
          @required @HiveField(17) String country,
          @required @HiveField(18) String prefecture,
          @required @HiveField(19) String familyName,
          @required @HiveField(20) String givenName,
          @required @HiveField(21) String familyNameReading,
          @required @HiveField(22) String givenNameReading}) =
      _$_HiveHttpsShirasuIoUserAttribute;

  @override
  @HiveField(15)
  DateTime get birthDate;
  @override
  @HiveField(16)
  String get job;
  @override
  @HiveField(17)
  String get country;
  @override
  @HiveField(18)
  String get prefecture;
  @override
  @HiveField(19)
  String get familyName;
  @override
  @HiveField(20)
  String get givenName;
  @override
  @HiveField(21)
  String get familyNameReading;
  @override
  @HiveField(22)
  String get givenNameReading;
  @override
  @JsonKey(ignore: true)
  _$HiveHttpsShirasuIoUserAttributeCopyWith<_HiveHttpsShirasuIoUserAttribute>
      get copyWith;
}

/// @nodoc
class _$HiveUserTearOff {
  const _$HiveUserTearOff();

// ignore: unused_element
  _HiveUser call(
      {@required
      @HiveField(23)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required
      @HiveField(24)
          String nickname,
      @required
      @HiveField(25)
          String name,
      @required
      @HiveField(26)
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
          String sub}) {
    return _HiveUser(
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute,
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
// @required
// @HiveField(49)
// @protected
//     List<String> rawHttpsShirasuIoRoles,
  @HiveField(23)
  HiveHttpsShirasuIoUserAttribute
      get httpsShirasuIoUserAttribute; // @required @HiveField(51) String httpsShirasuIoCustomerId,
// @protected
// @required
// @HiveField(52)
//     List<dynamic> rawHttpsShirasuIoDistributeds,
// @protected
// @required
// @HiveField(53)
//     List<dynamic> rawHttpsShirasuIoTenants,
// @required @HiveField(54)
// String givenName,
// @required @HiveField(55)
// String familyName,
  @HiveField(24)
  String get nickname;
  @HiveField(25)
  String get name;
  @HiveField(26)
  String get picture; // @required @HiveField(27)
// String locale,
  @HiveField(27)
  DateTime get updatedAt;
  @HiveField(28)
  String get email;
  @HiveField(29)
  bool get emailVerified;
  @HiveField(30)
  String get sub;

  @JsonKey(ignore: true)
  $HiveUserCopyWith<HiveUser> get copyWith;
}

/// @nodoc
abstract class $HiveUserCopyWith<$Res> {
  factory $HiveUserCopyWith(HiveUser value, $Res Function(HiveUser) then) =
      _$HiveUserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(23)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @HiveField(24)
          String nickname,
      @HiveField(25)
          String name,
      @HiveField(26)
          String picture,
      @HiveField(27)
          DateTime updatedAt,
      @HiveField(28)
          String email,
      @HiveField(29)
          bool emailVerified,
      @HiveField(30)
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
    Object httpsShirasuIoUserAttribute = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object sub = freezed,
  }) {
    return _then(_value.copyWith(
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
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
      {@HiveField(23)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @HiveField(24)
          String nickname,
      @HiveField(25)
          String name,
      @HiveField(26)
          String picture,
      @HiveField(27)
          DateTime updatedAt,
      @HiveField(28)
          String email,
      @HiveField(29)
          bool emailVerified,
      @HiveField(30)
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
    Object httpsShirasuIoUserAttribute = freezed,
    Object nickname = freezed,
    Object name = freezed,
    Object picture = freezed,
    Object updatedAt = freezed,
    Object email = freezed,
    Object emailVerified = freezed,
    Object sub = freezed,
  }) {
    return _then(_HiveUser(
      httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute == freezed
          ? _value.httpsShirasuIoUserAttribute
          : httpsShirasuIoUserAttribute as HiveHttpsShirasuIoUserAttribute,
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
      {@required @HiveField(23) this.httpsShirasuIoUserAttribute,
      @required @HiveField(24) this.nickname,
      @required @HiveField(25) this.name,
      @required @HiveField(26) this.picture,
      @required @HiveField(27) this.updatedAt,
      @required @HiveField(28) this.email,
      @required @HiveField(29) this.emailVerified,
      @required @HiveField(30) this.sub})
      : assert(httpsShirasuIoUserAttribute != null),
        assert(nickname != null),
        assert(name != null),
        assert(picture != null),
        assert(updatedAt != null),
        assert(email != null),
        assert(emailVerified != null),
        assert(sub != null),
        super._();

  @override // @required
// @HiveField(49)
// @protected
//     List<String> rawHttpsShirasuIoRoles,
  @HiveField(23)
  final HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @override // @required @HiveField(51) String httpsShirasuIoCustomerId,
// @protected
// @required
// @HiveField(52)
//     List<dynamic> rawHttpsShirasuIoDistributeds,
// @protected
// @required
// @HiveField(53)
//     List<dynamic> rawHttpsShirasuIoTenants,
// @required @HiveField(54)
// String givenName,
// @required @HiveField(55)
// String familyName,
  @HiveField(24)
  final String nickname;
  @override
  @HiveField(25)
  final String name;
  @override
  @HiveField(26)
  final String picture;
  @override // @required @HiveField(27)
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
  final String sub;

  @override
  String toString() {
    return 'HiveUser(httpsShirasuIoUserAttribute: $httpsShirasuIoUserAttribute, nickname: $nickname, name: $name, picture: $picture, updatedAt: $updatedAt, email: $email, emailVerified: $emailVerified, sub: $sub)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HiveUser &&
            (identical(other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute) ||
                const DeepCollectionEquality().equals(
                    other.httpsShirasuIoUserAttribute,
                    httpsShirasuIoUserAttribute)) &&
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
            (identical(other.sub, sub) ||
                const DeepCollectionEquality().equals(other.sub, sub)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(httpsShirasuIoUserAttribute) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(picture) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(emailVerified) ^
      const DeepCollectionEquality().hash(sub);

  @JsonKey(ignore: true)
  @override
  _$HiveUserCopyWith<_HiveUser> get copyWith =>
      __$HiveUserCopyWithImpl<_HiveUser>(this, _$identity);
}

abstract class _HiveUser extends HiveUser {
  const _HiveUser._() : super._();
  const factory _HiveUser(
      {@required
      @HiveField(23)
          HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
      @required
      @HiveField(24)
          String nickname,
      @required
      @HiveField(25)
          String name,
      @required
      @HiveField(26)
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
          String sub}) = _$_HiveUser;

  @override // @required
// @HiveField(49)
// @protected
//     List<String> rawHttpsShirasuIoRoles,
  @HiveField(23)
  HiveHttpsShirasuIoUserAttribute get httpsShirasuIoUserAttribute;
  @override // @required @HiveField(51) String httpsShirasuIoCustomerId,
// @protected
// @required
// @HiveField(52)
//     List<dynamic> rawHttpsShirasuIoDistributeds,
// @protected
// @required
// @HiveField(53)
//     List<dynamic> rawHttpsShirasuIoTenants,
// @required @HiveField(54)
// String givenName,
// @required @HiveField(55)
// String familyName,
  @HiveField(24)
  String get nickname;
  @override
  @HiveField(25)
  String get name;
  @override
  @HiveField(26)
  String get picture;
  @override // @required @HiveField(27)
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
  String get sub;
  @override
  @JsonKey(ignore: true)
  _$HiveUserCopyWith<_HiveUser> get copyWith;
}
