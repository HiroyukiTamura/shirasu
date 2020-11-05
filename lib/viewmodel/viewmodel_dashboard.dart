import 'package:flutter/widgets.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';

class ViewModelDashBoard extends ValueNotifier<FeatureProgramData> {

  ViewModelDashBoard() : super(null);

  final _apiClient = ApiClient(Client());
  FeatureProgramData featureProgramData;

  Future<void> requestPrograms() async {
    featureProgramData = await _apiClient.queryFeaturedProgramsList();
    value = featureProgramData;
  }
}