import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../viewmodel/mock_viewmodel_base.dart';

class ViewModelChannelMockable extends ViewModelChannel {
  ViewModelChannelMockable(Reader reader, this.specState, String channelId) : super(reader, channelId);

  final ChannelModel specState;

  @override
  Future<void> initialize() async => state = specState;
}
