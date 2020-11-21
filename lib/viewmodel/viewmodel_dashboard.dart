import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';

class ViewModelDashBoard extends ValueNotifier<DashboardModelState> {
  ViewModelDashBoard() : super(const DashboardModelState.preInitialized());

  final _apiClient = ApiClient(Client());
  bool _isLoadMoreCommanded = false;
  bool _isMounted = true;

  bool get isMounted => _isMounted;

  void onDispose() => _isMounted = false;

  Future<void> requestPrograms() async {
    try {
      final featureProgramData = await _apiClient.queryFeaturedProgramsList();
      final newProgramsData = await _apiClient.queryNewProgramsList();

      value = DashboardModelState.success(DashboardModel(
            featureProgramData: featureProgramData,
            newProgramsData: newProgramsData,
          ));
    } catch (e) {
      print(e);
      value = const StateError();
    }
  }

  //todo exclusion control
  Future<ApiClientResult> loadMoreNewPrg() async {
    if (_isLoadMoreCommanded)
      return ApiClientResult.CANCELED;

    _isLoadMoreCommanded = true;

    final v = value;
    if (v is StateSuccess) {
      final nextToken = v.dashboardModel.newProgramsDataList?.last?.newPrograms?.nextToken;
      if (nextToken == null)
        return ApiClientResult.FAILURE;

      try {
        final newProgramsData = await _apiClient.queryNewProgramsList(
          nextToken: nextToken,
        );
        v.dashboardModel.appendNewPrograms(newProgramsData);
        notifyListeners();
        if (newProgramsData.newPrograms.items.isEmpty)
          return ApiClientResult.NO_MORE;

        return ApiClientResult.SUCCESS;

      } catch (e) {
        debugPrint(e.toString());
        return ApiClientResult.FAILURE;
      }

    } else
      return ApiClientResult.FAILURE;
  }
}

enum ApiClientResult {
  SUCCESS, FAILURE, NO_MORE, CANCELED,
}

