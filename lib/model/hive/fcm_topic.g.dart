// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_topic.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveFcmTopicAdapter extends TypeAdapter<_$_HiveFcmTopic> {
  @override
  final int typeId = 100;

  @override
  _$_HiveFcmTopic read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveFcmTopic(
      rawSubscribingChannels: (fields[100] as List)?.cast<HiveFcmChannelData>(),
      rawSubscribingPrograms: (fields[101] as List)?.cast<HiveFcmProgramData>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveFcmTopic obj) {
    writer
      ..writeByte(2)
      ..writeByte(100)
      ..write(obj.rawSubscribingChannels?.toList())
      ..writeByte(101)
      ..write(obj.rawSubscribingPrograms?.toList());
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
  final int typeId = 200;

  @override
  _$_HiveFcmChannelData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveFcmChannelData(
      id: fields[200] as String,
      name: fields[201] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveFcmChannelData obj) {
    writer
      ..writeByte(2)
      ..writeByte(200)
      ..write(obj.id)
      ..writeByte(201)
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
  final int typeId = 300;

  @override
  _$_HiveFcmProgramData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveFcmProgramData(
      id: fields[300] as String,
      title: fields[301] as String,
      broadcastAt: fields[302] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveFcmProgramData obj) {
    writer
      ..writeByte(3)
      ..writeByte(300)
      ..write(obj.id)
      ..writeByte(301)
      ..write(obj.title)
      ..writeByte(302)
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
