import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/gen/fonts.gen.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/branding.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shirasu/util/types.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'screen_web_no_support.g.dart';

final _kPrvSnackBarMsgNotifier =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (_) => SnackBarMessageNotifier());

final _kPrvSnackData = Provider.autoDispose<SnackData>((ref) {
  final state = ref.watch(_kPrvSnackBarMsgNotifier.state);
  return SnackData(
    state.snackMsg,
    Dimens.SNACK_BAR_DEFAULT_MARGIN,
  );
});

class ScreenWebNoSupport extends StatelessWidget {
  const ScreenWebNoSupport();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          body: SnackEventListener(
            provider: _kPrvSnackData,
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const HeaderLogo(),
                    const SizedBox(height: 64),
                    _TileAndroid(
                      onTapBtn: (context) async =>
                          _onTapGooglePlayBadge(context),
                    ),
                    const SizedBox(height: 24),
                    _TileIos(
                      onTapUrlCopyBtn: (context) async => _onTapUrlCopyBtn(
                          context, UrlUtil.URL_APP_WEB_HOSTING),
                    ),
                    const SizedBox(height: 24),
                    const _TileWeb(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Future<void> _onTapGooglePlayBadge(BuildContext context) async =>
      Util.launchUrl(
          context,
          UrlUtil.URL_GOOGLE_PLAY,
          () => context
              .read(kPrvLogger)
              .e(ArgumentError.value(UrlUtil.URL_GOOGLE_PLAY), null));

  Future<void> _onTapUrlCopyBtn(BuildContext context, String url) async {
    final result = await context
        .read(kPrvLogger)
        .guardFuture(() async => Clipboard.setData(ClipboardData(
              text: url,
            )));
    result.when(
      success: (_) => context
          .read(_kPrvSnackBarMsgNotifier)
          .notifyMsg(const SnackMsg.urlCopied(), false),
      failure: (_) => context
          .read(_kPrvSnackBarMsgNotifier)
          .notifyMsg(const SnackMsg.unknown(), false),
    );
  }
}

@swidget
Widget _tileAndroid(
  BuildContext context, {
  @required OnTap onTapBtn,
}) =>
    _ListTile(
      leading: Icons.android,
      title: 'Android',
      subtitle: MouseRegion(
        cursor: SystemMouseCursors.click, //todo refactor
        child: Container(
          width: 160,
          height: 64,
          alignment: Alignment.topLeft,
          child: GestureDetector(
            onTap: () => onTapBtn(context),
            child: Assets.png.googlePlayBadge.image(),
          ),
        ),
      ),
    );

@swidget
Widget _tileIos(
  BuildContext context, {
  @required OnTap onTapUrlCopyBtn,
}) =>
    _ListTile(
      leading: FontAwesomeIcons.apple,
      title: 'iOS',
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              style: const TextStyle(
                height: TextHeight.TEXT_HEIGHT,
                color: Colors.white,
                fontFamily: FontFamily.notoSansJp,
              ),
              children: [
                const TextSpan(
                  text: Strings.SCREEN_PWA_GUIDE_1,
                ),
                WidgetSpan(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                    child: Assets.svg.iconIosShare.svg(
                      height: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                const TextSpan(
                  text: Strings.SCREEN_PWA_GUIDE_2,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () => onTapUrlCopyBtn(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Text(Strings.SCREEN_PWA_COPY_URL),
            ),
          ),
        ],
      ),
    );

@swidget
Widget _tileWeb() => const _ListTile(
      leading: FontAwesomeIcons.chrome,
      title: 'web',
      subtitle: Text(
        Strings.SCREEN_WEB_NO_SUPPORT,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );

@swidget
Widget _listTile({
  @required IconData leading,
  @required String title,
  @required Widget subtitle,
}) =>
    ListTile(
      leading: Icon(
        leading,
        color: Colors.white,
      ),
      title: Text(title),
      subtitle: subtitle,
    );
