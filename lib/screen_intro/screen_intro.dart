import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';

class ScreenIntro extends StatelessWidget {
  final List<PageViewModel> _listPagesViewModel = [
    PageViewModel(
      titleWidget: Text(
        Strings.INTRO_TITLE_1ST,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      bodyWidget: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: Text(
          Strings.INTRO_DESC_1ST,
          style: TextStyle(
            fontSize: 16,
            height: Styles.TEXT_H_SML,
          ),
        ),
      ),
      image: Container(
        padding: EdgeInsets.only(right: 28, left: 28, top: 28),
        child: SvgPicture.asset('assets/undraw_my_app_grf2.svg'),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) => IntroductionScreen(
        pages: _listPagesViewModel,
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
