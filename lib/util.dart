import 'package:flutter/cupertino.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/ui_common/images.dart';

class Util {
  const Util._();

  static const JP_TAX_RATIO = 0.1;

  static String convert2SnackText(SnackMsg msg) {
    switch (msg) {
      case SnackMsg.UNKNOWN:
        return Strings.SNACK_ERR;
      case SnackMsg.NO_MORE_ITEM:
        return Strings.SNACK_NO_MORE_ITEM;
      case SnackMsg.CANT_OPEN_URL:
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
      context.read(snackBarMsgProvider).notifyMsg(SnackMsg.CANT_OPEN_URL);
      return;
    }

    await launch(url);
  }

  static Image defaultPrgThumbnail(BuildContext context, String url, dynamic error) {
    onImageError(url: url, error: error);
    return Assets.png.defaultThumbnail.image();
  }

  static Widget defaultChannelIcon(BuildContext context, String url, dynamic error) {
    onImageError(url: url, error: error);
    return Assets.svg.defaultChannelIcon.supportWeb().toWidget();
  }

  static void onImageError({String url, dynamic error, StackTrace stackTrace}) {
    // todo log error
    debugPrintStack(stackTrace: stackTrace);
    debugPrint(error.toString());
  }
}