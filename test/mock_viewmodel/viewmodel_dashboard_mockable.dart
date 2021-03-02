import 'package:shirasu/viewmodel/model/dashboard_model.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ViewModelDashBoardMockable extends ViewModelDashBoard {
  ViewModelDashBoardMockable(
    Reader reader,
    this.specState,
  ) : super(reader);

  @override
  Future<void> initialize() async {}

  final DashboardModel specState;

  @override
  DashboardModel get state => specState ?? super.state;

  static AutoDisposeChangeNotifierProvider<ViewModelDashBoard> createProvider(
          DashboardModel specState) =>
      ChangeNotifierProvider.autoDispose<ViewModelDashBoard>(
          (ref) => ViewModelDashBoardMockable(ref.read, specState));
}
