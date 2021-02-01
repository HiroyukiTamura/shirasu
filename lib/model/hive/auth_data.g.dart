// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveAuthDataAdapter extends TypeAdapter<HiveAuthData> {
  @override
  final int typeId = 0;

  @override
  HiveAuthData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveAuthData(
      body: fields[0] as HiveBody,
      expiresAt: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveAuthData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.body)
      ..writeByte(1)
      ..write(obj.expiresAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveAuthDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveBodyAdapter extends TypeAdapter<HiveBody> {
  @override
  final int typeId = 1;

  @override
  HiveBody read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveBody(
      clientId: fields[2] as String,
      accessToken: fields[3] as String,
      refreshToken: fields[4] as String,
      idToken: fields[5] as String,
      scope: fields[6] as String,
      expiresIn: fields[7] as int,
      tokenType: fields[8] as String,
      decodedToken: fields[9] as HiveDecodedToken,
      audience: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveBody obj) {
    writer
      ..writeByte(9)
      ..writeByte(2)
      ..write(obj.clientId)
      ..writeByte(3)
      ..write(obj.accessToken)
      ..writeByte(4)
      ..write(obj.refreshToken)
      ..writeByte(5)
      ..write(obj.idToken)
      ..writeByte(6)
      ..write(obj.scope)
      ..writeByte(7)
      ..write(obj.expiresIn)
      ..writeByte(8)
      ..write(obj.tokenType)
      ..writeByte(9)
      ..write(obj.decodedToken)
      ..writeByte(10)
      ..write(obj.audience);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveBodyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveDecodedTokenAdapter extends TypeAdapter<HiveDecodedToken> {
  @override
  final int typeId = 2;

  @override
  HiveDecodedToken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveDecodedToken(
      encoded: fields[11] as HiveEncoded,
      header: fields[12] as HiveHeader,
      claims: fields[13] as HiveClaims,
      user: fields[14] as HiveUser,
    );
  }

  @override
  void write(BinaryWriter writer, HiveDecodedToken obj) {
    writer
      ..writeByte(4)
      ..writeByte(11)
      ..write(obj.encoded)
      ..writeByte(12)
      ..write(obj.header)
      ..writeByte(13)
      ..write(obj.claims)
      ..writeByte(14)
      ..write(obj.user);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveDecodedTokenAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveClaimsAdapter extends TypeAdapter<HiveClaims> {
  @override
  final int typeId = 3;

  @override
  HiveClaims read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveClaims(
      raw: fields[15] as String,
      rawHttpsShirasuIoRoles: (fields[16] as List)?.cast<String>(),
      httpsShirasuIoUserAttribute:
          fields[17] as HiveHttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: fields[18] as String,
      rawHttpsShirasuIoDistributeds: (fields[19] as List)?.cast<dynamic>(),
      rawHttpsShirasuIoTenants: (fields[20] as List)?.cast<dynamic>(),
      nickname: fields[23] as String,
      name: fields[24] as String,
      picture: fields[25] as String,
      updatedAt: fields[27] as DateTime,
      email: fields[28] as String,
      emailVerified: fields[29] as bool,
      iss: fields[30] as String,
      sub: fields[31] as String,
      aud: fields[32] as String,
      iat: fields[33] as int,
      exp: fields[34] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveClaims obj) {
    writer
      ..writeByte(17)
      ..writeByte(15)
      ..write(obj.raw)
      ..writeByte(16)
      ..write(obj.rawHttpsShirasuIoRoles)
      ..writeByte(17)
      ..write(obj.httpsShirasuIoUserAttribute)
      ..writeByte(18)
      ..write(obj.httpsShirasuIoCustomerId)
      ..writeByte(19)
      ..write(obj.rawHttpsShirasuIoDistributeds)
      ..writeByte(20)
      ..write(obj.rawHttpsShirasuIoTenants)
      ..writeByte(23)
      ..write(obj.nickname)
      ..writeByte(24)
      ..write(obj.name)
      ..writeByte(25)
      ..write(obj.picture)
      ..writeByte(27)
      ..write(obj.updatedAt)
      ..writeByte(28)
      ..write(obj.email)
      ..writeByte(29)
      ..write(obj.emailVerified)
      ..writeByte(30)
      ..write(obj.iss)
      ..writeByte(31)
      ..write(obj.sub)
      ..writeByte(32)
      ..write(obj.aud)
      ..writeByte(33)
      ..write(obj.iat)
      ..writeByte(34)
      ..write(obj.exp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveClaimsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveHttpsShirasuIoUserAttributeAdapter
    extends TypeAdapter<HiveHttpsShirasuIoUserAttribute> {
  @override
  final int typeId = 4;

  @override
  HiveHttpsShirasuIoUserAttribute read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveHttpsShirasuIoUserAttribute(
      birthDate: fields[36] as DateTime,
      job: fields[37] as String,
      country: fields[38] as String,
      prefecture: fields[39] as String,
      familyName: fields[40] as String,
      familyNameReading: fields[42] as String,
      givenName: fields[41] as String,
      givenNameReading: fields[43] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveHttpsShirasuIoUserAttribute obj) {
    writer
      ..writeByte(8)
      ..writeByte(36)
      ..write(obj.birthDate)
      ..writeByte(37)
      ..write(obj.job)
      ..writeByte(38)
      ..write(obj.country)
      ..writeByte(39)
      ..write(obj.prefecture)
      ..writeByte(40)
      ..write(obj.familyName)
      ..writeByte(41)
      ..write(obj.givenName)
      ..writeByte(42)
      ..write(obj.familyNameReading)
      ..writeByte(43)
      ..write(obj.givenNameReading);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveHttpsShirasuIoUserAttributeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveEncodedAdapter extends TypeAdapter<HiveEncoded> {
  @override
  final int typeId = 5;

  @override
  HiveEncoded read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveEncoded(
      header: fields[43] as String,
      payload: fields[44] as String,
      signature: fields[45] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveEncoded obj) {
    writer
      ..writeByte(3)
      ..writeByte(43)
      ..write(obj.header)
      ..writeByte(44)
      ..write(obj.payload)
      ..writeByte(45)
      ..write(obj.signature);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveEncodedAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveHeaderAdapter extends TypeAdapter<HiveHeader> {
  @override
  final int typeId = 6;

  @override
  HiveHeader read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveHeader(
      alg: fields[46] as String,
      typ: fields[47] as String,
      kid: fields[48] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveHeader obj) {
    writer
      ..writeByte(3)
      ..writeByte(46)
      ..write(obj.alg)
      ..writeByte(47)
      ..write(obj.typ)
      ..writeByte(48)
      ..write(obj.kid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveHeaderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveUserAdapter extends TypeAdapter<HiveUser> {
  @override
  final int typeId = 7;

  @override
  HiveUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveUser(
      rawHttpsShirasuIoRoles: (fields[49] as List)?.cast<String>(),
      httpsShirasuIoUserAttribute:
          fields[50] as HiveHttpsShirasuIoUserAttribute,
      httpsShirasuIoCustomerId: fields[51] as String,
      rawHttpsShirasuIoDistributeds: (fields[52] as List)?.cast<dynamic>(),
      rawHttpsShirasuIoTenants: (fields[53] as List)?.cast<dynamic>(),
      nickname: fields[56] as String,
      name: fields[57] as String,
      picture: fields[58] as String,
      updatedAt: fields[60] as DateTime,
      email: fields[61] as String,
      emailVerified: fields[62] as bool,
      sub: fields[63] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HiveUser obj) {
    writer
      ..writeByte(12)
      ..writeByte(49)
      ..write(obj.rawHttpsShirasuIoRoles)
      ..writeByte(50)
      ..write(obj.httpsShirasuIoUserAttribute)
      ..writeByte(51)
      ..write(obj.httpsShirasuIoCustomerId)
      ..writeByte(52)
      ..write(obj.rawHttpsShirasuIoDistributeds)
      ..writeByte(53)
      ..write(obj.rawHttpsShirasuIoTenants)
      ..writeByte(56)
      ..write(obj.nickname)
      ..writeByte(57)
      ..write(obj.name)
      ..writeByte(58)
      ..write(obj.picture)
      ..writeByte(60)
      ..write(obj.updatedAt)
      ..writeByte(61)
      ..write(obj.email)
      ..writeByte(62)
      ..write(obj.emailVerified)
      ..writeByte(63)
      ..write(obj.sub);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveUserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
