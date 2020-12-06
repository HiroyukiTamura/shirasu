import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'viewmodel_channel.freezed.dart';

class ViewModelChannel extends ViewModelBase<ChannelDataResult> {
  ViewModelChannel(this._channelId) : super(const PreInitialized());

  final _apiClient = ApiClient(Client());
  final String _channelId;

  @override
  Future<void> initialize() async {
    if (!(state is PreInitialized))
      return;

    try {
      state = const ChannelDataResult.loading();
      final data = await _apiClient.queryChannelData(_channelId);
      setState(ChannelDataResult.success(data));
    } catch (e) {
      print(e);
      setState(const ChannelDataResult.error());
    }
  }
}

@freezed
abstract class ChannelDataResult with _$ChannelDataResult {
  const factory ChannelDataResult.preInitialized() = PreInitialized;
  const factory ChannelDataResult.loading() = Loading;
  const factory ChannelDataResult.success(ChannelData channelData) = Success;
  const factory ChannelDataResult.error() = Error;
}
