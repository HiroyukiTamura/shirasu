import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

//todo debug
class SnackBarMessageNotifier extends StateNotifier<ErrorMsg> {
  SnackBarMessageNotifier() : super(null);

  void notifyErrorMsg(ErrorMsg errorMsg) => state = errorMsg;

  void clear() => state = null;
}

enum ErrorMsg {
  UNKNOWN, NO_MORE_ITEM, CANT_OPEN_URL,
}