import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';

class ViewModelChannel extends ViewModelBase<ChannelModel> {
  ViewModelChannel(Reader reader, this._channelId)
      : super(
          reader,
          const ChannelModel.preInitialized(),
        );

  final String _channelId;

  int tabIndex = 0;

  SnackBarMessageNotifier get _snackBarMsgNotifier => reader(kPrvSnackBarChannel(_channelId));

  @override
  Future<void> initialize() async {
    if (state != const ChannelModel.preInitialized()) return;

    final result = await logger.guardFuture(() async {
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

    if (mounted)
      result.when(success: (data) {
        state = data;
      }, failure: (e) {
        state = ChannelModel.error(toErrMsg(e));
        if (e is UnauthorizedException) pushAuthErrScreen(e.detectedByTime);
      });
  }

  Future<void> loadMorePrograms() async =>
      state.whenSuccess((dataWrapper) async {
        if (dataWrapper.loading) return;

        final nextToken = dataWrapper.data.channel.programs.nextToken;
        if (nextToken == null) return;

        // we don't check if Disposed
        state = ChannelModel.success(dataWrapper.copyWith(
          loading: true,
        ));

        final result = await logger.guardFuture(() async {
          await connectivityRepository.ensureNotDisconnect();

          return graphQlRepository
              .queryChannelData(
                _channelId,
                nextToken: nextToken,
              )
              .timeout(GraphQlRepository.TIMEOUT);
        });
        if (mounted)
          result.when(success: (data) {
            state = state.copyWithAdditionalPrograms(data.channel.programs);

            if (data.channel.programs.items.isEmpty)
              notifySnackMsg(const SnackMsg.noMoreItem());
          }, failure: (e) {
            notifySnackMsg(toNetworkSnack(e));
            state = ChannelModel.success(dataWrapper.copyWith(
              loading: false,
            ));
          });
      });

  void notifySnackMsg(SnackMsg snackMsg) =>
      _snackBarMsgNotifier.notifyMsg(snackMsg, false);

  Future<void> requestPermission() async {

    final grant = await FirebaseMessaging.instance.requestPermission();
    switch (grant.authorizationStatus) {
      case AuthorizationStatus.authorized:
      case AuthorizationStatus.provisional:
      FirebaseMessaging.instance.getInitialMessage();
        break;
      default:
        return;
    }
  }
}
