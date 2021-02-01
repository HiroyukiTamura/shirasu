import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/client/api_client.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:riverpod/src/framework.dart';

import '../main.dart';
import 'model/model_channel.dart';

class ViewModelChannel extends ViewModelBase<ChannelModel> {
  ViewModelChannel(this._ref, this._channelId)
      : super(
          const ChannelModel(
            result: PreInitialized(),
            loading: false,
          ),
        );

  final AutoDisposeProviderReference _ref;
  final _apiClient = ApiClient.instance();
  final String _channelId;

  SnackBarMessageNotifier get _msgNotifier => _ref.read(snackBarMsgProvider);

  int tabIndex = 0;

  @override
  Future<void> initialize() async {
    if (!(state.result is PreInitialized)) return;

    try {
      state = const ChannelModel(
          result: ChannelDataResult.loading(), loading: false);
      final data = await _apiClient.queryChannelData(_channelId);
      setState(ChannelModel(
          result: ChannelDataResult.success(data), loading: false));
    } catch (e) {
      print(e);
      setState(const ChannelModel(
          result: ChannelDataResult.error(), loading: false));
    }
  }

  Future<void> loadMorePrograms() async {
    final oldResult = state.result;
    if (oldResult is Success) {
      final nextToken = oldResult.channelData.channel.programs.nextToken;
      if (nextToken == null) return;

      // we don't check if Disposed
      state = state.copyWith(loading: true);

      try {
        final newOne = await _apiClient.queryChannelData(
          _channelId,
          nextToken: nextToken,
        );

        state = state.copyWithAdditionalPrograms(newOne.channel.programs);

        if (newOne.channel.programs.items.isEmpty)
          _msgNotifier.notifyMsg(const SnackMsg.noMoreItem(), false);

        return;
      } catch (e) {
        debugPrint(e.toString());
        if (mounted) {
          state = state.copyWith(loading: false);
          _msgNotifier.notifyMsg(const SnackMsg.unknown(), false);
        }
      }
    }
  }
}
