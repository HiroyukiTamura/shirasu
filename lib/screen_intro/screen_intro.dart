import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/textstyles.dart';

class ScreenIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: _listPagesViewModel(context),
      onDone: () {
        // When done button is press
      },
      onSkip: () {
        // You can also override onSkip callback
      },
      showSkipButton: true,
      skip: const Icon(Icons.skip_next),
      next: const Icon(Icons.navigate_next),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10),
        activeSize: const Size(20, 10),
        activeColor: Theme.of(context).accentColor,
        color: Colors.black26,
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
            pageColor: Styles.BACK_COLOR,
            imageFlex: 1,
            bodyFlex: 2,
            imagePadding:
                const EdgeInsets.only(top: 72, right: 96, bottom: 0, left: 96),
            titlePadding: EdgeInsets.only(top: 24),
            descriptionPadding: const EdgeInsets.only(top: 32),
          ),
          titleWidget: Text(
            Strings.INTRO_TITLE_1ST,
            style: Styles.introTitleStyle(context),
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
              SizedBox(height: 72),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    color: Colors.deepOrange,
                    width: 1,
                  ),
                  SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.deepOrange,
                            size: 28,
                          ),
                          Text(
                            Strings.INTRO_CONT_ROW1,
                            style: Styles.INTRO_ROW_TEXT_STYLE,
                          )
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.deepOrange,
                            size: 28,
                          ),
                          Text(
                            Strings.INTRO_CONT_ROW2,
                            style: Styles.INTRO_ROW_TEXT_STYLE,
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              )
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
            pageColor: Styles.PRIMARY_COLOR_DARK,
            imagePadding: const EdgeInsets.all(28),
            descriptionPadding: const EdgeInsets.only(top: 16),
          ),
          titleWidget: Text(
            Strings.INTRO_TITLE_2ND,
            style: Styles.introTitleStyle2(context),
          ),
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
          image: SvgPicture.asset('assets/undraw_Notify_re_65on.svg'),
        )
      ];
}
