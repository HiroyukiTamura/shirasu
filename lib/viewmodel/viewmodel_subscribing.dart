import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/client/api_client.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/extension.dart';

part 'viewmodel_subscribing.freezed.dart';

//todo fix lint config as concerned to lack of generics
class ViewModelSubscribing extends ViewModelBase<FeatureProgramState> {
  ViewModelSubscribing(Reader reader)
      : super(reader, const FeatureProgramState.preInitialized());

  @override
  Future<void> initialize() async {
    if (state != const FeatureProgramState.preInitialized()) return;

    state = const FeatureProgramState.preInitialized();

    bool authExpired = false;
    FeatureProgramState newState;
    try {
      final data = await ApiClient.instance.queryFeaturedProgramsList();
      newState = data.viewerUser.subscribedPrograms.isEmpty
          ? const FeatureProgramState.resultEmpty()
          : FeatureProgramState.success(data);
    } on UnauthorizedException catch (e) {
      print(e);
      authExpired = true;
    } catch (e) {
      print(e);
      newState = const FeatureProgramState.error();
    }

    authExpired ? pushAuthExpireScreen() : setState(newState);
  }
}

class ViewModelWatchHistory extends ViewModelBase<WatchHistoryState> {
  ViewModelWatchHistory(Reader reader)
      : super(reader, const WatchHistoryState.preInitialized());

  SnackBarMessageNotifier get _msgNotifier => reader(snackBarMsgProvider);

  @override
  Future<void> initialize() async {
    if (state != const WatchHistoryState.preInitialized()) return;

    state = const WatchHistoryState.loading();

    WatchHistoryState newState;
    bool authExpired = false;

    try {
      final data = await ApiClient.instance.queryWatchHistory();
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
        final newOne = await ApiClient.instance.queryWatchHistory(
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

@freezed
abstract class FeatureProgramState with _$FeatureProgramState {
  const factory FeatureProgramState.preInitialized() =
      _FeatureProgramStatePreInitialized;

  const factory FeatureProgramState.loading() = _FeatureProgramStateLoading;

  const factory FeatureProgramState.resultEmpty() =
      _FeatureProgramStateResultEmpty;

  const factory FeatureProgramState.success(
      FeatureProgramData featureProgramData) = _FeatureProgramStateSuccess;

  const factory FeatureProgramState.error() = _FeatureProgramStateError;
}

@freezed
abstract class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.preInitialized() = _StatePreInitialized;

  const factory WatchHistoryState.loading() = _StateLoading;

  const factory WatchHistoryState.resultEmpty() = _StateResultEmpty;

  const factory WatchHistoryState.success(
      UnmodifiableListView<WatchHistoriesData> watchHistories) = _StateSuccess;

  const factory WatchHistoryState.loadingMore(
          UnmodifiableListView<WatchHistoriesData> watchHistories) =
      _StateLoadingMore;

  const factory WatchHistoryState.error() = _StateError;
}
