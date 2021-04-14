import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';

part 'search_history.g.dart';

part 'search_history.freezed.dart';

@freezed
abstract class HiveSearchHistory with _$HiveSearchHistory {
  @protected
  @HiveType(typeId: 13)
  const factory HiveSearchHistory({
    @required @protected @HiveField(130) List<HiveSearchHistoryItem> itemList,
  }) = _HiveSearchHistory;

  const HiveSearchHistory._();

  factory HiveSearchHistory.initial() => const HiveSearchHistory(itemList: []);

  List<HiveSearchHistoryItem> get sortedValues => itemList
      .sortedByDescending((it) => it.searchedAt.millisecondsSinceEpoch)
      .take(ModelSearch.SUGGEST_MAX_SIZE)
      .toList();

  HiveSearchHistory append(HiveSearchHistoryItem item) => copyWith(
        itemList: ([item] +
            sortedValues)
                .distinctBy((it) => it.text)
                .take(ModelSearch.SUGGEST_MAX_SIZE)
                .toList(),
      );
}

@freezed
abstract class HiveSearchHistoryItem with _$HiveSearchHistoryItem {
  @protected
  @HiveType(typeId: 14)
  const factory HiveSearchHistoryItem({
    @required @HiveField(140) String text,
    @required @HiveField(141) DateTime searchedAt,
  }) = _HiveSearchHistoryItem;
}
