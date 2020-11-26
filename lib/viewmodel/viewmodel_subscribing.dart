import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/watch_history_data.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart' show ApiClientResult;

part 'viewmodel_subscribing.freezed.dart';

//todo split per page?
class ViewModelSubscribing extends ChangeNotifier {
  final _apiClient = ApiClient(Client());
  bool _isLoadMoreCommanded = false;

  FeatureProgramState programData = const FeatureProgramStatePreInitialized();
  WatchHistoryState watchHistoryState = const StatePreInitialized();

  bool get isLoadMoreCommanded => _isLoadMoreCommanded;

  Future<void> setUpData() async {

    if (!(programData is FeatureProgramStateSuccess)) {
      try {
        final data = await _apiClient.queryFeaturedProgramsList();
        programData = FeatureProgramStateSuccess(data);
      } catch (e) {
        print(e);
        programData = const FeatureProgramStateError();
      }
      notifyListeners();
    }

    if (!(watchHistoryState is StateSuccess)) {
      try {
        final data = await _apiClient.queryWatchHistory();
        watchHistoryState = StateSuccess([data]);
      } catch (e) {
        print(e);
        watchHistoryState = const StateError();
      }
      notifyListeners();
    }
  }

  Future<ApiClientResult> loadMoreWatchHistory() async {
    if (_isLoadMoreCommanded)
      return ApiClientResult.CANCELED;

    final data = watchHistoryState;
    if (data is StateSuccess) {
      final nextToken = data.watchHistories.last.viewerUser.watchHistories.nextToken;
      if (nextToken == null)
        return ApiClientResult.CANCELED;

      watchHistoryState = StateSuccess(data.watchHistories);
      _isLoadMoreCommanded = true;

      try {
        final newOne = await _apiClient.queryWatchHistory(
          nextToken: nextToken,
        );
        data.watchHistories.add(newOne);
        notifyListeners();

        if (newOne.viewerUser.watchHistories.items.isEmpty)
          return ApiClientResult.NO_MORE;

        return ApiClientResult.SUCCESS;

      } catch (e) {
        debugPrint(e.toString());
        return ApiClientResult.FAILURE;
      } finally {
        _isLoadMoreCommanded = false;
      }

    } else
      return ApiClientResult.FAILURE;
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
  const factory WatchHistoryState.error() = StateError;
}