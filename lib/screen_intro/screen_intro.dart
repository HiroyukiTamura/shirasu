import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class ScreenIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.transparent,
      pages: _listPagesViewModel(context),
      onDone: () {
        // When done button is press
      },
      next: const Icon(Icons.navigate_next),
      done: const Text(Strings.INTRO_DONE,
          style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: Theme.of(context).accentColor,
        color: Colors.white.withOpacity(.8),
        spacing: const EdgeInsets.symmetric(horizontal: 3),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }

  static List<PageViewModel> _listPagesViewModel(BuildContext context) => [
        PageViewModel(
          decoration: PageDecoration(
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, .6, 1],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Styles.BACK_COLOR, Colors.black]),
            ),
            imagePadding:
                const EdgeInsets.only(right: 96, top: 72, left: 96),
            titlePadding: EdgeInsets.zero,
            descriptionPadding: const EdgeInsets.only(top: 32),
          ),
          titleWidget: Text(
            Strings.INTRO_TITLE_1ST,
            style: TextStyles.introTitleStyle(context),
          ),
          bodyWidget: Column(
            children: [
              Text(
                Strings.INTRO_DESC_1ST,
                style: TextStyles.introDesc,
              ),
              SizedBox(height: 6),
              Text(
                Strings.INTRO_DESC_1ST_2,
                style: TextStyles.introDesc,
              ),
            ],
          ),
          image: SizedBox(
            height: 128,
            width: 128,
            child: SvgPicture.asset('assets/logo_official.svg'),
          ),
        ),
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 3,
            bodyFlex: 4,
            imagePadding: const EdgeInsets.only(top: 48, right: 66, left: 66),
            descriptionPadding: const EdgeInsets.only(top: 36),
            titleTextStyle:
                TextStyles.introTitleStyle2(Theme.of(context).accentColor),
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, .6, 1],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Styles.PRIMARY_COLOR_DARK,
                    Styles.BACK_COLOR,
                    Colors.black
                  ]),
            ),
          ),
          title: Strings.INTRO_TITLE_2ND,
          bodyWidget: Column(
            children: [
              Text(
                Strings.INTRO_DESC_2ND,
                style: TextStyles.introDesc,
              ),
              SizedBox(height: 6),
              Text(
                Strings.INTRO_DESC_2ND_2,
                style: TextStyles.introDesc,
              ),
            ],
          ),
          image: SizedBox(
              height: 128,
              width: 128,
              child: SvgPicture.asset('assets/undraw_Notify_re_65on.svg')),
        ),
        PageViewModel(
          decoration: PageDecoration(
            imageFlex: 3,
            bodyFlex: 4,
            imagePadding: const EdgeInsets.only(top: 48, right: 66, left: 66),
            descriptionPadding: const EdgeInsets.only(top: 36),
            titleTextStyle: TextStyles.introTitleStyle2(Colors.deepOrange),
            boxDecoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0, .6, 1],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Styles.BACK_COLOR, Colors.black]),
            ),
          ),
          title: Strings.INTRO_TITLE_3RD,
          bodyWidget: Column(
            children: [
              Text(
                Strings.INTRO_DESC_3RD,
                style: TextStyles.introDesc,
              ),
              SizedBox(height: 6),
              Text(
                Strings.INTRO_DESC_3RD_2,
                style: TextStyles.introDesc,
              ),
            ],
          ),
          image: SizedBox(
              height: 128,
              width: 128,
              child: SvgPicture.asset('assets/undraw_security_o890.svg')),
        ),
      ];
}
