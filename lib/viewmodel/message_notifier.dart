import 'package:shirasu/viewmodel/viewmodel_base.dart';

//todo debug
class SnackBarMessageNotifier extends DisposableValueNotifier<ErrorMsg> {
  SnackBarMessageNotifier() : super(null);

  void notifyErrorMsg(ErrorMsg errorMsg) => value = errorMsg;

  void clear() => value = null;
}

enum ErrorMsg {
  UNKNOWN, NO_MORE_ITEM,
}