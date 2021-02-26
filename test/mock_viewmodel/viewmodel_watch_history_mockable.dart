import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../viewmodel/mock_viewmodel_base.dart';

class ViewModelWatchHistoryMockable extends ViewModelWatchHistory with MockViewModelBase {
  ViewModelWatchHistoryMockable(Reader reader, this.specState) : super(reader);

  @override
  final WatchHistoryState specState;

  static AutoDisposeStateNotifierProvider<ViewModelWatchHistory> createProvider(
          WatchHistoryState specState) =>
      StateNotifierProvider.autoDispose<ViewModelWatchHistory>(
          (ref) => ViewModelWatchHistoryMockable(ref.read, specState));
}
