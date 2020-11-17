import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/watch_history_data.dart';

part 'viewmodel_subscribing.freezed.dart';

class ViewModelSubscribing extends ChangeNotifier {
  final apiClient = ApiClient(Client());

  FeatureProgramState programData;
  WatchHistoryState watchHistoryState;

  Future<void> setUpData() async {

    if (!(programData is FeatureProgramStateSuccess)) {
      try {
        final data = await apiClient.queryFeaturedProgramsList();
        programData = FeatureProgramStateSuccess(data);
      } catch (e) {
        print(e);
        programData = const FeatureProgramStateError();
      }
      notifyListeners();
    }

    if (!(watchHistoryState is WatchHistoryState)) {
      try {
        final data = await apiClient.queryWatchHistory();
        watchHistoryState = StateSuccess(data);
      } catch (e) {
        print(e);
        watchHistoryState = const StateError();
      }
      notifyListeners();
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
  const factory WatchHistoryState.success(WatchHistoriesData watchHistories) = StateSuccess;
  const factory WatchHistoryState.error() = StateError;
}