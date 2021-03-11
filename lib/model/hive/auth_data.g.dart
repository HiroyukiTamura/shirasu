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
      tokenPublishedAtUtc: fields[2] as DateTime,
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
      ..writeByte(2)
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
      clientId: fields[3] as String,
      accessToken: fields[4] as String,
      refreshToken: fields[5] as String,
      idToken: fields[6] as String,
      scope: fields[7] as String,
      expiresIn: fields[8] as int,
      tokenType: fields[9] as String,
      decodedToken: fields[10] as HiveDecodedToken,
      audience: fields[11] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveBody obj) {
    writer
      ..writeByte(9)
      ..writeByte(3)
      ..write(obj.clientId)
      ..writeByte(4)
      ..write(obj.accessToken)
      ..writeByte(5)
      ..write(obj.refreshToken)
      ..writeByte(6)
      ..write(obj.idToken)
      ..writeByte(7)
      ..write(obj.scope)
      ..writeByte(8)
      ..write(obj.expiresIn)
      ..writeByte(9)
      ..write(obj.tokenType)
      ..writeByte(10)
      ..write(obj.decodedToken)
      ..writeByte(11)
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
      claims: fields[12] as HiveClaims,
      user: fields[13] as HiveUser,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveDecodedToken obj) {
    writer
      ..writeByte(2)
      ..writeByte(12)
      ..write(obj.claims)
      ..writeByte(13)
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
          fields[14] as HiveHttpsShirasuIoUserAttribute,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveClaims obj) {
    writer
      ..writeByte(1)
      ..writeByte(14)
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
      birthDate: fields[15] as DateTime,
      job: fields[16] as String,
      country: fields[17] as String,
      prefecture: fields[18] as String,
      familyName: fields[19] as String,
      givenName: fields[20] as String,
      familyNameReading: fields[21] as String,
      givenNameReading: fields[22] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveHttpsShirasuIoUserAttribute obj) {
    writer
      ..writeByte(8)
      ..writeByte(15)
      ..write(obj.birthDate)
      ..writeByte(16)
      ..write(obj.job)
      ..writeByte(17)
      ..write(obj.country)
      ..writeByte(18)
      ..write(obj.prefecture)
      ..writeByte(19)
      ..write(obj.familyName)
      ..writeByte(20)
      ..write(obj.givenName)
      ..writeByte(21)
      ..write(obj.familyNameReading)
      ..writeByte(22)
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
          fields[23] as HiveHttpsShirasuIoUserAttribute,
      nickname: fields[24] as String,
      name: fields[25] as String,
      picture: fields[26] as String,
      updatedAt: fields[27] as DateTime,
      email: fields[28] as String,
      emailVerified: fields[29] as bool,
      sub: fields[30] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveUser obj) {
    writer
      ..writeByte(8)
      ..writeByte(23)
      ..write(obj.httpsShirasuIoUserAttribute)
      ..writeByte(24)
      ..write(obj.nickname)
      ..writeByte(25)
      ..write(obj.name)
      ..writeByte(26)
      ..write(obj.picture)
      ..writeByte(27)
      ..write(obj.updatedAt)
      ..writeByte(28)
      ..write(obj.email)
      ..writeByte(29)
      ..write(obj.emailVerified)
      ..writeByte(30)
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
