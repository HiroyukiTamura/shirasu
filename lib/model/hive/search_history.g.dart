// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_history.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveSearchHistoryAdapter extends TypeAdapter<_$_HiveSearchHistory> {
  @override
  final int typeId = 13;

  @override
  _$_HiveSearchHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveSearchHistory(
      itemList: (fields[130] as List)?.cast<HiveSearchHistoryItem>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveSearchHistory obj) {
    writer
      ..writeByte(1)
      ..writeByte(130)
      ..write(obj.itemList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveSearchHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveSearchHistoryItemAdapter
    extends TypeAdapter<_$_HiveSearchHistoryItem> {
  @override
  final int typeId = 14;

  @override
  _$_HiveSearchHistoryItem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_HiveSearchHistoryItem(
      text: fields[140] as String,
      searchedAt: fields[141] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, _$_HiveSearchHistoryItem obj) {
    writer
      ..writeByte(2)
      ..writeByte(140)
      ..write(obj.text)
      ..writeByte(141)
      ..write(obj.searchedAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveSearchHistoryItemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
