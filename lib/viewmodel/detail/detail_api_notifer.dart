import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/viewmodel/base/viewmodel_base.dart';
import 'package:shirasu/viewmodel/detail/detail_api_state.dart';

class DetailApiNotifier
    extends DisposableValueNotifier<ProgramDetailStateGroup>
    with ViewModelBase {
  DetailApiNotifier(this.id) : super(const ProgramDetailStateImpl());

  final _apiClient = ApiClient(Client());

  final String id;

  @override
  Future<void> initialize() async => runLoader(
      runOnlyOnce: true,
      trying: () async {
        final result = await _apiClient.queryProgramDetail(id);
        return ProgramDetailSuccessData(result);
      });
}
