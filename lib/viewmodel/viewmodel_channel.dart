import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/connectivity_repository.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/network_image_repository_impl.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

import '../main.dart';
import 'model/error_msg_common.dart';
import 'model/model_channel.dart';

class ViewModelChannel extends ViewModelBase<ChannelModel> {
  ViewModelChannel(Reader reader, this._channelId)
      : super(
          reader,
          const ChannelModel.preInitialized(),
        );

  final String _channelId;

  SnackBarMessageNotifier get _msgNotifier => reader(kPrvSnackBar);

  int tabIndex = 0;

  @override
  Future<void> initialize() async {
    if (state != const ChannelModel.preInitialized()) return;

    bool authExpired = false;
    ChannelModel newState;
    try {
      await connectivityRepository.ensureNotDisconnect();
      final data = await graphQlRepository
          .queryChannelData(_channelId)
          .timeout(GraphQlRepository.TIMEOUT);
      newState = ChannelModel.success(
        ChannelDataWrapper(
          data: data,
          loading: false,
        ),
      );
    } catch (e) {
      print(e);
      newState = ChannelModel.error(toErrMsg(e));
      authExpired = e is UnauthorizedException;
    }

    if (!mounted) return;
    state = newState;
    if (authExpired) pushAuthExpireScreen();
  }

  Future<void> loadMorePrograms() async => state.maybeWhen(
      orElse: () {},
      success: (dataWrapper) async {
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
            _msgNotifier.notifyMsg(const SnackMsg.noMoreItem(), false);

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
            _msgNotifier.notifyMsg(msg, false);
            state = ChannelModel.success(dataWrapper.copyWith(
              data: dataWrapper.data,
              loading: false,
            ));
          }
        }
      });
}
