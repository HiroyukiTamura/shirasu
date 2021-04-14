import 'dart:async';
import 'dart:collection';
import 'dart:ui';

import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:flutter/src/foundation/change_notifier.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';

class HivePrefEmptyRepositoryImpl with HivePrefRepository {
  const HivePrefEmptyRepositoryImpl(this.isInitialLaunchApp);

  @override
  final bool isInitialLaunchApp;

  @override
  double get playSpeed => throw UnimplementedError();

  @override
  int get resolution => throw UnimplementedError();

  @override
  Future<void> setInitialLaunchApp() async {}

  @override
  Future<void> setPlaySpeed(double value) async {}

  @override
  Future<void> setResolution(int value) async {}

  @override
  Future<HiveFcmTopic> get subscribingFcmTopic => throw UnimplementedError();

  @override
  Future<bool> unsubscribeChannelFcmTopic(String channelId) async => true;

  @override
  Future<void> unsubscribePrgFcmTopic(String programId) async {}

  @override
  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data) async {}

  @override
  Future<void> subscribePrgFcmTopic(HiveFcmProgramData data) async {}

  @override
  Future<bool> isFcmTopicChannelSubscribing(String channelId) async => false;

  @override
  Future<bool> isFcmTopicProgramSubscribing(String channelId) async => false;

  @override
  Future<UnmodifiableSetView<HiveFcmProgramData>>
      get outdatedPrgFcmTopic async => UnmodifiableSetView({});

  @override
  ValueListenable<Box> get fcmTopicListener => DummyValueListenable();
}

class DummyValueListenable<T> extends ValueListenable<Box<T>> {
  @override
  Box<T> get value => _DummyBox();

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}
}

class _DummyBox<T> extends Box<T> {
  @override
  Future<int> add(T value) async => 0;

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
  T get(dynamic key, {T defaultValue}) => defaultValue;

  @override
  T getAt(int index) => null;

  @override
  bool get isEmpty => true;

  @override
  bool get isNotEmpty => false;

  @override
  bool get isOpen => true;

  @override
  T keyAt(int index) => null;

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
  Future<void> put(dynamic key, dynamic value) async {
  }

  @override
  Future<void> putAll(Map entries) async {
  }

  @override
  Future<void> putAt(int index, dynamic value) async {
  }

  @override
  Map<dynamic, T> toMap() => {};

  @override
  Iterable<T> get values => [];

  @override
  Iterable<T> valuesBetween({dynamic startKey, dynamic endKey}) => [];

  @override
  Stream<BoxEvent> watch({dynamic key}) => StreamController().stream;
}
