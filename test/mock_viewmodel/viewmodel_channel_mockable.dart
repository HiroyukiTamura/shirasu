import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';

import '../viewmodel/mock_viewmodel_base.dart';

class ViewModelChannelMockable extends ViewModelChannel with MockViewModelBase {
  ViewModelChannelMockable(Reader reader, this.specState, String channelId) : super(reader, channelId);

  @override
  final ChannelModel specState;

  static AutoDisposeStateNotifierProvider<ViewModelChannel> createProvider(
      ChannelModel specState, String channelId) =>
      StateNotifierProvider.autoDispose<ViewModelChannel>(
              (ref) => ViewModelChannelMockable(ref.read, specState, channelId));
}