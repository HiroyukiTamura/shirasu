import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/watch_history_data.dart';

part 'viewmodel_subscribing.freezed.dart';

class ViewModelSubscribing extends ChangeNotifier {
  final apiClient = ApiClient(Client());

  FeatureProgramDataModelBase _programData;
  WatchHistoryState watchHistoryState;

  Future<void> setUpData() async {

    if (!(_programData is FeatureProgramDataModelSuccess)) {
      try {
        final data = await apiClient.queryFeaturedProgramsList();
        _programData = FeatureProgramDataModelSuccess(data);
      } catch (e) {
        print(e);
        _programData = const FeatureProgramDataModelError();
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

abstract class FeatureProgramDataModelBase {
  const FeatureProgramDataModelBase();
}

class FeatureProgramDataModelSuccess extends FeatureProgramDataModelBase {
  const FeatureProgramDataModelSuccess(this.programData);

  final FeatureProgramData programData;
}

class FeatureProgramDataModelError extends FeatureProgramDataModelBase {
  const FeatureProgramDataModelError();
}

@freezed
abstract class WatchHistoryState with _$WatchHistoryState {
  const factory WatchHistoryState.preInitialized() = StatePreInitialized;
  const factory WatchHistoryState.success(WatchHistoriesData watchHistories) = StateSuccess;
  const factory WatchHistoryState.error() = StateError;
}