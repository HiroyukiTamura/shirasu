import 'dart:math';

import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:shirasu/util.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

/// hive model for [AuthData]
@freezed
abstract class HiveAuthData with _$HiveAuthData {
  @protected
  @HiveType(typeId: 0)
  const factory HiveAuthData({
    @required @HiveField(0) HiveBody body,
    @required @HiveField(1) DateTime expiresAt,
    // @required @HiveField(2) DateTime tokenPublishedAt,
  }) = _HiveAuthData;

  factory HiveAuthData.parse(AuthData authData) => HiveAuthData(
        body: HiveBody.parse(authData.body),
        expiresAt: DateTime.fromMillisecondsSinceEpoch(authData.expiresAt * 1000),
        // tokenPublishedAt: DateTime.now(),
      );

  factory HiveAuthData.fromDioLogin({
    @required LoginResult loginResult,
  }) {
    final body = HiveBody.fromDioLogin(loginResult);
    return HiveAuthData(
        body: body,
        expiresAt: calcExpiresAt(body),
        // rawExpiresAt: authData.expiresAt,
        // tokenPublishedAt: DateTime.now(),
      );
  }

  const HiveAuthData._();

  bool get isExpired => expiresAt < DateTime.now();

  /// @ref https://github.com/auth0/auth0-spa-js/blob/041ce0aff5c94beff6d10b98c32441cfbc5c905a/src/cache.ts#L68
  static DateTime calcExpiresAt(HiveBody body) {
    final expiresInTime =
        DateTime.now().millisecondsSinceEpoch / 1000 + body.expiresIn;
    final epochMills = max(expiresInTime.toInt(), body.decodedToken.claims.exp) * 1000;
    return DateTime.fromMillisecondsSinceEpoch(epochMills);
  }

  HiveAuthData copyWithEditResult(UserWithAttribute attr) =>
      copyWith.body.decodedToken(
        user: body.decodedToken.user._copyWithEditResult(attr),
      );
}

/// hive model for [Body]
@freezed
abstract class HiveBody with _$HiveBody {
  @protected
  @HiveType(typeId: 1)
  const factory HiveBody({
    @required @HiveField(3) String clientId,
    @required @HiveField(4) String accessToken,
    @required @HiveField(5) String refreshToken,
    @required @HiveField(6) String idToken,
    @required @HiveField(7) String scope,
    @required @HiveField(8) int expiresIn,
    @required @HiveField(9) String tokenType,
    @required @HiveField(10) HiveDecodedToken decodedToken,
    @required @HiveField(11) String audience,
  }) = _HiveBody;

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

  factory HiveBody.fromDioLogin(LoginResult source) {
    final jwt = JwtDecoder.decode(source.idToken);
    final user = User.fromJson(jwt);

    return HiveBody(
      clientId: Util.AUTH0_CLIENT_ID,
      accessToken: source.accessToken,
      refreshToken: source.refreshToken,
      idToken: source.idToken,
      scope: source.scope,
      expiresIn: source.expiresIn,
      tokenType: source.tokenType,
      decodedToken: HiveDecodedToken(
        user: HiveUser.parse(user),
        claims: HiveClaims.fromJson(jwt),
      ),
      audience: 'default',
    );
  }
}

/// hive model for [DecodedToken]
@freezed
abstract class HiveDecodedToken with _$HiveDecodedToken {
  @HiveType(typeId: 2)
  @protected
  const factory HiveDecodedToken({
    // @required @HiveField(11) HiveEncoded encoded,
    // @required @HiveField(12) HiveHeader header,
    @required @HiveField(12) HiveClaims claims,
    @required @HiveField(13) HiveUser user,
  }) = _HiveDecodedToken;

  factory HiveDecodedToken.parse(DecodedToken decodedToken) => HiveDecodedToken(
        // encoded: HiveEncoded.parse(decodedToken.encoded),
        // header: HiveHeader.parse(decodedToken.header),
        claims: HiveClaims.parse(decodedToken.claims),
        user: HiveUser.parse(decodedToken.user),
      );
}

/// hive model for [Claims]
@freezed
abstract class HiveClaims implements _$HiveClaims {
  @HiveType(typeId: 3)
  @protected
  const factory HiveClaims({
    // @required
    // @HiveField(14)
    //     HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
    // @required @HiveField(15) String raw,
    // @required @HiveField(16) @protected List<String> rawHttpsShirasuIoRoles,
    // @required @HiveField(18) String httpsShirasuIoCustomerId,
    // @required
    // @HiveField(19)
    // @protected
    //     List<dynamic> rawHttpsShirasuIoDistributeds,
    // @required @HiveField(20) @protected List<dynamic> rawHttpsShirasuIoTenants,
    // @HiveField(21) String givenName,
    // @HiveField(22) String familyName,
    // @required @HiveField(23) String nickname,
    // @required @HiveField(24) String name,
    // @required @HiveField(25) String picture,
    // @HiveField(26) String locale,
    // @required @HiveField(27) DateTime updatedAt,
    // @required @HiveField(28) String email,
    // @required @HiveField(29) bool emailVerified,
    @required @HiveField(30) String iss,
    // @required @HiveField(31) String sub,
    @required @HiveField(32) String aud,
    @required @HiveField(33) int iat,
    @required @HiveField(34) int exp,
  }) = _HiveClaims;

  factory HiveClaims.parse(Claims claims) => HiveClaims(
        // raw: claims.raw,
        // rawHttpsShirasuIoRoles: claims.httpsShirasuIoRoles,
        // httpsShirasuIoUserAttribute: HiveHttpsShirasuIoUserAttribute.parse(
        //     claims.httpsShirasuIoUserAttribute),
        // httpsShirasuIoCustomerId: claims.httpsShirasuIoCustomerId,
        // rawHttpsShirasuIoDistributeds: claims.httpsShirasuIoDistributeds,
        // rawHttpsShirasuIoTenants: claims.httpsShirasuIoTenants,
        // givenName: claims.givenName,
        // familyName: claims.familyName,
        // nickname: claims.nickname,
        // name: claims.name,
        // picture: claims.picture,
        // locale: claims.locale,
        // updatedAt: claims.updatedAt,
        // email: claims.email,
        // emailVerified: claims.emailVerified,
        iss: claims.iss,
        // sub: claims.sub,
        aud: claims.aud,
        iat: claims.iat,
        exp: claims.exp,
        // nonce: claims.nonce,
      );

  factory HiveClaims.fromJson(Map<String, dynamic> json) =>
      _$HiveClaimsFromJson(json);

// const HiveClaims._();

// UnmodifiableListView<String> get httpsShirasuIoRoles =>
//     rawHttpsShirasuIoRoles.toUnmodifiable();
//
// UnmodifiableListView<dynamic> get httpsShirasuIoDistributeds =>
//     rawHttpsShirasuIoDistributeds.toUnmodifiable();
//
// UnmodifiableListView<dynamic> get httpsShirasuIoTenants =>
//     rawHttpsShirasuIoTenants.toUnmodifiable();
}

/// hive model for [HttpsShirasuIoUserAttribute]
@freezed
abstract class HiveHttpsShirasuIoUserAttribute
    with _$HiveHttpsShirasuIoUserAttribute {
  @HiveType(typeId: 4)
  @protected
  const factory HiveHttpsShirasuIoUserAttribute({
    @required @HiveField(15) DateTime birthDate,
    @required @HiveField(16) String job,
    @required @HiveField(17) String country,
    @required @HiveField(18) String prefecture,
    @required @HiveField(19) String familyName,
    @required @HiveField(20) String givenName,
    @required @HiveField(21) String familyNameReading,
    @required @HiveField(22) String givenNameReading,
  }) = _HiveHttpsShirasuIoUserAttribute;

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
}

// /// hive model for [HiveEncoded]
// @freezed
// abstract class HiveEncoded with _$HiveEncoded {
//   @protected
//   @HiveType(typeId: 5)
//   const factory HiveEncoded({
//     @required @HiveField(43) String header,
//     @required @HiveField(44) String payload,
//     @required @HiveField(45) String signature,
//   }) = _HiveEncoded;
//
//   factory HiveEncoded.parse(Encoded encoded) => HiveEncoded(
//         header: encoded.header,
//         payload: encoded.payload,
//         signature: encoded.signature,
//       );
// }

// /// hive model for [Header]
// @freezed
// abstract class HiveHeader with _$HiveHeader {
//   /// don't use default constrictor manually
//   @HiveType(typeId: 6)
//   @protected
//   const factory HiveHeader({
//     @required @HiveField(46) String alg,
//     @required @HiveField(47) String typ,
//     @required @HiveField(48) String kid,
//   }) = _HiveHeader;
//
//   factory HiveHeader.parse(Header header) => HiveHeader(
//         alg: header.alg,
//         typ: header.typ,
//         kid: header.kid,
//       );
// }

/// hive model for [User]
@freezed
abstract class HiveUser with _$HiveUser {
  @HiveType(typeId: 7)
  @protected
  const factory HiveUser({
    // @required
    // @HiveField(49)
    // @protected
    //     List<String> rawHttpsShirasuIoRoles,
    @required
    @HiveField(23)
        HiveHttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
    // @required @HiveField(51) String httpsShirasuIoCustomerId,
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
    @required @HiveField(24) String nickname,
    @required @HiveField(25) String name,
    @required @HiveField(26) String picture,

    // @required @HiveField(27)
    // String locale,
    @required @HiveField(27) DateTime updatedAt,
    @required @HiveField(28) String email,
    @required @HiveField(29) bool emailVerified,
    @required @HiveField(30) String sub,
  }) = _HiveUser;

  factory HiveUser.parse(User user) => HiveUser(
        // rawHttpsShirasuIoRoles: user.httpsShirasuIoRoles,
        httpsShirasuIoUserAttribute: HiveHttpsShirasuIoUserAttribute.parse(
            user.httpsShirasuIoUserAttribute),
        // httpsShirasuIoCustomerId: user.httpsShirasuIoCustomerId,
        // rawHttpsShirasuIoDistributeds: user.httpsShirasuIoDistributeds,
        // rawHttpsShirasuIoTenants: user.httpsShirasuIoTenants,
        nickname: user.nickname,
        name: user.name,
        picture: user.picture,
        updatedAt: user.updatedAt,
        // locale: user.locale,
        email: user.email,
        emailVerified: user.emailVerified,
        sub: user.sub,
      );

  const HiveUser._();

  HiveUser _copyWithEditResult(UserWithAttribute data) => copyWith(
        // rawHttpsShirasuIoRoles: data.user.roles,
        httpsShirasuIoUserAttribute: httpsShirasuIoUserAttribute.copyWith(
          birthDate: data.attr.birthDate,
          job: data.attr.job,
          country: data.attr.country,
          prefecture: data.attr.prefecture.toString(),
        ),
        updatedAt: data.user.updatedAt,
      );

// UnmodifiableListView<String> get httpsShirasuIoRoles =>
//     rawHttpsShirasuIoRoles.toUnmodifiable();

// UnmodifiableListView<dynamic> get httpsShirasuIoDistributeds =>
//     rawHttpsShirasuIoDistributeds.toUnmodifiable();

// UnmodifiableListView<dynamic> get httpsShirasuIoTenants =>
//     rawHttpsShirasuIoTenants.toUnmodifiable();
}
