import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/viewmodel/base/viewmodel_base.dart';
import 'package:shirasu/viewmodel/channel/state_channel.dart';

class ViewModelChannel extends DisposableValueNotifier<ChannelBaseStateGroup> with ViewModelBase {
  ViewModelChannel(this._channelId) : super(const ChannelDataResultImpl());

  final apiClient = ApiClient(Client());
  final String _channelId;

  @override
  Future<void> initialize() async => runLoader(
        runOnlyOnce: true,
        trying: () async {
          final data = await apiClient.queryChannelData(_channelId);
          return ChannelSuccessData(data);
        });
}
