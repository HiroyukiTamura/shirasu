import 'dart:async';
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/hive_history_repository.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';

final kOverrideHiveSearchEmpty =
    kPrvHiveHistoryRepository.overrideWithValue(HiveSearchHistoryMock());

class HiveSearchHistoryMock with HiveHistoryRepository {
  HiveSearchHistoryMock({this.initialValues});

  final HiveSearchHistory initialValues;

  @override
  Future<void> putSearchHistory(String text) async {}

  @override
  ValueListenable<Box<HiveSearchHistory>> get valueListener =>
      _DummyValueListenable(
        specValues: initialValues ?? HiveSearchHistory.initial(),
      );

  @override
  Future<UnmodifiableListView<HiveSearchHistoryItem>> get values async =>
      initialValues.sortedValues.toUnmodifiable();
}

class _DummyValueListenable extends ValueListenable<Box<HiveSearchHistory>> {

  _DummyValueListenable({this.specValues});

  final HiveSearchHistory specValues;

  @override
  Box<HiveSearchHistory> get value => _DummyBox(specValues);

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}
}

class _DummyBox extends Box<HiveSearchHistory> {

  _DummyBox(this._specValues);

  final HiveSearchHistory _specValues;

  @override
  Future<int> add(HiveSearchHistory value) async => 0;

  @override
  Future<Iterable<int>> addAll(Iterable values) async => [];

  @override
  Future<int> clear() async => 0;

  @override
  Future<void> close() async {}

  @override
  Future<void> compact() async {}

  @override
  bool containsKey(dynamic key) => false;

  @override
  Future<void> delete(dynamic key) async {}

  @override
  Future<void> deleteAll(Iterable keys) async {}

  @override
  Future<void> deleteAt(int index) async {}

  @override
  Future<void> deleteFromDisk() async {}

  @override
  HiveSearchHistory get(dynamic key, {HiveSearchHistory defaultValue}) => _specValues;

  @override
  HiveSearchHistory getAt(int index) => _specValues;

  @override
  bool get isEmpty => true;

  @override
  bool get isNotEmpty => false;

  @override
  bool get isOpen => true;

  @override
  HiveSearchHistory keyAt(int index) => null;

  @override
  Iterable get keys => [];

  @override
  bool get lazy => true;

  @override
  int get length => values.length;

  @override
  String get name => 'DUMMY';

  @override
  String get path => 'DUMMY';

  @override
  Future<void> put(dynamic key, HiveSearchHistory value) async {
  }

  @override
  Future<void> putAll(Map entries) async {
  }

  @override
  Future<void> putAt(int index, HiveSearchHistory value) async {
  }

  @override
  Map<dynamic, HiveSearchHistory> toMap() => {};

  @override
  Iterable<HiveSearchHistory> get values => [_specValues];

  @override
  Iterable<HiveSearchHistory> valuesBetween({dynamic startKey, dynamic endKey}) => [];

  @override
  Stream<BoxEvent> watch({dynamic key}) => StreamController().stream;
}