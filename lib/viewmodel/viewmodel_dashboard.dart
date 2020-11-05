import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/dashboard_model.dart';

class ViewModelDashBoard extends ValueNotifier<DashboardModel> {
  ViewModelDashBoard() : super(null);

  final _apiClient = ApiClient(Client());

  Future<void> requestPrograms() async {
    final featureProgramData = await _apiClient.queryFeaturedProgramsList();
    final newProgramsData = await _apiClient.queryNewProgramsList();

    value = DashboardModel(
      featureProgramData: featureProgramData,
      newProgramsData: newProgramsData,
    );
  }

  Future<ApiClientResult> loadMoreNewPrg() async {
    final nextToken = value?.newProgramsDataList?.last?.newPrograms?.nextToken;
    if (nextToken == null)
      return ApiClientResult.FAILURE;

    try {
      final newProgramsData = await _apiClient.queryNewProgramsList(
            nextToken: nextToken,
          );
      value.appendNewPrograms(newProgramsData);
      notifyListeners();
      if (newProgramsData.newPrograms.items.isEmpty)
        return ApiClientResult.NO_MORE;

      return ApiClientResult.SUCCESS;

    } catch (e) {
      debugPrint(e.toString());
      return ApiClientResult.FAILURE;
    }
  }
}

enum ApiClientResult {
  SUCCESS, FAILURE, NO_MORE
}

