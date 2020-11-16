import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/watch_history_data.dart';

class ViewModelSubscribing extends ChangeNotifier {
  final apiClient = ApiClient(Client());

  FeatureProgramDataModelBase _programData;
  WatchHistoryDataModelBase _watchHistoryDataModelBase;

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

    if (!(_watchHistoryDataModelBase is WatchHistoryDataModelError)) {
      try {
        final data = await apiClient.queryWatchHistory();
        _watchHistoryDataModelBase = WatchHistoryDataModelSuccess(data);
      } catch (e) {
        print(e);
        _watchHistoryDataModelBase = const WatchHistoryDataModelError();
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

abstract class WatchHistoryDataModelBase {
  const WatchHistoryDataModelBase();
}

class WatchHistoryDataModelSuccess extends WatchHistoryDataModelBase {
  const WatchHistoryDataModelSuccess(this.watchHistories);

  final WatchHistoriesData watchHistories;
}

class WatchHistoryDataModelError extends WatchHistoryDataModelBase {
  const WatchHistoryDataModelError();
}