import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/model/result.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

import 'model/model_channel.dart';

class ViewModelChannel extends ViewModelBase<ChannelModel> {
  ViewModelChannel(Reader reader, this._channelId)
      : super(
          reader,
          const ChannelModel.preInitialized(),
        );

  final String _channelId;

  int tabIndex = 0;

  @override
  Future<void> initialize() async {
    if (state != const ChannelModel.preInitialized()) return;

    final result = await Result.guardFuture(() async {
      await connectivityRepository.ensureNotDisconnect();
      final data = await graphQlRepository
          .queryChannelData(_channelId)
          .timeout(GraphQlRepository.TIMEOUT);
      return ChannelModel.success(
        ChannelDataWrapper(
          data: data,
          loading: false,
        ),
      );
    });

    result.when(success: (data) {
      if (mounted) state = data;
    }, failure: (e) {
      print(e);
      if (mounted) state = ChannelModel.error(toErrMsg(e));
      if (e is UnauthorizedException) pushAuthExpireScreen();
    });
  }

  Future<void> loadMorePrograms() async =>
      state.whenSuccess((dataWrapper) async {
        if (dataWrapper.loading) return;

        final nextToken = dataWrapper.data.channel.programs.nextToken;
        if (nextToken == null) return;

        // we don't check if Disposed
        state = ChannelModel.success(dataWrapper.copyWith(
          data: dataWrapper.data,
          loading: true,
        ));

        try {
          await connectivityRepository.ensureNotDisconnect();

          final newOne = await graphQlRepository
              .queryChannelData(
                _channelId,
                nextToken: nextToken,
              )
              .timeout(GraphQlRepository.TIMEOUT);

          state = state.copyWithAdditionalPrograms(newOne.channel.programs);

          if (newOne.channel.programs.items.isEmpty)
            notifySnackMsg(const SnackMsg.noMoreItem());

          return;
        } catch (e) {
          debugPrint(e.toString());

          SnackMsg msg;
          if (e is NetworkDisconnectException)
            msg = const SnackMsg.networkDisconnected();
          else if (e is TimeoutException)
            msg = const SnackMsg.networkTimeout();
          else
            msg = const SnackMsg.unknown();
          if (mounted) {
            notifySnackMsg(msg);
            state = ChannelModel.success(dataWrapper.copyWith(
              data: dataWrapper.data,
              loading: false,
            ));
          }
        }
      });

  void notifySnackMsg(SnackMsg snackMsg) =>
      snackBarMsgNotifier.notifyMsg(snackMsg, false);
}
