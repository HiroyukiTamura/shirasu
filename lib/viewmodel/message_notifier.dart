import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

//todo debug
class SnackBarMessageNotifier extends StateNotifier<SnackMsg> {
  SnackBarMessageNotifier() : super(null);

  void notifyMsg(SnackMsg snackMsg) {
    debugPrint(state.toString());
    state = snackMsg;
  }

  void clear() => state = null;
}

enum SnackMsg {
  UNKNOWN, NO_MORE_ITEM, CANT_OPEN_URL, URL_COPIED,
}