import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/watch_history_data.dart';
import 'package:shirasu/viewmodel/base/base_state.dart';

part 'state_watch_history.freezed.dart';

@freezed
abstract class WatchHistoryState with _$WatchHistoryState {
  @Implements(WatchHistoryStateGroup)
  @Implements(StatePreInitialized)
  const factory WatchHistoryState.preInitialized() = WatchHistoryPreInitialized;

  @Implements(WatchHistoryStateGroup)
  @Implements(StateLoading)
  const factory WatchHistoryState.loading() = WatchHistoryLoading;

  @Implements(WatchHistoryStateGroup)
  @Implements(StateError)
  const factory WatchHistoryState.error() = WatchHistoryError;

  @Implements(WatchHistoryStateGroup)
  @Implements(StateSuccess)
  const factory WatchHistoryState.success(
      List<WatchHistoriesData> watchHistories) = WatchHistorySuccess;

  @Implements(WatchHistoryStateGroup)
  const factory WatchHistoryState.resultEmpty() = WatchHistoryResultEmpty;

  @Implements(WatchHistoryStateGroup)
  const factory WatchHistoryState.loadingMore(
      List<WatchHistoriesData> watchHistories) = WatchHistoryLoadingMore;
}

class WatchHistoryResultImpl
    with
        BaseStateImpl<WatchHistoryPreInitialized, WatchHistoryLoading,
            WatchHistoryError, WatchHistorySuccess, WatchHistorySuccessData> {
  const WatchHistoryResultImpl();

  @override
  WatchHistoryError error() => const WatchHistoryError();

  @override
  WatchHistoryLoading loading() => const WatchHistoryLoading();

  @override
  WatchHistoryPreInitialized preInitialized() =>
      const WatchHistoryPreInitialized();

  @override
  WatchHistorySuccess success(WatchHistorySuccessData data) =>
      WatchHistorySuccess([data.data]);
}

@immutable
mixin WatchHistoryStateGroup on BaseStateGroup {}

class WatchHistorySuccessData with BaseSuccessData {
  const WatchHistorySuccessData(this.data);

  final WatchHistoriesData data;
}
