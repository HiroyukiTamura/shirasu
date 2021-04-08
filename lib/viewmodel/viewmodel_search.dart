import 'dart:async';

import 'package:dio/dio.dart' hide Lock;
import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/repository/hive_history_repository.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:synchronized/synchronized.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';
import 'package:dartx/dartx.dart';

class ViewModelSearch extends ViewModelBase<ModelSearch> {
  ViewModelSearch(reader) : super(reader, ModelSearch()) {
    controller.addListener(_onTextChange);
    textFiledFocus.addListener(_onTextFiledFocused);
  }

  final textFiledFocus = FocusNode();
  final controller = TextEditingController();
  var _cancelToken = CancelToken();
  var _cancelTokenSearch = CancelToken();
  final _requestLock = Lock();
  final _requestSearchLock = Lock();

  HiveHistoryRepository get _searchHistory => reader(kPrvHiveHistoryRepository);

  void clearTextField() => controller.clear();

  /// move cursor to last position
  /// @see https://stackoverflow.com/a/59525664/8183034
  void putTextFieldWithTag(String text) {
    controller
      ..text = HighlightResult.removeHtmlTag(text)
      ..selection = TextSelection.fromPosition(TextPosition(
        offset: controller.text.length,
      ));
  }

  Future<void> _onTextChange() async {
    if (!mounted) return;

    state = state.copyWith(
      textLen: controller.text.length,
    );
    return _requestLock.synchronized(() async {
      _cancelRequest();
      List<SuggestItem> suggests = [];
      final queryText = controller.text;
      if (queryText.isNotEmpty == true) {
        final result = await logger.guardFuture(
          () async {
            final response = await dioClient.searchAlgolia(
              cancelToken: _cancelToken,
              query: queryText,
              length: 20,
            );
            return response.toSuggestList();
          },
          logError: false,
        );
        result.when(
          success: (data) => suggests = data,
          failure: (e) {
            if (!(e is DioError && CancelToken.isCancel(e))) logger.e(e, null);
          },
        );
      }
      if (mounted)
        state = state.copyWith(
          rawSuggestList: suggests,
        );
    });
  }

  void _onTextFiledFocused() {
    if (textFiledFocus.hasFocus) _cancelSearchRequest();
  }

  void _cancelRequest() {
    _cancelToken.cancel();
    _cancelToken = CancelToken();
  }

  void _cancelSearchRequest() {
    _cancelTokenSearch.cancel();
    _cancelTokenSearch = CancelToken();
    state = state.copyWith(
      searchResult: const SearchResult.noDisplay(),
    );
  }

  Future<void> submit(bool searchByTag) async {
    textFiledFocus.unfocus();

    final queryText = controller.text?.trim();
    if (queryText?.isNotEmpty != true) return;

    await _searchHistory.putSearchHistory(queryText);

    if (mounted)
      await _requestSearchLock.synchronized(() async {
        _cancelSearchRequest();

        if (!mounted) return;

        state = state.copyWith(
          searchResult: const SearchResult.loading(),
        );
        // todo pagination
        final result = await logger.guardFuture(
          () async => dioClient.searchAlgolia(
            cancelToken: _cancelTokenSearch,
            query: queryText,
          ),
          logError: false,
        );
        if (!mounted) return;
        final searchResult = await result.when<FutureOr<SearchResult>>(
          success: (data) async {
            final content = data.toSearchResultItem(searchByTag);
            final channelDataList = await Future.wait(content.channels.map(
                (it) async =>
                    graphQlRepository.queryChannelData(it.hit.channelId)));
            final searchContent = content.copyWith(
              channelDataList: channelDataList,
            );
            return SearchResult.success(searchContent);
          },
          failure: (e) {
            if (e is DioError && CancelToken.isCancel(e))
              return const SearchResult.canceled();

            logger.e(e, null);
            return const SearchResult.error();
          },
        );
        state = state.copyWith(
          searchResult: searchResult,
        );
      });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    textFiledFocus.dispose();
  }
}

extension on AlgoliaResponse {
  SearchResultContent toSearchResultItem(bool searchByTag) =>
      SearchResultContent(
        hits: hits,
        searchByTag: searchByTag,
      );

  List<SuggestItem> toSuggestList() => hits
      .map((it) => [
            it.highlightResult.channelTitle
                .toSuggestItem(const ItemType.channelTitle()),
            it.highlightResult.programTitle
                .toSuggestItem(const ItemType.programTitle()),
            ...it.highlightResult.tagList
                .map((it) => it.toSuggestItem(const ItemType.tag()))
          ])
      .toList() // must needed
      .expand((it) => it)
      .whereNotNull()
      .distinct()
      .take(ModelSearch.SUGGEST_MAX_SIZE)
      .toList();
}

extension on MatchResult {
  SuggestItem toSuggestItem(ItemType type) => fullMatch
      ? SuggestItem(
          type: type,
          data: SuggestData(
            value: value,
            rawMatchedWords: rawMatchedWords,
          ),
        )
      : null;
}
