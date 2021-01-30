import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:uuid/uuid.dart';

//todo debug
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

enum SnackMsg {
  UNKNOWN, NO_MORE_ITEM, CANT_OPEN_URL, URL_COPIED,
}