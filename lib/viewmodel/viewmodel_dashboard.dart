import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart' show Client;
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:riverpod/src/framework.dart';

class ViewModelDashBoard extends ViewModelBase<DashboardModel> {
  ViewModelDashBoard(this._ref)
      : super(DashboardModel.preInitialized());

  final _apiClient = ApiClient(Client());
  final AutoDisposeProviderReference _ref;
  SnackBarMessageNotifier get _msgNotifier => _ref.read(snackBarMsgProvider);

  @override
  Future<void> initialize() async {
    if (!(state is StatePreInitialized))
      return;

    setState(DashboardModel.preInitialized());

    DashboardModel newModel;

    try {
      final featureProgramData = await _apiClient.queryFeaturedProgramsList();
      final newProgramsData = await _apiClient.queryNewProgramsList();
      final data = ApiData(
        featureProgramData: featureProgramData,
        newProgramsDataList: [newProgramsData],
      );
      newModel = state.copyAsSuccess(data);
    } catch (e) {
      print(e);
      newModel = DashboardModel.error();
    }

    setState(newModel);
  }

  Future<void> loadMoreNewPrg() async {
    final oldState = state;
    if (oldState is StateSuccess) {
      final nextToken = oldState
          .apiData.newProgramsDataList?.last?.newPrograms?.nextToken;
      if (nextToken == null) return;

      // we don't check if Disposed
      state = oldState.copyAsLoadMore();

      try {
        final newProgramsData = await _apiClient.queryNewProgramsList(
          nextToken: nextToken,
        );

        oldState.apiData.newProgramsDataList.add(newProgramsData);
        setState(oldState.copyAsSuccess(oldState.apiData));

        if (newProgramsData.newPrograms.items.isEmpty)
          _msgNotifier.notifyErrorMsg(ErrorMsg.NO_MORE_ITEM);
      } catch (e) {
        debugPrint(e.toString());
        setState(DashboardModel.error());
        _msgNotifier.notifyErrorMsg(ErrorMsg.UNKNOWN);
      }
    }
  }

  void updateScrollOffset(double offset) {
    final s = state.state;
    if (s is StateSuccess)
      setState(state.copyWith(offset: offset));
  }
}
