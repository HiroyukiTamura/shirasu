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
}
