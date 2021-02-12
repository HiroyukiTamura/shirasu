import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

final kOverrideViewModelWatchHistoryPreInitialized =
    kPrvViewModelWatchHistory.overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelWatchHistory>(
    (ref) => _ViewModelWatchHistoryPreInitialized(ref.read));

class _ViewModelWatchHistoryPreInitialized extends ViewModelWatchHistory {
  _ViewModelWatchHistoryPreInitialized(Reader reader) : super(reader);

  @override
  Future<void> initialize() async {}

  @override
  WatchHistoryState get state => const WatchHistoryState.initial();
}
