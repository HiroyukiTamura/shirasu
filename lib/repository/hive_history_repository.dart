import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/hive/search_history.dart';

mixin HiveHistoryRepository {

  Future<void> putSearchHistory(String text);

  Future<UnmodifiableListView<HiveSearchHistoryItem>> get values;

  ValueListenable<Box<HiveSearchHistory>> get valueListener;
}