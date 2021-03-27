import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/repository/ntf_message_repository.dart';
import 'package:shirasu/repository/ntf_message_repository_impl.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';
import 'package:shirasu/viewmodel/background_task.dart';

class ViewModelChannel extends ViewModelBase<ChannelModel> {
  ViewModelChannel(Reader reader, this._channelId)
      : super(
          reader,
          const ChannelModel.preInitialized(),
        );

  final String _channelId;

  int tabIndex = 0;

  SnackBarMessageNotifier get _snackBarMsgNotifier =>
      reader(kPrvSnackBarChannel(_channelId));

  NtfMessageRepository get _fcmRepository => reader(kPrvNtfMessage);

  @override
  Future<void> initialize() async {
    if (state != const ChannelModel.preInitialized()) return;

    final result = await logger.guardFuture(() async {
      final data = await authOperationLock.synchronized(() async {
        await connectivityRepository.ensureNotDisconnect();
        await interceptor.refreshAuthTokenIfNeeded();
        return graphQlRepository
            .queryChannelData(_channelId)
            .timeout(GraphQlRepository.TIMEOUT);
      });
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

        final result = await logger
            .guardFuture(() async => authOperationLock.synchronized(() async {
                  await connectivityRepository.ensureNotDisconnect();
                  await interceptor.refreshAuthTokenIfNeeded();
                  return graphQlRepository
                      .queryChannelData(
                        _channelId,
                        nextToken: nextToken,
                      )
                      .timeout(GraphQlRepository.TIMEOUT);
                }));
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

  Future<void> subscribeChannel() async => await state.whenSuccess(
        (data) async {
          final permission = await _fcmRepository.requestPermission();
          if (!mounted) return;

          if (permission) {
            await _fcmRepository
                .subscribeChannel(HiveFcmChannelData.parse(data.data.channel));
            if (mounted) notifySnackMsg(const SnackMsg.fcmSubscribe());
          } else {
            notifySnackMsg(const SnackMsg.fcmPermissionDenied());
          }
        },
      );

  Future<void> unSubscribeChannel() async => state.maybeWhen(
        orElse: () {},
        success: (data) async {
          await _fcmRepository.unsubscribeChannel(_channelId);
          notifySnackMsg(const SnackMsg.fcmUnsubscribe());
        },
      );
}
