import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'viewmodel_channel.freezed.dart';

class ViewModelChannel extends ValueNotifier<ChannelDataResult> with ViewModelBase {
  ViewModelChannel(this._channelId) : super(const PreInitialized());

  final apiClient = ApiClient(Client());
  final String _channelId;

  @override
  Future<void> setUpData() async {
    if (value is Success)
      return;

    ChannelDataResult result;
    try {
      final data = await apiClient.queryChannelData(_channelId);
      result = Success(data);
    } catch (e) {
      print(e);
      result = const Error();
    }

    if (!isDisposed) {
      value = result;
      notifyListeners();
    }
  }
}

@freezed
abstract class ChannelDataResult with _$ChannelDataResult {
  const factory ChannelDataResult.preInitialized() = PreInitialized;
  const factory ChannelDataResult.success(ChannelData channelData) = Success;
  const factory ChannelDataResult.error() = Error;
}
