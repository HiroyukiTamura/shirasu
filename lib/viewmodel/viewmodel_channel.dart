import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/channel_data.dart';

class ViewModelChannel extends ValueNotifier<ChannelDataResultBase> {
  ViewModelChannel(this._channelId) : super(null);

  final apiClient = ApiClient(Client());
  final String _channelId;

  Future<void> setUpData() async {
    if (value is ChannelDataResultSuccess)
      return;

    try {
      final data = await apiClient.queryChannelData(_channelId);
      value = ChannelDataResultSuccess(data);
    } catch (e) {
      print(e);
      value = const ChannelDataResultError();
    }
  }
}

abstract class ChannelDataResultBase {
  const ChannelDataResultBase();
}

class ChannelDataResultSuccess extends ChannelDataResultBase {
  const ChannelDataResultSuccess(this.channelData);

  final ChannelData channelData;
}

class ChannelDataResultError extends ChannelDataResultBase {
  const ChannelDataResultError();
}
