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
              _ListTileAutoText(
                text1st: 'Roboto',
                url1st: UrlUtil.URL_IMG_LICENSE_ROBOTO,
                text2nd: 'Icons Mind',
                url2nd: UrlUtil.URL_IMG_LICENSE_ICONS_MIND,
              ),
              _ListTileAutoText(
                text1st: 'eel',
                url1st: UrlUtil.URL_IMG_LICENSE_EEL,
                text2nd: 'Turkkub',
                url2nd: UrlUtil.URL_IMG_LICENSE_TURKKUB,
              ),
              _ListTile(
                title: 'Background vector created by drawnhy97 - www.freepik.com',
                url: UrlUtil.URL_IMG_LICENSE_BG_FREEPIK,
              ),
              _ListTile(
                title: 'Animation by LottieFiles on LottieFiles',
                url: UrlUtil.URL_IMG_LICENSE_LOTTIE,
              ),
            ],
          ),
        ),
      ),
    );

class _ListTileAutoText extends StatelessWidget {
  const _ListTileAutoText({
    @required this.text1st,
    @required this.text2nd,
    @required this.url1st,
    @required this.url2nd,
    Key key,
  }) : super(key: key);

  final String text1st;
  final String url1st;
  final String text2nd;
  final String url2nd;

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
                text: text1st,
                url: url1st,
              ),
              const TextSpan(text: ' by '),
              _autoLink(
                context: context,
                text: text2nd,
                url: url2nd,
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
Widget _listTile(BuildContext context, {
  @required String title,
  @required String url,
}) => ListTile(
      title: Text(title),
      onTap: () async => context.launchUrl(url),
    );

extension on BuildContext {
  Future<void> launchUrl(String url) async => Util.launchUrl(
        this,
        url,
        () => read(_kPrvSnackBarMsgNotifier)
            .notifyMsg(const SnackMsg.unknown(), false),
      );
}
