import 'dart:collection';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/hive_history_repository.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';

import 'hive_pref_empty.dart';

final kOverrideHiveSearchEmpty = kPrvHiveHistoryRepository.overrideWithValue(HiveSearchHistoryMock());

class HiveSearchHistoryMock with HiveHistoryRepository {

  HiveSearchHistoryMock({this.initialValues = const []});

  final List<HiveSearchHistoryItem> initialValues;

  @override
  Future<void> putSearchHistory(String text) async {}

  @override
  ValueListenable<Box<HiveSearchHistory>> get valueListener => DummyValueListenable();

  @override
  Future<UnmodifiableListView<HiveSearchHistoryItem>> get values async => initialValues.toUnmodifiable();

}