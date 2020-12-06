import 'package:flutter/cupertino.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:tuple/tuple.dart';

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

  static Future<Tuple2<T, S>> wait2<T, S>(Future<T> Function() predicate1, Future<S> Function() predicate2) async {
    T t;
    S s;
    await Future.wait([
      predicate1().then((it) => t = it),
      predicate2().then((it) => s = it),
    ]);
    return Tuple2(t, s);
  }
}