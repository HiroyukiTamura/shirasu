import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/util/exceptions.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

import '../main.dart';
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
  GraphQlRepository get graphQlRepository => reader(kPrvGraphqlRepository);

  @override
  Future<void> initialize() async {
    if (state != const ChannelModel.preInitialized()) return;

    try {
      final data = await graphQlRepository.queryChannelData(_channelId);
      trySet(ChannelModel.success(
        ChannelDataWrapper(
          data: data,
          loading: false,
        ),
      ));
    } on UnauthorizedException catch (e) {
      print(e);
      pushAuthExpireScreen();
    } catch (e) {
      print(e);
      trySet(const ChannelModel.error());
    }
  }

  Future<void> loadMorePrograms() async {
    state.maybeWhen(
        orElse: () {},
        success: (dataWrapper) async {
          final nextToken = dataWrapper.data.channel.programs.nextToken;
          if (nextToken == null) return;

          if (dataWrapper.loading)
            return;

          // we don't check if Disposed
          state = ChannelModel.success(dataWrapper.copyWith(
            data: dataWrapper.data,
            loading: true,
          ));

          try {
            final newOne = await graphQlRepository.queryChannelData(
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
              state = const ChannelModel.error();
              _msgNotifier.notifyMsg(const SnackMsg.unknown(), false);
            }
          }
        });
  }
}
