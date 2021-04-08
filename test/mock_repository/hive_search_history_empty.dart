import 'dart:collection';

import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/hive_history_repository.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';

import 'hive_pref_empty.dart';

final kOverrideHiveSearchEmpty = kPrvHiveHistoryRepository.overrideWithValue(const HiveSearchHistoryEmpty());

class HiveSearchHistoryEmpty with HiveHistoryRepository {

  const HiveSearchHistoryEmpty();

  @override
  Future<void> putSearchHistory(String text) async {}

  @override
  ValueListenable<Box<HiveSearchHistory>> get valueListener => DummyValueListenable();

  @override
  Future<UnmodifiableListView<HiveSearchHistoryItem>> get values async => <HiveSearchHistoryItem>[].toUnmodifiable();

}