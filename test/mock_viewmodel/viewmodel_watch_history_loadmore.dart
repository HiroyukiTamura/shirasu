import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';
import 'package:shirasu/extension.dart';


final kOverrideViewModelWatchHistoryLoadMore = kPrvViewModelWatchHistory
    .overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel =
    StateNotifierProvider.autoDispose<ViewModelWatchHistory>(
        (ref) => _ViewModelWatchHistoryLoadMore(ref.read));

class _ViewModelWatchHistoryLoadMore extends ViewModelWatchHistory {
  _ViewModelWatchHistoryLoadMore(Reader reader) : super(reader);

  @override
  WatchHistoryState get state =>
      WatchHistoryState.success(WatchHistoriesDataWrapper(
        watchHistories: <WatchHistoriesData>[].toUnmodifiable(),
        isLoadingMore: true,
      ));
}
