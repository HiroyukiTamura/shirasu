import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:dartx/dartx.dart';

class Util {
  const Util._();

  static const JP_TAX_RATIO = 0.1;
  /// ref: https://github.com/HiroyukTamura/shirasu/blob/369e058a76c41018adb55c94499f448cbe6de6fb/research/dashboard/main.js#L4416
  static const AUTH0_CLIENT_ID = 'kyjTJ5lQ7RU7mAyeSmX8nLYcxVRtA3nB';

  static const LANDSCAPE_ORIENTATIONS = [
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ];

  static const PORTRAIT_ORIENTATIONS = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

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

  static Future<Tuple3<S,T, U>> wait3<S,T, U>(
      Future<S> Function() predicate1, Future<T> Function() predicate2, Future<U> Function() predicate3) async {
    S s;
    T t;
    U u;
    await Future.wait([
      predicate1().then((it) => s = it),
      predicate2().then((it) => t = it),
      predicate3().then((it) => u = it),
    ]);
    return Tuple3(s, t, u);
  }

  static Future<void> launchUrl(
      BuildContext context, String url, VoidCallback onUrlInvalid) async {
    if (!await canLaunch(url)) {
      onUrlInvalid();
      return;
    }

    await launch(url);
  }

  static Image defaultPrgThumbnail(
      BuildContext context, String url, dynamic error) {
    onImageError(context, url: url, error: error);
    return Assets.png.defaultThumbnail.image();
  }

  static Widget defaultChannelIcon(
      BuildContext context, String url, dynamic error) {
    onImageError(context, url: url, error: error);
    return Assets.svg.defaultChannelIcon.supportWeb().toWidget();
  }

  static Widget defaultHandoutThumbnail(
      BuildContext context, String url, dynamic error) {
    onImageError(context, url: url, error: error);
    return Assets.jpeg.defaultHandoutThumbnail.image();
  }

  static Future<void> onImageError(BuildContext context,
          {String url, dynamic error, StackTrace stackTrace}) async =>
      context.read(kPrvLogger).e(error, stackTrace, reason: 'url: $url');

  // todo improve logic
  static String sec2Hms(int sec) {
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      sec * 1000,
      isUtc: true,
    );
    return DateFormat('hh:mm:ss').format(dateTime);
  }

  // todo improve logic
  static String formatDurationStyled(Duration duration) {
    final dateTime = DateTime.fromMicrosecondsSinceEpoch(
        duration.inMicroseconds,
        isUtc: true);
    return duration.inHours == 0
        ? DateFormat('mm:ss').format(dateTime)
        : DateFormat('hh:mm:ss').format(dateTime);
  }

  // todo improve logic
  static String formatDurationHHMM(Duration duration, bool withPlusMinus) {
    final dateTime = DateTime(2000).toUtc() + duration.abs();
    final mmss = DateFormat('mm:ss').format(dateTime);

    if (withPlusMinus) {
      final prefix = duration.isNegative ? '-' : '+';
      return '$prefix$mmss';
    } else
      return mmss;
  }

  static void require(bool check, [String message]) {
    if (!check) throw ArgumentError(message);
  }
}

mixin Disposable {
  void dispose();
}
