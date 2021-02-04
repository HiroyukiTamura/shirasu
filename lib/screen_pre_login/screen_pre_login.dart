import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/no_effect_scroll_behavior.dart';
import 'package:shirasu/ui_common/ui_util.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/extension.dart';

part 'screen_pre_login.g.dart';

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

//todo horizontal screen
class ScreenPreLogin extends StatelessWidget {
  const ScreenPreLogin();

  static const _NOTE_LIST = [
    Strings.PRE_LOGIN_NOTE_1,
    Strings.PRE_LOGIN_NOTE_2,
    Strings.PRE_LOGIN_NOTE_3
  ];

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Scaffold(
        body: SnackEventListener(
          provider: _kPrvSnackMsg,
          child: Stack(
            children: [
              const _Background(),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 48,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const _HeaderLogo(),
                    Expanded(
                      child: ScrollConfiguration(
                        behavior: const NoEffectScrollBehavior(),
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 48),
                          itemCount: _NOTE_LIST.length,
                          itemBuilder: (BuildContext context, int index) =>
                              _Note(text: _NOTE_LIST[index]),
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(height: 16),
                        ),
                      ),
                    ),
                    _Button(
                      text: Strings.PRE_LOGIN_REGISTER_BTN_VALUE,
                      btnColor: Colors.white,
                      textColor: Theme.of(context).primaryColor,
                      onTap: () => _onTapRegister(context),
                    ),
                    const SizedBox(height: 24),
                    _Button(
                      text: Strings.PRE_LOGIN_LOGIN_BTN_VALUE,
                      btnColor: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      onTap: () => _onTapLogin(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ));

  void _onTapRegister(BuildContext context) => Util.launchUrl(
        context,
        UrlUtil.URL_HOME,
        () => context
            .read(_kPrvSnackBarMsgNotifier)
            .notifyMsg(const SnackMsg.unknown(), false),
      );

  void _onTapLogin(BuildContext context) =>
      context.pushPage(const GlobalRoutePath.auth());
}

//todo update logo style
@swidget
Widget _headerLogo() => Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.svg.logoOfficial.svg(
            height: 48,
            color: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.clear_rounded,
              color: Colors.white,
              size: 40,
            ),
          ),
          Assets.svg.appLogoContent.supportWeb().toWidget(
                height: 60,
              ),
        ],
      ),
    );

@swidget
Widget _button(
  BuildContext context, {
  @required String text,
  @required Color btnColor,
  @required Color textColor,
  @required VoidCallback onTap,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SizedBox(
        width: double.infinity,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: kCircleBorderRadius,
          ),
          color: btnColor,
          onPressed: onTap,
          padding: EdgeInsets.symmetric(
            vertical: 4,
            horizontal: Theme.of(context).buttonTheme.padding.horizontal,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: FontSize.S16,
              height: TextHeight.TEXT_HEIGHT,
            ),
          ),
        ),
      ),
    );

@swidget
Widget _note({
  @required String text,
}) =>
    Row(
      children: [
        const Icon(
          Icons.check,
          color: Colors.white,
        ),
        const SizedBox(width: 24),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              height: TextHeight.TEXT_HEIGHT,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );

@swidget
Widget _background(
  BuildContext context,
) =>
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).scaffoldBackgroundColor,
          ],
        ),
      ),
    );
