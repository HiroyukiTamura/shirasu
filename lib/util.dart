import 'package:flutter/cupertino.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Util {
  const Util._();

  static const JP_TAX_RATIO = 0.1;

  static String convert2SnackText(ErrorMsg msg) {
    switch (msg) {
      case ErrorMsg.UNKNOWN:
        return Strings.SNACK_ERR;
      case ErrorMsg.NO_MORE_ITEM:
        return Strings.SNACK_NO_MORE_ITEM;
      case ErrorMsg.CANT_OPEN_URL:
        return Strings.SNACK_CANT_OPEN_URL;
      default:
        throw UnsupportedError('unexpected error');
    }
  }

  static Future<Tuple2<T, S>> wait2<T, S>(
      Future<T> Function() predicate1, Future<S> Function() predicate2) async {
    T t;
    S s;
    await Future.wait([
      predicate1().then((it) => t = it),
      predicate2().then((it) => s = it),
    ]);
    return Tuple2(t, s);
  }

  static Future<void> launchUrl(BuildContext context, String url) async {
    if (!await canLaunch(url)) {
      context.read(snackBarMsgProvider).notifyErrorMsg(ErrorMsg.CANT_OPEN_URL);
      return;
    }

    await launch(url);
  }
}