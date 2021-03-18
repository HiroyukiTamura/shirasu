// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_topic.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveFcmTopicAdapter extends TypeAdapter<_$_HiveFcmTopic> {
  @override
  final int typeId = 10;

  @override
  _$_HiveFcmTopic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveFcmTopic(
      rawSubscribingChannels:
          (fields[100] as Map)?.cast<String, HiveFcmChannelData>(),
      rawSubscribingPrograms:
          (fields[101] as Map)?.cast<String, HiveFcmProgramData>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveFcmTopic obj) {
    writer
      ..writeByte(2)
      ..writeByte(100)
      ..write(obj.rawSubscribingChannels)
      ..writeByte(101)
      ..write(obj.rawSubscribingPrograms);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveFcmTopicAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveFcmChannelDataAdapter extends TypeAdapter<_$_HiveFcmChannelData> {
  @override
  final int typeId = 11;

  @override
  _$_HiveFcmChannelData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveFcmChannelData(
      id: fields[110] as String,
      name: fields[111] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveFcmChannelData obj) {
    writer
      ..writeByte(2)
      ..writeByte(110)
      ..write(obj.id)
      ..writeByte(111)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveFcmChannelDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveFcmProgramDataAdapter extends TypeAdapter<_$_HiveFcmProgramData> {
  @override
  final int typeId = 12;

  @override
  _$_HiveFcmProgramData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveFcmProgramData(
      id: fields[120] as String,
      title: fields[121] as String,
      broadcastAt: fields[122] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveFcmProgramData obj) {
    writer
      ..writeByte(3)
      ..writeByte(120)
      ..write(obj.id)
      ..writeByte(121)
      ..write(obj.title)
      ..writeByte(122)
      ..write(obj.broadcastAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveFcmProgramDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
