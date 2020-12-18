import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/watch_history_data.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:riverpod/src/framework.dart';

part 'viewmodel_subscribing.freezed.dart';

//todo fix lint config as concerned to lack of generics
class ViewModelSubscribing extends ViewModelBase<FeatureProgramState> {

  ViewModelSubscribing() : super(const FeatureProgramStatePreInitialized());

  final _apiClient = ApiClient(Client());

  @override
  Future<void> initialize() async {
    if (!(state is FeatureProgramStatePreInitialized))
      return;

    state = const FeatureProgramStatePreInitialized();

    FeatureProgramState newState;
    try {
      final data = await _apiClient.queryFeaturedProgramsList();
      newState = FeatureProgramStateSuccess(data);
    } catch (e) {
      print(e);
      newState = const FeatureProgramStateError();
    }
    setState(newState);
  }
}

class ViewModelWatchHistory extends ViewModelBase<WatchHistoryState> {

  ViewModelWatchHistory(this._ref) : super(const StatePreInitialized());

  final AutoDisposeProviderReference _ref;
  final _apiClient = ApiClient(Client());

  SnackBarMessageNotifier get _msgNotifier => _ref.read(snackBarMsgProvider);

  @override
  Future<void> initialize() async {
    if (!(state is StatePreInitialized))
      return;

    state = const StateLoading();

    WatchHistoryState newState;

    try {
      final data = await _apiClient.queryWatchHistory();
      newState = state = StateSuccess([data]);
    } catch (e) {
      print(e);
      newState = state = const StateError();
    }

    setState(newState);
  }


  Future<void> loadMoreWatchHistory() async {
    final oldState = state;
    if (oldState is StateSuccess) {
      final nextToken = oldState.watchHistories.last.viewerUser.watchHistories.nextToken;
      if (nextToken == null)
        return;

      // we don't check if Disposed
      state = StateLoadingMore(oldState.watchHistories);

      try {
        final newOne = await _apiClient.queryWatchHistory(
          nextToken: nextToken,
        );

        oldState.watchHistories.add(newOne);//todo fix to watchHistories immutable collection
        setState(StateSuccess(oldState.watchHistories));

        if (newOne.viewerUser.watchHistories.items.isEmpty)
          _msgNotifier.notifyErrorMsg(ErrorMsg.NO_MORE_ITEM);

        return;

      } catch (e) {
        setState(StateSuccess(oldState.watchHistories));
        debugPrint(e.toString());
        _msgNotifier.notifyErrorMsg(ErrorMsg.UNKNOWN);
      }
    }
  }
}

@freezed
abstract class FeatureProgramState with _$FeatureProgramState {
  const factory FeatureProgramState.preInitialized() = FeatureProgramStatePreInitialized;
  const factory FeatureProgramState.loading() = FeatureProgramStateLoading;
  const factory FeatureProgramState.resultEmpty() = FeatureProgramStateResultEmpty;
  const factory FeatureProgramState.success(FeatureProgramData featureProgramData) = FeatureProgramStateSuccess;
  const factory FeatureProgramState.error() = FeatureProgramStateError;
}

@freezed
abstract class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.preInitialized() = StatePreInitialized;
  const factory WatchHistoryState.loading() = StateLoading;
  const factory WatchHistoryState.resultEmpty() = StateResultEmpty;
  const factory WatchHistoryState.success(List<WatchHistoriesData> watchHistories) = StateSuccess;
  const factory WatchHistoryState.loadingMore(List<WatchHistoriesData> watchHistories) = StateLoadingMore;
  const factory WatchHistoryState.error() = StateError;
}