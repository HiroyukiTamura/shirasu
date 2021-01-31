import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'screen_image_license.g.dart';

final _kPrvSnackBarMsgNotifier =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvSnackMsg = Provider.autoDispose<SnackData>((ref) {
  final state = ref.watch(_kPrvSnackBarMsgNotifier.state);
  return SnackData(
    state.snackMsg,
    Dimens.SNACK_BAR_DEFAULT_MARGIN,
  );
});

@swidget
Widget screenImageLicense() => SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.ITEM_TITLE_IMAGE_LICENCE),
        ),
        body: SnackEventListener(
          provider: _kPrvSnackMsg,
          child: ListView(
            children: const [
              _ListTileRobot(),
            ],
          ),
        ),
      ),
    );

class _ListTileRobot extends StatelessWidget {
  const _ListTileRobot({Key key}) : super(key: key);

  static const _TEXT_STYLE = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) => ListTile(
        title: RichText(
          text: TextSpan(
            style: _TEXT_STYLE,
            children: [
              _autoLink(
                context: context,
                text: 'Roboto',
                url: UrlUtil.URL_IMG_LICENSE_ROBOTO,
              ),
              const TextSpan(text: ' by '),
              _autoLink(
                context: context,
                text: 'Icons Mind',
                url: UrlUtil.URL_IMG_LICENSE_ICONS_MIND,
              ),
            ],
          ),
        ),
      );

  TextSpan _autoLink({
    @required BuildContext context,
    @required String text,
    @required String url,
  }) {
    final linkStyle = TextStyle(
      color: Theme.of(context).accentColor,
      decoration: TextDecoration.underline,
    );

    return TextSpan(
      text: text,
      style: linkStyle,
      recognizer: TapGestureRecognizer()
        ..onTap = () async => Util.launchUrl(
              context,
              url,
              () => context
                  .read(_kPrvSnackBarMsgNotifier)
                  .notifyMsg(const SnackMsg.unknown(), false),
            ),
    );
  }
}
