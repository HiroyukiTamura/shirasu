import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';

part 'model_search.freezed.dart';

@freezed
abstract class ModelSearch with _$ModelSearch {
  @Assert('rawSuggestList.length <= 20')
  const factory ModelSearch({
    @Default([]) @protected List<SuggestItem> rawSuggestList,
    @Default(0) int textLen,
    @Default(SearchResult.noDisplay()) SearchResult searchResult,
  }) = _ModelSearch;

  const ModelSearch._();

  static const SUGGEST_MAX_SIZE = 20;

  UnmodifiableListView<SuggestItem> get suggestList =>
      rawSuggestList.toUnmodifiable();
}

@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult.noDisplay() = _SearchResultNoDisplay;

  const factory SearchResult.success(SearchResultContent content) =
      SearchResultSuccess;

  const factory SearchResult.loading() = _SearchResultLoading;

  const factory SearchResult.error(ErrorMsgCommon msg) = _SearchResultError;

  const factory SearchResult.canceled() = _SearchResultCanceled;
}

@freezed
abstract class SearchResultContent with _$SearchResultContent {
  const factory SearchResultContent({
    @required bool searchByTag,
    @required @protected List<Hit> hits,
    @Default([]) @protected List<ChannelData> channelDataList,
  }) = _SearchResultContent;

  const SearchResultContent._();

  static const MAX_SIZE = 100;

  bool get isEmpty => searchByTag ? fullMatchByTagSafe.isEmpty : hits.isEmpty;

  List<SearchResultItem> get _searchResultList {
    final itr = hits
        .map((it) => [
              it.highlightResult.channelTitle
                  .toSearchResultItem(const ItemType.channelTitle(), it),
              it.highlightResult.programTitle
                  .toSearchResultItem(const ItemType.programTitle(), it),
            ])
        .toList() // must needed
        .expand((it) => it);
    return IterableX(itr).whereNotNull().distinct().take(MAX_SIZE).toList();
  }

  UnmodifiableListView<SearchResultItem> get programs => _searchResultList
      .where((it) => it.type == const ItemType.programTitle())
      .toList()
      .toUnmodifiable();

  UnmodifiableListView<SearchResultItem> get channels => _searchResultList
      .where((it) => it.type == const ItemType.channelTitle())
      .distinctBy((it) => it.hit.channelId)
      .toList()
      .toUnmodifiable();

  UnmodifiableListView<String> get tags => hits
      .map((it) => it.highlightResult.tagList)
      .expand((it) => it)
      .where((it) => it.matchLevel != MatchLevel.NONE)
      .map((it) => HighlightResult.removeHtmlTag(it.value))
      .distinct()
      .toList()
      .toUnmodifiable();

  UnmodifiableListView<SearchResultItem> get listSafe {
    final itr = hits
        .map((it) => [
              it.highlightResult.channelTitle
                  .toSearchResultItem(const ItemType.channelTitle(), it),
              it.highlightResult.programTitle
                  .toSearchResultItem(const ItemType.programTitle(), it),
            ])
        .toList() // must needed
        .expand((it) => it)
        .distinct();
    return IterableX(itr).whereNotNull().take(MAX_SIZE).toList();
  }

  UnmodifiableListView<ChannelData> get channelDataListSafe =>
      channelDataList.toUnmodifiable();

  UnmodifiableListView<SearchResultItem> get fullMatchByTagSafe => hits
      .where((it) => it.highlightResult.tagList.any((it) => it.fullMatch))
      .map((it) => SearchResultItem(
            type: const ItemType.programTitle(),
            hit: it,
          ))
      .toList()
      .toUnmodifiable();
}

@freezed
abstract class SearchResultItem with _$SearchResultItem {
  const factory SearchResultItem({
    @required Hit hit,
    @required ItemType type,
  }) = _SearchResultItem;
}

@freezed
abstract class SuggestItem with _$SuggestItem {
  const factory SuggestItem({
    @required ItemType type,
    @required SuggestData data,
  }) = _SuggestItem;
}

@freezed
abstract class SuggestData with MatchResultBase implements _$SuggestData {
  const factory SuggestData({
    @required String value,
    @required
    @protected
    @JsonKey(name: 'matchedWords')
        List<String> rawMatchedWords,
  }) = _SuggestData;

  const SuggestData._();
}

@freezed
abstract class ItemType with _$ItemType {
  const factory ItemType.tag() = _TypeTag;

  const factory ItemType.channelTitle() = _TypeChannelTitle;

  const factory ItemType.programTitle() = _TypeProgramTitle;
}

extension on MatchResult {
  SearchResultItem toSearchResultItem(ItemType type, Hit hit) => fullMatch
      ? SearchResultItem(
          type: type,
          hit: hit,
        )
      : null;
}
