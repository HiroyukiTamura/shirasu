import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/watch_history_data.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart' show ApiClientResult;

part 'viewmodel_subscribing.freezed.dart';

class ViewModelSubscribing extends ChangeNotifier with ViewModelBase {
  final _apiClient = ApiClient(Client());

  FeatureProgramState programData = const FeatureProgramStatePreInitialized();

  @override
  Future<void> setUpData() async {
    FeatureProgramState state;
    if (programData is FeatureProgramStateSuccess)
      return;

    try {
      final data = await _apiClient.queryFeaturedProgramsList();
      state = FeatureProgramStateSuccess(data);
    } catch (e) {
      print(e);
      state = const FeatureProgramStateError();
    }

    if (!isDisposed) {
      programData = state;
      notifyListeners();
    }
  }
}

class ViewModelWatchHistory extends ChangeNotifier with ViewModelBase {

  final _apiClient = ApiClient(Client());

  WatchHistoryState watchHistoryState = const StatePreInitialized();

  @override
  Future<void> setUpData() async {

    WatchHistoryState state;

    if (watchHistoryState is StateSuccess)
      return;

    try {
      final data = await _apiClient.queryWatchHistory();
      state = StateSuccess([data]);
    } catch (e) {
      print(e);
      state = const StateError();
    }

    if (!isDisposed) {
      watchHistoryState = state;
      notifyListeners();
    }
  }


  Future<void> loadMoreWatchHistory() async {
    if (watchHistoryState is StateLoadingMore)
      return;

    final oldState = watchHistoryState;
    if (oldState is StateSuccess) {
      final nextToken = oldState.watchHistories.last.viewerUser.watchHistories.nextToken;
      if (nextToken == null)
        return;

      // we don't check isDisposed because there is no async functions above
      watchHistoryState = StateLoadingMore(oldState.watchHistories);
      notifyListeners();

      try {
        final newOne = await _apiClient.queryWatchHistory(
          nextToken: nextToken,
        );

        if (!isDisposed)
          return ApiClientResult.CANCELED;

        oldState.watchHistories.add(newOne);
        watchHistoryState = StateSuccess(oldState.watchHistories);
        notifyListeners();

        if (newOne.viewerUser.watchHistories.items.isEmpty) {
          //todo show SnackBar
        }

        return;

      } catch (e) {
        debugPrint(e.toString());
        //todo show SnackBar
      }
    }
  }
}

@freezed
abstract class FeatureProgramState with _$FeatureProgramState {
  const factory FeatureProgramState.preInitialized() = FeatureProgramStatePreInitialized;
  const factory FeatureProgramState.resultEmpty() = FeatureProgramStateResultEmpty;
  const factory FeatureProgramState.success(FeatureProgramData featureProgramData) = FeatureProgramStateSuccess;
  const factory FeatureProgramState.error() = FeatureProgramStateError;
}

@freezed
abstract class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.preInitialized() = StatePreInitialized;
  const factory WatchHistoryState.resultEmpty() = StateResultEmpty;
  const factory WatchHistoryState.success(List<WatchHistoriesData> watchHistories) = StateSuccess;
  const factory WatchHistoryState.loadingMore(List<WatchHistoriesData> watchHistories) = StateLoadingMore;
  const factory WatchHistoryState.error() = StateError;
}