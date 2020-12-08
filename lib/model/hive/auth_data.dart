import 'package:hive/hive.dart';
import 'package:shirasu/model/auth_data.dart';

/// hive model for [AuthData]
@HiveType(typeId: 0)
class HiveAuthData extends HiveObject {
  @HiveField(0)
  HiveBody body;
  @HiveField(1)
  int expiresAt;
}

/// hive model for [Body]
@HiveType(typeId: 1)
class HiveBody extends HiveObject {
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
