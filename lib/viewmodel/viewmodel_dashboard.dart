import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

class ViewModelDashBoard extends ViewModelBase<DashboardModelState> with LocatorMixin {
  ViewModelDashBoard()
      : super(const DashboardModelState.preInitialized());

  final _apiClient = ApiClient(Client());
  SnackBarMessageNotifier get _msgNotifier => read<SnackBarMessageNotifier>();

  @override
  Future<void> initialize() async {
    if (!(state is StatePreInitialized))
      return;

    setState(const DashboardModelState.preInitialized());

    DashboardModelState newModel;

    try {
      final featureProgramData = await _apiClient.queryFeaturedProgramsList();
      final newProgramsData = await _apiClient.queryNewProgramsList();
      final model = DashboardModel(
        featureProgramData: featureProgramData,
        newProgramsDataList: [newProgramsData],
      );
      newModel = DashboardModelState.success(model);
    } catch (e) {
      print(e);
      newModel = const DashboardModelState.error();
    }

    setState(newModel);
  }

  Future<void> loadMoreNewPrg() async {
    final oldState = state;
    if (oldState is StateSuccess) {
      final nextToken = oldState
          .dashboardModel.newProgramsDataList?.last?.newPrograms?.nextToken;
      if (nextToken == null) return;

      // we don't check if Disposed
      state = StateLoadmore(oldState.dashboardModel);

      try {
        final newProgramsData = await _apiClient.queryNewProgramsList(
          nextToken: nextToken,
        );

        oldState.dashboardModel.newProgramsDataList.add(newProgramsData);
        setState(StateSuccess(oldState.dashboardModel));

        if (newProgramsData.newPrograms.items.isEmpty)
          _msgNotifier.notifyErrorMsg(ErrorMsg.NO_MORE_ITEM);
      } catch (e) {
        debugPrint(e.toString());
        setState(const StateError());
        _msgNotifier.notifyErrorMsg(ErrorMsg.UNKNOWN);
      }
    }
  }
}
