import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'screen_image_license.g.dart';

final _kPrvSnackBarMsgNotifier =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvSnackData = Provider.autoDispose<SnackData>((ref) {
  final state = ref.watch(_kPrvSnackBarMsgNotifier.state);
  return SnackData(
    state.snackMsg,
    Dimens.SNACK_BAR_DEFAULT_MARGIN,
  );
});

@swidget
Widget screenImageLicense(BuildContext context) => SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.ITEM_TITLE_IMAGE_LICENCE),
        ),
        body: SnackEventListener(
          provider: _kPrvSnackData,
          child: ListView(
            children: const [
              _ListTileRobot(),
              _ListTileLottie(),
            ],
          ),
        ),
      ),
    );

//todo app icon
class _ListTileRobot extends StatelessWidget {
  const _ListTileRobot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        title: RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: FontSize.S18,
            ),
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
  }) =>
      TextSpan(
        text: text,
        style: TextStyle(
          color: Theme.of(context).accentColor,
          decoration: TextDecoration.underline,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () async => context.launchUrl(url),
      );
}

@swidget
Widget _listTileLottie(BuildContext context) => ListTile(
      title: const Text(Strings.LICENSE_VALUE_LOTTIE),
      onTap: () async => context.launchUrl(UrlUtil.URL_IMG_LICENSE_LOTTIE),
    );

extension on BuildContext {
  Future<void> launchUrl(String url) async => Util.launchUrl(
        this,
        url,
        () => read(_kPrvSnackBarMsgNotifier)
            .notifyMsg(const SnackMsg.unknown(), false),
      );
}
