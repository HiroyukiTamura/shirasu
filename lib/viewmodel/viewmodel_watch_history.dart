import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/extension.dart';

import '../main.dart';
import 'message_notifier.dart';

part 'viewmodel_watch_history.freezed.dart';

class ViewModelWatchHistory extends ViewModelBase<WatchHistoryState> {
  ViewModelWatchHistory(Reader reader)
      : super(reader, const WatchHistoryState.initial());

  SnackBarMessageNotifier get _msgNotifier => reader(snackBarMsgProvider);

  @override
  Future<void> initialize() async {
    if (state != const WatchHistoryState.initial()) return;

    WatchHistoryState newState;
    bool authExpired = false;

    try {
      final data = await graphQlRepository.queryWatchHistory();
      newState = data.viewerUser.watchHistories.items.isEmpty
          ? const WatchHistoryState.resultEmpty()
          : WatchHistoryState.success([data].toUnmodifiable());
    } on UnauthorizedException catch (e) {
      print(e);
      authExpired = true;
    } catch (e) {
      print(e);
      newState = const WatchHistoryState.error();
    }

    authExpired ? pushAuthExpireScreen() : setState(newState);
  }

  Future<void> loadMoreWatchHistory() async {
    final oldState = state;
    if (oldState is _StateSuccess) {
      final nextToken =
          oldState.watchHistories.last.viewerUser.watchHistories.nextToken;
      if (nextToken == null) return;

      // we don't check if Disposed
      state = WatchHistoryState.loadingMore(oldState.watchHistories);

      try {
        final newOne = await graphQlRepository.queryWatchHistory(
          nextToken: nextToken,
        );

        oldState.watchHistories
            .add(newOne); //todo fix to watchHistories immutable collection
        setState(WatchHistoryState.success(oldState.watchHistories));

        if (newOne.viewerUser.watchHistories.items.isEmpty)
          _msgNotifier.notifyMsg(const SnackMsg.noMoreItem(), false);

        return;
      } catch (e) {
        setState(WatchHistoryState.success(oldState.watchHistories));
        debugPrint(e.toString());
        _msgNotifier.notifyMsg(const SnackMsg.unknown(), false);
      }
    }
  }
}

@protected
@freezed
abstract class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.initial() = _StatePreInitial;

  const factory WatchHistoryState.resultEmpty() = _StateResultEmpty;

  const factory WatchHistoryState.success(
      UnmodifiableListView<WatchHistoriesData> watchHistories) = _StateSuccess;

  const factory WatchHistoryState.loadingMore(
      UnmodifiableListView<WatchHistoriesData> watchHistories) =
  _StateLoadingMore;

  const factory WatchHistoryState.error() = _StateError;
}