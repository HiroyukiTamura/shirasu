import 'dart:ui';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shirasu/client/hive_client.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_intro/body_widget.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenIntro extends StatefulWidget {
  static const double _IMG_SIZE = 128;

  @override
  _ScreenIntroState createState() => _ScreenIntroState();

  static List<PageViewModel> _listPagesViewModel(BuildContext context) => [
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: _pageBoxDecoration(color: Colors.red),
            imagePadding: const EdgeInsets.only(right: 96, top: 72, left: 96),
            titlePadding: EdgeInsets.zero,
            descriptionPadding: const EdgeInsets.only(top: 56),
          ),
          titleWidget: Text(
            Strings.INTRO_TITLE_1ST,
            style: TextStyles.introTitleStyle(context),
          ),
          bodyWidget: const BodyWidget(
            stringList: [Strings.INTRO_DESC_1ST, Strings.INTRO_DESC_1ST_2],
          ),
          image: Assets.svg.appLogo.supportWeb().toWidget(
                width: _IMG_SIZE,
                height: _IMG_SIZE,
                semanticLabel: Strings.CD_INTRO_IMG,
              ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 3,
            bodyFlex: 4,
            imagePadding: const EdgeInsets.only(top: 48, right: 72, left: 72),
            descriptionPadding: const EdgeInsets.only(top: 36),
            titleTextStyle:
                TextStyles.introTitleStyle2(Theme.of(context).accentColor),
            boxDecoration: _pageBoxDecoration(color: Styles.PRIMARY_COLOR_DARK),
          ),
          title: Strings.INTRO_TITLE_2ND,
          bodyWidget: const BodyWidget(
            stringList: [Strings.INTRO_DESC_2ND, Strings.INTRO_DESC_2ND_2],
          ),
          image: Assets.svg.undrawNotifyRe65on.supportWeb().toWidget(
                width: _IMG_SIZE,
                height: _IMG_SIZE,
                semanticLabel: Strings.CD_INTRO_IMG,
              ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 3,
            bodyFlex: 4,
            imagePadding: const EdgeInsets.only(top: 48, right: 66, left: 66),
            descriptionPadding: const EdgeInsets.only(top: 36),
            titleTextStyle: TextStyles.introTitleStyle2(Colors.deepOrange),
            boxDecoration: _pageBoxDecoration(color: Colors.red),
          ),
          title: Strings.INTRO_TITLE_3RD,
          bodyWidget: const BodyWidget(
            stringList: [Strings.INTRO_DESC_3RD, Strings.INTRO_DESC_3RD_2],
          ),
          image: Assets.svg.undrawSecurityO890.supportWeb().toWidget(
                width: _IMG_SIZE,
                height: _IMG_SIZE,
                semanticLabel: Strings.CD_INTRO_IMG,
              ),
        ),
      ];

  static BoxDecoration _pageBoxDecoration({Color color}) => BoxDecoration(
        gradient: LinearGradient(
            stops: const [0, .6, 1],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [color, Styles.BACK_COLOR, Colors.black]),
      );
}

class _ScreenIntroState extends State<ScreenIntro>
    with AfterLayoutMixin<ScreenIntro> {
  @override
  Widget build(BuildContext context) => IntroductionScreen(
        globalBackgroundColor: Colors.transparent,
        pages: ScreenIntro._listPagesViewModel(context),
        onDone: () => Navigator.pop(context),
        next: const Icon(Icons.navigate_next),
        done: const Text(
          Strings.INTRO_DONE,
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          activeColor: Theme.of(context).accentColor,
          color: Styles.introDot,
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      );

  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(kPrvHivePrefRepository).setInitialLaunchApp();
}
