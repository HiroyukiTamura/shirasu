import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/extension.dart';

import 'message_notifier.dart';
import 'model/error_msg_common.dart';

part 'viewmodel_watch_history.freezed.dart';

class ViewModelWatchHistory extends ViewModelBase<WatchHistoryState> {
  ViewModelWatchHistory(Reader reader)
      : super(reader, const WatchHistoryState.initial());

  @override
  Future<void> initialize() async {
    if (state != const WatchHistoryState.initial()) return;

    final result = await Result.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      return graphQlRepository
          .queryWatchHistory()
          .timeout(GraphQlRepository.TIMEOUT);
    });
    result.when(success: (data) {
      state = data.viewerUser.watchHistories.items.isEmpty
          ? const WatchHistoryState.resultEmpty()
          : WatchHistoryState.success(WatchHistoriesDataWrapper(
              isLoadingMore: true,
              watchHistories: [data].toUnmodifiable(),
            ));
    }, failure: (e) {
      state = WatchHistoryState.error(toErrMsg(e));
      if (e is UnauthorizedException) pushAuthExpireScreen();
    });
  }

  Future<void> loadMoreWatchHistory() async => state.maybeWhen(
        orElse: null,
        success: (oldData) async {
          final nextToken =
              oldData.watchHistories.last.viewerUser.watchHistories.nextToken;
          if (nextToken == null) return;

          // we don't check if Disposed
          state = WatchHistoryState.success(WatchHistoriesDataWrapper(
            watchHistories: oldData.watchHistories,
            isLoadingMore: true,
          ));

          final result = await Result.guardFuture(() async {
            await connectivityRepository.ensureNotDisconnect();
            return graphQlRepository
                .queryWatchHistory(
                  nextToken: nextToken,
                )
                .timeout(GraphQlRepository.TIMEOUT);
          });
          if (mounted)
            result.when(success: (data) {
              //todo extract to model class
              final newList = oldData.watchHistories + [data];
              state = WatchHistoryState.success(WatchHistoriesDataWrapper(
                watchHistories: newList.toUnmodifiable(),
                isLoadingMore: false,
              ));

              if (data.viewerUser.watchHistories.items.isEmpty)
                notifySnackMsg(const SnackMsg.noMoreItem());
            }, failure: (e) {
              state = WatchHistoryState.success(WatchHistoriesDataWrapper(
                watchHistories: oldData.watchHistories,
                isLoadingMore: false,
              ));
              notifySnackMsg(toNetworkSnack(e));
            });
        },
      );

  void notifySnackMsg(SnackMsg snackMsg) =>
      snackBarMsgNotifier.notifyMsg(snackMsg, false);
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
