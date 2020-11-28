import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/viewmodel/base/viewmodel_base.dart';
import 'package:shirasu/viewmodel/subscribing/watch_history/state_watch_history.dart';
import 'package:shirasu/viewmodel/dashboard/viewmodel_dashboard.dart';

class ViewModelWatchHistory
    extends DisposableValueNotifier<WatchHistoryStateGroup> with ViewModelBase {
  ViewModelWatchHistory() : super(const WatchHistoryResultImpl());

  final _apiClient = ApiClient(Client());

  @override
  Future<void> initialize() async => runLoader(
      runOnlyOnce: true,
      trying: () async {
        final data = await _apiClient.queryWatchHistory();
        return WatchHistorySuccessData(data);
      });


  Future<void> loadMoreWatchHistory() async {
    final oldState = value;
    if (oldState is WatchHistorySuccess) {
      final nextToken =
          oldState.watchHistories.last.viewerUser.watchHistories.nextToken;
      if (nextToken == null) return;

      value = WatchHistoryLoadingMore(oldState.watchHistories);

      try {
        final newOne = await _apiClient.queryWatchHistory(
          nextToken: nextToken,
        );

        if (!isDisposed) return ApiClientResult.CANCELED;

        oldState.watchHistories.add(newOne);
        value = WatchHistorySuccess(oldState.watchHistories);

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
