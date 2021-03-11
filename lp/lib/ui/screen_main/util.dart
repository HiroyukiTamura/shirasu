import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:lp/resources/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sentry/sentry.dart';

Future<void> launchUrl(String url) async {
  if (await canLaunch(url))
    try {
      await launch(url);
    } catch (e) {
      await Sentry.captureException(e);
    }
}

WidgetSpan linkText(
  BuildContext context, {
  required String text,
  required String url,
  TextStyle style = Styles.BODY_TEXT_LINK,
}) =>
    WidgetSpan(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async => launchUrl(url),
          child: Text(
            text,
            style: style,
          ),
        ),
      ),
    );
