import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.freezed.dart';
part 'auth_data.g.dart';

@freezed
abstract class AuthData with _$AuthData {
  const factory AuthData({
    @required Body body,
    @Deprecated('this value do not means expiration time of auth token. use body.expires_in') @required int expiresAt,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}

@freezed
abstract class Body with _$Body {
  const factory Body({
    @JsonKey(name: 'client_id') @required String clientId,
    @JsonKey(name: 'access_token') @required String accessToken,
    @JsonKey(name: 'refresh_token') @required String refreshToken,
    @JsonKey(name: 'id_token') @required String idToken,
    @required String scope,
    @JsonKey(name: 'expires_in') @required int expiresIn,
    @JsonKey(name: 'token_type') @required String tokenType,
    @required DecodedToken decodedToken,
    @required String audience,
  }) = _Body;

  factory Body.fromJson(Map<String, dynamic> json) =>
      _$BodyFromJson(json);
}

@freezed
abstract class DecodedToken with _$DecodedToken {
  const factory DecodedToken({
    @required Encoded encoded,
    @required Header header,
    @required Claims claims,
    @required User user,
  }) = _DecodedToken;

  factory DecodedToken.fromJson(Map<String, dynamic> json) =>
      _$DecodedTokenFromJson(json);
}

@freezed
abstract class Claims with _$Claims {
  const factory Claims({
    @JsonKey(name: '__raw') @required String raw,
    @JsonKey(name: 'https://shirasu.io/roles') @required @protected List<String> rawHttpsShirasuIoRoles,
    @JsonKey(name: 'https://shirasu.io/userAttribute') @required HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
    @JsonKey(name: 'https://shirasu.io/customerId') @required String httpsShirasuIoCustomerId,
    @JsonKey(name: 'https://shirasu.io/distributeds') @required @protected List<dynamic> rawHttpsShirasuIoDistributeds,
    @JsonKey(name: 'https://shirasu.io/tenants') @required @protected List<dynamic> rawHttpsShirasuIoTenants,
    // @JsonKey(name: 'given_name') @required String givenName,
    // @JsonKey(name: 'family_name') @required String familyName,
    @required String nickname,
    @required String name,
    @required String picture,
    // @required String locale,
    @JsonKey(name: 'updated_at') @required DateTime updatedAt,
    @required String email,
    @JsonKey(name: 'email_verified') @required bool emailVerified,
    @required String iss,
    @required String sub,
    @required String aud,
    @required int iat,
    @required int exp,
    // @required String nonce,
  }) = _Claims;

  factory Claims.fromJson(Map<String, dynamic> json) =>
      _$ClaimsFromJson(json);

  const Claims._();

  // UnmodifiableListView<String> get httpsShirasuIoRoles => rawHttpsShirasuIoRoles.toUnmodifiable();

  // UnmodifiableListView<dynamic> get httpsShirasuIoDistributeds => rawHttpsShirasuIoDistributeds.toUnmodifiable();

  // UnmodifiableListView<dynamic> get httpsShirasuIoTenants => rawHttpsShirasuIoTenants.toUnmodifiable();
}

@freezed
abstract class HttpsShirasuIoUserAttribute implements _$HttpsShirasuIoUserAttribute {
  const factory HttpsShirasuIoUserAttribute({
    @required DateTime birthDate,
    @required String job,
    @required @JsonKey(name: 'country') @protected String rawCountry,
    @required String prefecture,
    @required String familyName,
    @required String givenName,
    @required String familyNameReading,
    @required String givenNameReading,
  }) = _HttpsShirasuIoUserAttribute;

  const HttpsShirasuIoUserAttribute._();

  factory HttpsShirasuIoUserAttribute.fromJson(Map<String, dynamic> json) =>
      _$HttpsShirasuIoUserAttributeFromJson(json);

  String get country => rawCountry.toUpperCase();
}

@freezed
abstract class Encoded with _$Encoded {
  const factory Encoded({
    @required String header,
    @required String payload,
    @required String signature,
  }) = _Encoded;

  factory Encoded.fromJson(Map<String, dynamic> json) =>
      _$EncodedFromJson(json);
}

@freezed
abstract class Header with _$Header {
  const factory Header({
    @required String alg,
    @required String typ,
    @required String kid,
  }) = _Header;

  factory Header.fromJson(Map<String, dynamic> json) =>
      _$HeaderFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @JsonKey(name: 'https://shirasu.io/roles') @required @protected List<String> rawHttpsShirasuIoRoles,
    @JsonKey(name: 'https://shirasu.io/userAttribute') @required HttpsShirasuIoUserAttribute httpsShirasuIoUserAttribute,
    @JsonKey(name: 'https://shirasu.io/customerId') @required String httpsShirasuIoCustomerId,
    @JsonKey(name: 'https://shirasu.io/distributeds') @required @protected List<dynamic> rawHttpsShirasuIoDistributeds,
    @JsonKey(name: 'https://shirasu.io/tenants') @required @protected List<dynamic> rawHttpsShirasuIoTenants,
    @required String nickname,
    @required String name,
    @required String picture,
    @JsonKey(name: 'updated_at') @required DateTime updatedAt,
    @required String email,
    @JsonKey(name: 'email_verified') @required bool emailVerified,
    @required String sub,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  // const User._();
  //
  // UnmodifiableListView<String> get httpsShirasuIoRoles => rawHttpsShirasuIoRoles.toUnmodifiable();
  //
  // UnmodifiableListView<dynamic> get httpsShirasuIoDistributeds => rawHttpsShirasuIoDistributeds.toUnmodifiable();
  //
  // UnmodifiableListView<dynamic> get httpsShirasuIoTenants => rawHttpsShirasuIoTenants.toUnmodifiable();
}
