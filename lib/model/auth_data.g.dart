// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthData _$_$_AuthDataFromJson(Map<String, dynamic> json) {
  return _$_AuthData(
    body: json['body'] == null
        ? null
        : Body.fromJson(json['body'] as Map<String, dynamic>),
    expiresAt: json['expiresAt'] as int,
  );
}

Map<String, dynamic> _$_$_AuthDataToJson(_$_AuthData instance) =>
    <String, dynamic>{
      'body': instance.body,
      'expiresAt': instance.expiresAt,
    };

_$_Body _$_$_BodyFromJson(Map<String, dynamic> json) {
  return _$_Body(
    clientId: json['clientId'] as String,
    accessToken: json['accessToken'] as String,
    refreshToken: json['refreshToken'] as String,
    idToken: json['idToken'] as String,
    scope: json['scope'] as String,
    expiresIn: json['expiresIn'] as int,
    tokenType: json['tokenType'] as String,
    decodedToken: json['decodedToken'] == null
        ? null
        : DecodedToken.fromJson(json['decodedToken'] as Map<String, dynamic>),
    audience: json['audience'] as String,
  );
}

Map<String, dynamic> _$_$_BodyToJson(_$_Body instance) => <String, dynamic>{
      'clientId': instance.clientId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'idToken': instance.idToken,
      'scope': instance.scope,
      'expiresIn': instance.expiresIn,
      'tokenType': instance.tokenType,
      'decodedToken': instance.decodedToken,
      'audience': instance.audience,
    };

_$_DecodedToken _$_$_DecodedTokenFromJson(Map<String, dynamic> json) {
  return _$_DecodedToken(
    encoded: json['encoded'] == null
        ? null
        : Encoded.fromJson(json['encoded'] as Map<String, dynamic>),
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    claims: json['claims'] == null
        ? null
        : Claims.fromJson(json['claims'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_DecodedTokenToJson(_$_DecodedToken instance) =>
    <String, dynamic>{
      'encoded': instance.encoded,
      'header': instance.header,
      'claims': instance.claims,
      'user': instance.user,
    };

_$_Claims _$_$_ClaimsFromJson(Map<String, dynamic> json) {
  return _$_Claims(
    raw: json['raw'] as String,
    httpsShirasuIoRoles: (json['httpsShirasuIoRoles'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    httpsShirasuIoUserAttribute: json['httpsShirasuIoUserAttribute'] == null
        ? null
        : HttpsShirasuIoUserAttribute.fromJson(
            json['httpsShirasuIoUserAttribute'] as Map<String, dynamic>),
    httpsShirasuIoCustomerId: json['httpsShirasuIoCustomerId'] as String,
    httpsShirasuIoDistributeds: json['httpsShirasuIoDistributeds'] as List,
    httpsShirasuIoTenants: json['httpsShirasuIoTenants'] as List,
    givenName: json['givenName'] as String,
    familyName: json['familyName'] as String,
    nickname: json['nickname'] as String,
    name: json['name'] as String,
    picture: json['picture'] as String,
    locale: json['locale'] as String,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    email: json['email'] as String,
    emailVerified: json['emailVerified'] as bool,
    iss: json['iss'] as String,
    sub: json['sub'] as String,
    aud: json['aud'] as String,
    iat: json['iat'] as int,
    exp: json['exp'] as int,
    nonce: json['nonce'] as String,
  );
}

Map<String, dynamic> _$_$_ClaimsToJson(_$_Claims instance) => <String, dynamic>{
      'raw': instance.raw,
      'httpsShirasuIoRoles': instance.httpsShirasuIoRoles,
      'httpsShirasuIoUserAttribute': instance.httpsShirasuIoUserAttribute,
      'httpsShirasuIoCustomerId': instance.httpsShirasuIoCustomerId,
      'httpsShirasuIoDistributeds': instance.httpsShirasuIoDistributeds,
      'httpsShirasuIoTenants': instance.httpsShirasuIoTenants,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'nickname': instance.nickname,
      'name': instance.name,
      'picture': instance.picture,
      'locale': instance.locale,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'iss': instance.iss,
      'sub': instance.sub,
      'aud': instance.aud,
      'iat': instance.iat,
      'exp': instance.exp,
      'nonce': instance.nonce,
    };

_$_HttpsShirasuIoUserAttribute _$_$_HttpsShirasuIoUserAttributeFromJson(
    Map<String, dynamic> json) {
  return _$_HttpsShirasuIoUserAttribute(
    birthDate: json['birthDate'] == null
        ? null
        : DateTime.parse(json['birthDate'] as String),
    job: json['job'] as String,
    countryNonFixedCase: json['country'] as String,
    prefecture: json['prefecture'] as String,
    familyName: json['familyName'] as String,
    givenName: json['givenName'] as String,
    familyNameReading: json['familyNameReading'] as String,
    givenNameReading: json['givenNameReading'] as String,
  );
}

Map<String, dynamic> _$_$_HttpsShirasuIoUserAttributeToJson(
        _$_HttpsShirasuIoUserAttribute instance) =>
    <String, dynamic>{
      'birthDate': instance.birthDate?.toIso8601String(),
      'job': instance.job,
      'country': instance.countryNonFixedCase,
      'prefecture': instance.prefecture,
      'familyName': instance.familyName,
      'givenName': instance.givenName,
      'familyNameReading': instance.familyNameReading,
      'givenNameReading': instance.givenNameReading,
    };

_$_Encoded _$_$_EncodedFromJson(Map<String, dynamic> json) {
  return _$_Encoded(
    header: json['header'] as String,
    payload: json['payload'] as String,
    signature: json['signature'] as String,
  );
}

Map<String, dynamic> _$_$_EncodedToJson(_$_Encoded instance) =>
    <String, dynamic>{
      'header': instance.header,
      'payload': instance.payload,
      'signature': instance.signature,
    };

_$_Header _$_$_HeaderFromJson(Map<String, dynamic> json) {
  return _$_Header(
    alg: json['alg'] as String,
    typ: json['typ'] as String,
    kid: json['kid'] as String,
  );
}

Map<String, dynamic> _$_$_HeaderToJson(_$_Header instance) => <String, dynamic>{
      'alg': instance.alg,
      'typ': instance.typ,
      'kid': instance.kid,
    };

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    httpsShirasuIoRoles: (json['httpsShirasuIoRoles'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    httpsShirasuIoUserAttribute: json['httpsShirasuIoUserAttribute'] == null
        ? null
        : HttpsShirasuIoUserAttribute.fromJson(
            json['httpsShirasuIoUserAttribute'] as Map<String, dynamic>),
    httpsShirasuIoCustomerId: json['httpsShirasuIoCustomerId'] as String,
    httpsShirasuIoDistributeds: json['httpsShirasuIoDistributeds'] as List,
    httpsShirasuIoTenants: json['httpsShirasuIoTenants'] as List,
    givenName: json['givenName'] as String,
    familyName: json['familyName'] as String,
    nickname: json['nickname'] as String,
    name: json['name'] as String,
    picture: json['picture'] as String,
    locale: json['locale'] as String,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    email: json['email'] as String,
    emailVerified: json['emailVerified'] as bool,
    sub: json['sub'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'httpsShirasuIoRoles': instance.httpsShirasuIoRoles,
      'httpsShirasuIoUserAttribute': instance.httpsShirasuIoUserAttribute,
      'httpsShirasuIoCustomerId': instance.httpsShirasuIoCustomerId,
      'httpsShirasuIoDistributeds': instance.httpsShirasuIoDistributeds,
      'httpsShirasuIoTenants': instance.httpsShirasuIoTenants,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
      'nickname': instance.nickname,
      'name': instance.name,
      'picture': instance.picture,
      'locale': instance.locale,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'sub': instance.sub,
    };
