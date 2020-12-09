import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/auth_data.dart';

part 'auth_data.g.dart';

/// hive model for [AuthData]
@HiveType(typeId: 0)
class HiveAuthData extends HiveObject {
  /// don't use default constrictor manually
  HiveAuthData({
    @required this.body,
    @required this.expiresAt,
  });

  factory HiveAuthData.parse(AuthData authData) => HiveAuthData(
        body: HiveBody.parse(authData.body),
        expiresAt: authData.expiresAt,
      );

  @HiveField(0)
  HiveBody body;
  @HiveField(1)
  int expiresAt;
}

/// hive model for [Body]
@HiveType(typeId: 1)
class HiveBody extends HiveObject {
  /// don't use default constrictor manually
  HiveBody({
    @required this.clientId,
    @required this.accessToken,
    @required this.refreshToken,
    @required this.idToken,
    @required this.scope,
    @required this.expiresIn,
    @required this.tokenType,
    @required this.decodedToken,
    @required this.audience,
  });

  factory HiveBody.parse(Body body) => HiveBody(
        clientId: body.clientId,
        accessToken: body.accessToken,
        refreshToken: body.refreshToken,
        idToken: body.idToken,
        scope: body.scope,
        expiresIn: body.expiresIn,
        tokenType: body.tokenType,
        decodedToken: HiveDecodedToken.parse(body.decodedToken),
        audience: body.audience,
      );

  @HiveField(2)
  String clientId;
  @HiveField(3)
  String accessToken;
  @HiveField(4)
  String refreshToken;
  @HiveField(5)
  String idToken;
  @HiveField(6)
  String scope;
  @HiveField(7)
  int expiresIn;
  @HiveField(8)
  String tokenType;
  @HiveField(9)
  HiveDecodedToken decodedToken;
  @HiveField(10)
  String audience;
}

/// hive model for [DecodedToken]
@HiveType(typeId: 2)
class HiveDecodedToken extends HiveObject {
  /// don't use default constrictor manually
  HiveDecodedToken({
    @required this.encoded,
    @required this.header,
    @required this.claims,
    @required this.user,
  });

  factory HiveDecodedToken.parse(DecodedToken decodedToken) =>
      HiveDecodedToken(
        encoded: HiveEncoded.parse(decodedToken.encoded),
        header: HiveHeader.parse(decodedToken.header),
        claims: HiveClaims.parse(decodedToken.claims),
        user: HiveUser.parse(decodedToken.user),
      );

  @HiveField(11)
  HiveEncoded encoded;
  @HiveField(12)
  HiveHeader header;
  @HiveField(13)
  HiveClaims claims;
  @HiveField(14)
  HiveUser user;
}

/// hive model for [Claims]
@HiveType(typeId: 3)
class HiveClaims extends HiveObject {
  /// don't use default constrictor manually
  HiveClaims({
    @required this.raw,
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
    @required this.nonce,
  });

  factory HiveClaims.parse(Claims claims) => HiveClaims(
        raw: claims.raw,
        httpsShirasuIoRoles: claims.httpsShirasuIoRoles,
        httpsShirasuIoUserAttribute: HiveHttpsShirasuIoUserAttribute.parse(
            claims.httpsShirasuIoUserAttribute),
        httpsShirasuIoCustomerId: claims.httpsShirasuIoCustomerId,
        httpsShirasuIoDistributeds: claims.httpsShirasuIoDistributeds,
        httpsShirasuIoTenants: claims.httpsShirasuIoTenants,
        givenName: claims.givenName,
        familyName: claims.familyName,
        nickname: claims.nickname,
        name: claims.name,
        picture: claims.picture,
        locale: claims.locale,
        updatedAt: claims.updatedAt,
        email: claims.email,
        emailVerified: claims.emailVerified,
        iss: claims.iss,
        sub: claims.sub,
        aud: claims.aud,
        iat: claims.iat,
        exp: claims.exp,
        nonce: claims.nonce,
      );

  @HiveField(15)
  String raw;
  @HiveField(16)
  List<String> httpsShirasuIoRoles;
  @HiveField(17)
  HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @HiveField(18)
  String httpsShirasuIoCustomerId;
  @HiveField(19)
  List<dynamic> httpsShirasuIoDistributeds;
  @HiveField(20)
  List<dynamic> httpsShirasuIoTenants;
  @HiveField(21)
  String givenName;
  @HiveField(22)
  String familyName;
  @HiveField(23)
  String nickname;
  @HiveField(24)
  String name;
  @HiveField(25)
  String picture;
  @HiveField(26)
  String locale;
  @HiveField(27)
  DateTime updatedAt;
  @HiveField(28)
  String email;
  @HiveField(29)
  bool emailVerified;
  @HiveField(30)
  String iss;
  @HiveField(31)
  String sub;
  @HiveField(32)
  String aud;
  @HiveField(33)
  int iat;
  @HiveField(34)
  int exp;
  @HiveField(35)
  String nonce;
}

/// hive model for [HttpsShirasuIoUserAttribute]
@HiveType(typeId: 4)
class HiveHttpsShirasuIoUserAttribute extends HiveObject {
  /// don't use default constrictor manually
  HiveHttpsShirasuIoUserAttribute({
    @required this.birthDate,
    @required this.job,
    @required this.country,
    @required this.prefecture,
    @required this.familyName,
    @required this.familyNameReading,
    @required this.givenName,
    @required this.givenNameReading,
  });

  factory HiveHttpsShirasuIoUserAttribute.parse(
          HttpsShirasuIoUserAttribute attribute) =>
      HiveHttpsShirasuIoUserAttribute(
        birthDate: attribute.birthDate,
        job: attribute.job,
        country: attribute.country,
        prefecture: attribute.prefecture,
        familyName: attribute.familyName,
        givenName: attribute.givenName,
        familyNameReading: attribute.familyNameReading,
        givenNameReading: attribute.givenNameReading,
      );

  @HiveField(36)
  DateTime birthDate;
  @HiveField(37)
  String job;
  @HiveField(38)
  String country;
  @HiveField(39)
  String prefecture;
  @HiveField(40)
  String familyName;
  @HiveField(41)
  String givenName;
  @HiveField(42)
  String familyNameReading;
  @HiveField(43)
  String givenNameReading;
}

/// hive model for [HiveEncoded]
@HiveType(typeId: 5)
class HiveEncoded extends HiveObject {
  /// don't use default constrictor manually
  HiveEncoded({
    @required this.header,
    @required this.payload,
    @required this.signature,
  });

  factory HiveEncoded.parse(Encoded encoded) => HiveEncoded(
        header: encoded.header,
        payload: encoded.payload,
        signature: encoded.signature,
      );

  @HiveField(43)
  String header;
  @HiveField(44)
  String payload;
  @HiveField(45)
  String signature;
}

/// hive model for [Header]
@HiveType(typeId: 6)
class HiveHeader extends HiveObject {
  /// don't use default constrictor manually
  HiveHeader({
    @required this.alg,
    @required this.typ,
    @required this.kid,
  });

  factory HiveHeader.parse(Header header) => HiveHeader(
        alg: header.alg,
        typ: header.typ,
        kid: header.kid,
      );

  @HiveField(46)
  String alg;
  @HiveField(47)
  String typ;
  @HiveField(48)
  String kid;
}

/// hive model for [User]
@HiveType(typeId: 7)
class HiveUser extends HiveObject {
  /// don't use default constrictor manually
  HiveUser({
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
    @required this.sub,
  });

  factory HiveUser.parse(User user) => HiveUser(
      httpsShirasuIoRoles: user.httpsShirasuIoRoles,
      httpsShirasuIoUserAttribute: HiveHttpsShirasuIoUserAttribute.parse(
          user.httpsShirasuIoUserAttribute),
      httpsShirasuIoCustomerId: user.httpsShirasuIoCustomerId,
      httpsShirasuIoDistributeds: user.httpsShirasuIoDistributeds,
      httpsShirasuIoTenants: user.httpsShirasuIoTenants,
      givenName: user.givenName,
      familyName: user.familyName,
      nickname: user.nickname,
      name: user.name,
      picture: user.picture,
      locale: user.locale,
      updatedAt: user.updatedAt,
      email: user.email,
      emailVerified: user.emailVerified,
      sub: user.sub,
    );

  @HiveField(49)
  List<String> httpsShirasuIoRoles;
  @HiveField(50)
  HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute;
  @HiveField(51)
  String httpsShirasuIoCustomerId;
  @HiveField(52)
  List<dynamic> httpsShirasuIoDistributeds;
  @HiveField(53)
  List<dynamic> httpsShirasuIoTenants;
  @HiveField(54)
  String givenName;
  @HiveField(55)
  String familyName;
  @HiveField(56)
  String nickname;
  @HiveField(57)
  String name;
  @HiveField(58)
  String picture;
  @HiveField(59)
  String locale;
  @HiveField(60)
  DateTime updatedAt;
  @HiveField(61)
  String email;
  @HiveField(62)
  bool emailVerified;
  @HiveField(63)
  String sub;
}
