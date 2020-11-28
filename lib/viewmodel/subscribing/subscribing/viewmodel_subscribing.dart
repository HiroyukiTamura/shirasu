import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/viewmodel/base/viewmodel_base.dart';
import 'package:shirasu/viewmodel/subscribing/subscribing/state_subscribing.dart';

class ViewModelSubscribing
    extends DisposableValueNotifier<FeatureProgramStateGroup>
    with ViewModelBase {
  ViewModelSubscribing() : super(const FeatureProgramStateImpl());

  final _apiClient = ApiClient(Client());

  @override
  Future<void> initialize() async => runLoader(
      runOnlyOnce: true,
      trying: () async {
        final data = await _apiClient.queryFeaturedProgramsList();
        return FeatureProgramSuccessData(data);
      });
}
