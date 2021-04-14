import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/repository/hive_history_repository.dart';
import 'package:dartx/dartx.dart';
import 'package:synchronized/extension.dart';
import 'package:hive_flutter/hive_flutter.dart';

final kPrvHiveHistoryRepository = Provider.autoDispose<HiveHistoryRepository>(
    (ref) => HiveHistoryRepositoryImpl.instance());

final kPrvHiveHistoryListener =
    Provider.autoDispose<ValueListenable<Box<HiveSearchHistory>>>(
        (ref) => ref.watch(kPrvHiveHistoryRepository).valueListener);

class HiveHistoryRepositoryImpl extends HiveClient<HiveSearchHistory>
    with HiveHistoryRepository {
  HiveHistoryRepositoryImpl._() : super(_NAME);

  factory HiveHistoryRepositoryImpl.instance() =>
      _instance ??= HiveHistoryRepositoryImpl._();

  static const _NAME = 'HIVE_HISTORY';
  static const KEY = 'SEARCH_HISTORY';
  static HiveHistoryRepositoryImpl _instance;

  @override
  Future<void> putSearchHistory(String text) async => synchronized(() async {
        final history = box
            .get(
              KEY,
              defaultValue: HiveSearchHistory.initial(),
            )
            .append(HiveSearchHistoryItem(
              text: text,
              searchedAt: DateTime.now(),
            ));
        await box.put(KEY, history);
      });

  @override
  Future<UnmodifiableListView<HiveSearchHistoryItem>> get values =>
      synchronized(
        () async => _instance.box.get(KEY).sortedValues.toUnmodifiable(),
      );

  @override
  ValueListenable<Box<HiveSearchHistory>> get valueListener =>
      box.listenable(keys: [HivePrefRepositoryImpl.KEY_FCM_TOPIC]);
}
