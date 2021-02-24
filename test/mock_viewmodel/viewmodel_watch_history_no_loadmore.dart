import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';


final kOverrideViewModelWatchHistoryNoLoadMore =
_kPrvViewModel.overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel = StateNotifierProvider.autoDispose<_ViewModelWatchHistoryNoLoadMore>(
        (ref) => _ViewModelWatchHistoryNoLoadMore(ref.read));

class _ViewModelWatchHistoryNoLoadMore extends ViewModelWatchHistory {
  _ViewModelWatchHistoryNoLoadMore(Reader reader) : super(reader);

  @override
  Future<void> loadMoreWatchHistory() async {}
}
