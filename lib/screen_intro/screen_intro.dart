import 'dart:ui';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_intro/body_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenIntro extends StatefulWidget {
  const ScreenIntro();

  @override
  _ScreenIntroState createState() => _ScreenIntroState();

  static List<PageViewModel> _listPagesViewModel(BuildContext context) => [
        _pageViewModel(
          textList: [Strings.INTRO_DESC_1ST, Strings.INTRO_DESC_1ST_2],
          titleTextStyle: TextStyles.introTitleStyle(context),
          imagePadTop: 72,
          imagePadHorizontal: 96,
          imageLabel: Strings.CD_INTRO_IMG,
          svgGenImage: Assets.svg.appLogo,
          backGroundColor: Colors.red,
          title: Strings.INTRO_TITLE_1ST,
        ),
        _pageViewModel(
          textList: [Strings.INTRO_DESC_2ND, Strings.INTRO_DESC_2ND_2],
          titleTextStyle:
              TextStyles.introTitleStyle2(Theme.of(context).accentColor),
          imagePadTop: 48,
          imagePadHorizontal: 72,
          imageLabel: Strings.CD_INTRO_IMG,
          svgGenImage: Assets.svg.undrawNotifyRe65on,
          backGroundColor: Styles.PRIMARY_COLOR_DARK,
          title: Strings.INTRO_TITLE_2ND,
        ),
        _pageViewModel(
          textList: [Strings.INTRO_DESC_3RD, Strings.INTRO_DESC_3RD_2],
          titleTextStyle: TextStyles.introTitleStyle2(Colors.deepOrange),
          imagePadTop: 48,
          imagePadHorizontal: 66,
          imageLabel: Strings.CD_INTRO_IMG,
          svgGenImage: Assets.svg.undrawSecurityO890,
          backGroundColor: Colors.red,
          title: Strings.INTRO_TITLE_3RD,
        ),
      ];

  static BoxDecoration _pageBoxDecoration({Color color}) => BoxDecoration(
        gradient: LinearGradient(
            stops: const [0, .6, 1],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [color, Styles.BACK_COLOR, Colors.black]),
      );

  static PageViewModel _pageViewModel({
    @required double imagePadTop,
    @required double imagePadHorizontal,
    @required String title,
    @required TextStyle titleTextStyle,
    @required Color backGroundColor,
    @required SvgGenImage svgGenImage,
    @required String imageLabel,
    @required List<String> textList,
  }) =>
      PageViewModel(
        decoration: PageDecoration(
          imageFlex: 3,
          bodyFlex: 4,
          imagePadding: EdgeInsets.only(
            top: imagePadTop,
            right: imagePadHorizontal,
            left: imagePadHorizontal,
          ),
          descriptionPadding: const EdgeInsets.only(top: 36),
          titleTextStyle: titleTextStyle,
          boxDecoration: _pageBoxDecoration(color: backGroundColor),
        ),
        title: title,
        bodyWidget: BodyWidget(
          stringList: textList,
        ),
        image: svgGenImage.svg(
          semanticsLabel: imageLabel,
        ),
      );
}

class _ScreenIntroState extends State<ScreenIntro>
    with AfterLayoutMixin<ScreenIntro> {
  @override
  Widget build(BuildContext context) => IntroductionScreen(
        globalBackgroundColor: Colors.transparent,
        pages: ScreenIntro._listPagesViewModel(context),
        onDone: () => Navigator.pop(context),
        next: const Icon(
          Icons.navigate_next,
          semanticLabel: Strings.SEMANTIC_INTRO_NEXT,
        ),
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
