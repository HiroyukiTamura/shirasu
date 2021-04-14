import 'dart:async';

import 'package:dio/dio.dart' hide Lock;
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/algolia/algolia_response.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/hive_history_repository.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:synchronized/synchronized.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';
import 'package:dartx/dartx.dart';

final kPrvSearchTextController =
    Provider.autoDispose<TextEditingController>((ref) {
  final controller = TextEditingController();
  ref.onDispose(controller.dispose);
  return controller;
});

class ViewModelSearch extends ViewModelBase<ModelSearch> {
  ViewModelSearch(reader) : super(reader, ModelSearch()) {
    controller.addListener(onTextChange);
    textFiledFocus.addListener(_onTextFiledFocused);
  }

  final textFiledFocus = FocusNode();
  var _cancelToken = CancelToken();
  var _cancelTokenSearch = CancelToken();
  final _requestLock = Lock();
  final _requestSearchLock = Lock();

  HiveHistoryRepository get _searchHistory => reader(kPrvHiveHistoryRepository);

  TextEditingController get controller => reader(kPrvSearchTextController);

  @override
  void dispose() {
    super.dispose();
    textFiledFocus.removeListener(onTextChange);
  }

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

  @visibleForTesting
  Future<void> onTextChange() async {
    if (!mounted) return;

    final queryText = controller.text ?? '';
    state = state.copyWith(
      textLen: queryText.length,
    );
    return _requestLock.synchronized(() async {
      _cancelRequest();
      List<SuggestItem> suggests = [];
      if (queryText.isNotEmpty == true) {
        final result = await logger.guardFuture(
          () async {
            await connectivityRepository.ensureNotDisconnect();
            final response = await dioClient
                .searchAlgolia(
                  cancelToken: _cancelToken,
                  query: queryText,
                )
                .timeout(GraphQlRepository.TIMEOUT);
            return response.toSuggestList();
          },
          logError: false,
        );
        result.when(
          success: (data) => suggests = data,
          failure: (e) {
            if (!(e is DioError && CancelToken.isCancel(e))) logger.e(e, null);
            // we don't show any snackBar
          },
        );
      }
      if (mounted)
        state = state.copyWith(
          rawSuggestList: suggests,
        );
    });
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
          () async {
            await connectivityRepository.ensureNotDisconnect();
            return dioClient
                .searchAlgolia(
                  cancelToken: _cancelTokenSearch,
                  query: queryText,
                )
                .timeout(GraphQlRepository.TIMEOUT);
          },
          logError: false,
        );
        if (!mounted) return;
        final searchResult = await result.when<FutureOr<SearchResult>>(
          success: (data) async {
            final content = data.toSearchResultItem(searchByTag);
            final result = await logger.guardFuture(() async {
              await connectivityRepository.ensureNotDisconnect();
              final channelDataList = await Future.wait(content.channels.map(
                      (it) async =>
                          graphQlRepository.queryChannelData(it.hit.channelId)))
                  .timeout(GraphQlRepository.TIMEOUT);
              return content.copyWith(
                channelDataList: channelDataList,
              );
            });
            return result.when(
              success: (searchContent) => SearchResult.success(searchContent),
              failure: (e) => SearchResult.error(toErrMsg(e)),
            );
          },
          failure: (e) {
            if (e is DioError && CancelToken.isCancel(e))
              return const SearchResult.canceled();

            logger.e(e, null);
            return SearchResult.error(toErrMsg(e));
          },
        );
        state = state.copyWith(
          searchResult: searchResult,
        );
      });
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
