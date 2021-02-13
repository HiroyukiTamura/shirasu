import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:uuid/uuid.dart';

import 'model/notification_msg.dart';

part 'message_notifier.freezed.dart';

class SnackBarMessageNotifier extends StateNotifier<SnackMsgEvent> {
  SnackBarMessageNotifier() : super(null);

  void notifyMsg(SnackMsg snackMsg, bool btmAppBarMargin) {
    debugPrint(state.toString());
    state = SnackMsgEvent(snackMsg, btmAppBarMargin);
  }
}

class SnackMsgEvent {
  SnackMsgEvent(this.snackMsg, this.btmAppBarMargin);

  final bool btmAppBarMargin;
  final SnackMsg snackMsg;
  final String _eventKey = Uuid().v4(); // ignore: unused_field
}

@freezed
abstract class SnackMsg with _$SnackMsg, NotificationMsg {
  const factory SnackMsg.unknown() = _SnackMsgUnknownErr;

  const factory SnackMsg.noMoreItem() = _SnackMsgNoMoreItem;

  const factory SnackMsg.cantOpenUrl() = _SnackMsgCantOpenurl;

  const factory SnackMsg.urlCopied() = _SnackMsgUrlCopied;

  const factory SnackMsg.networkDisconnected() = _SnackMsgNetworkDisconnected;

  const factory SnackMsg.networkTimeout() = _SnackMsgNetworkTimeout;

  const SnackMsg._();

  @override
  String get value => when(
        unknown: () => Strings.SNACK_ERR,
        noMoreItem: () => Strings.SNACK_NO_MORE_ITEM,
        cantOpenUrl: () => Strings.SNACK_CANT_OPEN_URL,
        urlCopied: () => Strings.SNACK_URL_COPIED,
      );
}
