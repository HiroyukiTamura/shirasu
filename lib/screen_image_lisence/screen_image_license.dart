import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/util.dart';

part 'screen_image_license.g.dart';

@swidget
Widget screenImageLicense() => SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.ITEM_TITLE_IMAGE_LICENCE),
        ),
        body: ListView(
          children: const [
            _ListTileRobot(),
          ],
        ),
      ),
    );

class _ListTileRobot extends StatelessWidget {
  const _ListTileRobot({Key key}) : super(key: key);

  static const _TEXT_STYLE = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final linkStyle = TextStyle(
      color: Theme.of(context).accentColor,
      decoration: TextDecoration.underline,
    );

    return ListTile(
      title: RichText(
        text: TextSpan(
          style: _TEXT_STYLE,
          children: [
            TextSpan(
              text: 'Roboto',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () async => _onTapRoboto(context),
            ),
            const TextSpan(text: ' by '),
            TextSpan(
              text: 'Icons Mind',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () async => _onTapIconsMind(context),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onTapRoboto(BuildContext context) async =>
      Util.launchUrl(context, UrlUtil.URL_IMG_LICENSE_ROBOTO);

  Future<void> _onTapIconsMind(BuildContext context) async =>
      Util.launchUrl(context, UrlUtil.URL_IMG_LICENSE_ICONS_MIND);
}
