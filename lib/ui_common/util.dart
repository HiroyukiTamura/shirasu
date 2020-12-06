import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

class Util {

  const Util._();

  static String convert2SnackText(ErrorMsg msg) {
    switch(msg) {
      case ErrorMsg.UNKNOWN:
        return Strings.SNACK_ERR;
      case ErrorMsg.NO_MORE_ITEM:
        return Strings.SNACK_NO_MORE_ITEM;
      default:
        throw UnsupportedError('unexpected error');
    }
  }
}