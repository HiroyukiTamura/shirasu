import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/extension.dart';

import '../main.dart';
import 'message_notifier.dart';
import 'model/error_msg_common.dart';

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
          : WatchHistoryState.success(WatchHistoriesDataWrapper(
              isLoadingMore: true,
              watchHistories: [data].toUnmodifiable(),
            ));
    } on UnauthorizedException catch (e) {
      print(e);
      authExpired = true;

      final errorMsg = e.detectedByTime
          ? const ErrorMsgCommon.authExpired()
          : const ErrorMsgCommon.unAuth();
      newState = WatchHistoryState.error(errorMsg);
    } on TimeoutException catch (e) {
      //todo log error
      print(e);
      newState = const WatchHistoryState.error(ErrorMsgCommon.networkTimeout());
    } on NetworkDisconnectException catch (e) {
      print(e);
      newState =
          const WatchHistoryState.error(ErrorMsgCommon.networkDisconnected());
    } catch (e) {
      print(e);
      newState = const WatchHistoryState.error(ErrorMsgCommon.unknown());
    }

    authExpired ? pushAuthExpireScreen() : trySet(newState);
  }

  Future<void> loadMoreWatchHistory() async {
    final oldState = state;
    if (oldState is _StateSuccess) {
      final nextToken =
          oldState.data.watchHistories.last.viewerUser.watchHistories.nextToken;
      if (nextToken == null) return;

      // we don't check if Disposed
      state = WatchHistoryState.success(WatchHistoriesDataWrapper(
        watchHistories: oldState.data.watchHistories,
        isLoadingMore: true,
      ));

      try {
        final newOne = await graphQlRepository.queryWatchHistory(
          nextToken: nextToken,
        );

        final newList = oldState.data.watchHistories + [newOne];

        if (!mounted) return;

        state = WatchHistoryState.success(WatchHistoriesDataWrapper(
          watchHistories: newList.toUnmodifiable(),
          isLoadingMore: false,
        ));

        if (newOne.viewerUser.watchHistories.items.isEmpty)
          _msgNotifier.notifyMsg(const SnackMsg.noMoreItem(), false);
      } catch (e) {
        debugPrint(e.toString());
        if (!mounted) return;
        state = WatchHistoryState.success(WatchHistoriesDataWrapper(
          watchHistories: oldState.data.watchHistories,
          isLoadingMore: oldState.data.isLoadingMore,
        ));
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

  const factory WatchHistoryState.success(WatchHistoriesDataWrapper data) =
      _StateSuccess;

  const factory WatchHistoryState.error(ErrorMsgCommon errorMsgCommon) =
      _StateError;
}

@protected
@freezed
abstract class WatchHistoriesDataWrapper with _$WatchHistoriesDataWrapper {
  const factory WatchHistoriesDataWrapper({
    @required UnmodifiableListView<WatchHistoriesData> watchHistories,
    @required bool isLoadingMore,
  }) = _WatchHistoriesDataWrapper;
}
