import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'btm_sheet_sns_share.g.dart';

const double _LIST_TILE_HEIGHT = 56;
const double _PAD_V = 16;

typedef SnackCallback = void Function(SnackMsg msg);

/// todo deep link for this app
@swidget
Widget btmSheetSnsShare({
  @required ShareUrl shareUrl,
  @required SnackCallback snackCallback,
}) {
  assert(shareUrl.url != null);
  final children = [
    if (shareUrl.urlTwitter != null)
      _TileTwitter(urlTwitter: shareUrl.urlTwitter),
    if (shareUrl.urlFaceBook != null)
      _TileFacebook(urlFaceBook: shareUrl.urlFaceBook),
    _TileUrl(
      url: shareUrl.url,
      snackCallback: snackCallback,
    )
  ];
  return SizedBox(
    height: _LIST_TILE_HEIGHT * children.length + _PAD_V * 2,
    child: ListView(
      padding: const EdgeInsets.symmetric(vertical: _PAD_V),
      children: children,
    ),
  );
}

class _ListTile extends StatelessWidget {
  const _ListTile({
    Key key,
    @required this.onTap,
    @required this.title,
    @required this.icon,
  }) : super(key: key);

  final void Function() onTap;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 36),
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        onTap: onTap,
      );
}

@swidget
Widget _tileTwitter(
  BuildContext context, {
  @required String urlTwitter,
}) =>
    _ListTile(
      onTap: () async {
        Navigator.of(context).pop();
        await Util.launchUrl(context, urlTwitter);
      },
      title: Strings.SHARE_TWITTER,
      icon: FontAwesomeIcons.twitter,
    );

@swidget
Widget _tileFacebook(
  BuildContext context, {
  @required String urlFaceBook,
}) =>
    _ListTile(
      onTap: () async {
        Navigator.of(context).pop();
        await Util.launchUrl(context, urlFaceBook);
      },
      title: Strings.SHARE_FACEBOOK,
      icon: FontAwesomeIcons.facebook,
    );

@swidget
Widget _tileUrl(
  BuildContext context, {
  @required String url,
  @required SnackCallback snackCallback,
}) =>
    _ListTile(
      onTap: () async {
        bool err = false;
        try {
          await Clipboard.setData(ClipboardData(text: url));
        } catch (e) {
          print(e);
          err = true;
        }
        Navigator.of(context).pop();
        final msg = err ? const SnackMsg.unknown() : const SnackMsg.urlCopied();
        snackCallback(msg);
      },
      title: Strings.COPY_URL,
      icon: Icons.copy,
    );
