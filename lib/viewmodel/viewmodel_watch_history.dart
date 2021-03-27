import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/viewmodel/background_task.dart';

part 'viewmodel_watch_history.freezed.dart';

class ViewModelWatchHistory extends ViewModelBase<WatchHistoryState> {
  ViewModelWatchHistory(Reader reader)
      : super(reader, const WatchHistoryState.initial());

  SnackBarMessageNotifier get _snackBarMsgNotifier => reader(kPrvSnackBar);

  @override
  Future<void> initialize() async {
    if (state != const WatchHistoryState.initial()) return;

    final result = await logger
        .guardFuture(() async => authOperationLock.synchronized(() async {
              await connectivityRepository.ensureNotDisconnect();
              await interceptor.refreshAuthTokenIfNeeded();
              return graphQlRepository
                  .queryWatchHistory()
                  .timeout(GraphQlRepository.TIMEOUT);
            }));
    result.when(success: (data) {
      state = data.viewerUser.watchHistories.items.isEmpty
          ? const WatchHistoryState.resultEmpty()
          : WatchHistoryState.success(WatchHistoriesDataWrapper(
              isLoadingMore: true,
              watchHistories: [data].toUnmodifiable(),
            ));
    }, failure: (e) {
      state = WatchHistoryState.error(toErrMsg(e));
      if (e is UnauthorizedException) pushAuthErrScreen(e.detectedByTime);
    });
  }

  Future<void> loadMoreWatchHistory() async => state.maybeWhen(
        orElse: () {},
        success: (oldData) async {
          final nextToken =
              oldData.watchHistories.last.viewerUser.watchHistories.nextToken;
          if (nextToken == null) return;

          // we don't check if Disposed
          state = WatchHistoryState.success(WatchHistoriesDataWrapper(
            watchHistories: oldData.watchHistories,
            isLoadingMore: true,
          ));

          final result = await logger
              .guardFuture(() async => authOperationLock.synchronized(() async {
                    await connectivityRepository.ensureNotDisconnect();
                    await interceptor.refreshAuthTokenIfNeeded();
                    return graphQlRepository
                        .queryWatchHistory(
                          nextToken: nextToken,
                        )
                        .timeout(GraphQlRepository.TIMEOUT);
                  }));
          if (mounted)
            result.when(success: (data) {
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
      _snackBarMsgNotifier.notifyMsg(snackMsg, false);
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
