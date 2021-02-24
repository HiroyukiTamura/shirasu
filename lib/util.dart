import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/client/logger_repository_impl.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:dartx/dartx.dart';

class Util {
  const Util._();

  static const JP_TAX_RATIO = 0.1;

  static const LANDSCAPE_ORIENTATIONS = [
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
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
    final duration = Duration(seconds: sec);
    final dateTime = DateTime.fromMillisecondsSinceEpoch(
      duration.inMilliseconds,
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
