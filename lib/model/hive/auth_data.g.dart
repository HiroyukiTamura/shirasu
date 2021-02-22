// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveAuthDataAdapter extends TypeAdapter<_$_HiveAuthData> {
  @override
  final int typeId = 0;

  @override
  _$_HiveAuthData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveAuthData(
      body: fields[0] as HiveBody,
      rawExpiresAt: fields[1] as int,
      tokenPublishedAtUtc: fields[64] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveAuthData obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.body)
      ..writeByte(1)
      ..write(obj.rawExpiresAt)
      ..writeByte(64)
      ..write(obj.tokenPublishedAtUtc);
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

class HiveBodyAdapter extends TypeAdapter<_$_HiveBody> {
  @override
  final int typeId = 1;

  @override
  _$_HiveBody read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveBody(
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
  void write(BinaryWriter writer, _$_HiveBody obj) {
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

class HiveDecodedTokenAdapter extends TypeAdapter<_$_HiveDecodedToken> {
  @override
  final int typeId = 2;

  @override
  _$_HiveDecodedToken read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveDecodedToken(
      claims: fields[13] as HiveClaims,
      user: fields[14] as HiveUser,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveDecodedToken obj) {
    writer
      ..writeByte(2)
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

class HiveClaimsAdapter extends TypeAdapter<_$_HiveClaims> {
  @override
  final int typeId = 3;

  @override
  _$_HiveClaims read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveClaims(
      httpsShirasuIoUserAttribute:
          fields[17] as HiveHttpsShirasuIoUserAttribute,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveClaims obj) {
    writer
      ..writeByte(1)
      ..writeByte(17)
      ..write(obj.httpsShirasuIoUserAttribute);
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
    extends TypeAdapter<_$_HiveHttpsShirasuIoUserAttribute> {
  @override
  final int typeId = 4;

  @override
  _$_HiveHttpsShirasuIoUserAttribute read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveHttpsShirasuIoUserAttribute(
      birthDate: fields[36] as DateTime,
      job: fields[37] as String,
      country: fields[38] as String,
      prefecture: fields[39] as String,
      familyName: fields[40] as String,
      givenName: fields[41] as String,
      familyNameReading: fields[42] as String,
      givenNameReading: fields[43] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveHttpsShirasuIoUserAttribute obj) {
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

class HiveUserAdapter extends TypeAdapter<_$_HiveUser> {
  @override
  final int typeId = 7;

  @override
  _$_HiveUser read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveUser(
      httpsShirasuIoUserAttribute:
          fields[50] as HiveHttpsShirasuIoUserAttribute,
      nickname: fields[56] as String,
      name: fields[57] as String,
      picture: fields[58] as String,
      locale: fields[59] as String,
      updatedAt: fields[60] as DateTime,
      email: fields[61] as String,
      emailVerified: fields[62] as bool,
      sub: fields[63] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveUser obj) {
    writer
      ..writeByte(9)
      ..writeByte(50)
      ..write(obj.httpsShirasuIoUserAttribute)
      ..writeByte(56)
      ..write(obj.nickname)
      ..writeByte(57)
      ..write(obj.name)
      ..writeByte(58)
      ..write(obj.picture)
      ..writeByte(59)
      ..write(obj.locale)
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
