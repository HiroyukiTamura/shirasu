import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/gen/assets.gen.dart';
import 'package:lp/gen/fonts.gen.dart';
import 'package:lp/resources/strings.dart';
import 'package:lp/resources/styles.dart';
import 'package:lp/ui/screen_main/responsive_builder.dart';

import 'card_gray.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({required this.screenHeight});

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    final descFrag = [
      const Text(
        Strings.APP_NAME,
        style: TextStyle(
          color: Colors.white,
          fontSize: 36,
          fontFamily: FontFamily.shingo,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SizedBox(
          height: 2,
          width: 96,
          child: ColoredBox(
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
      const SizedBox(height: 8),
      Wrap(
        runSpacing: 24,
        spacing: 24,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const SizedBox.shrink(),
          Assets.svg.badgeGooglePlay.svg(),
          Assets.svg.badgeAppStore.svg(),
        ],
      ),
      const SizedBox(height: 24),
      const Text(
        Strings.DESC_HEADING,
        style: TextStyle(
          height: 1.7,
          color: CustomColor.TEXT_SUB,
        ),
      ),
      const SizedBox(height: 32),
      CardGray(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
          child: Row(
            children: const [
              Icon(
                Icons.info,
                color: CustomColor.TEXT_SUB,
              ),
              SizedBox(width: 24),
              Expanded(
                child: Text(
                  Strings.NOTE_HEADING,
                  style: TextStyle(
                    height: 1.7,
                    color: CustomColor.TEXT_SUB,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
    final illustrationFrag = SizedBox(
      height: 600,
      child: Image.asset(
        'assets/png/sample.png',//todo implement
        fit: BoxFit.contain,
        alignment: Alignment.topLeft,
      ),
    );
    const padding = EdgeInsets.symmetric(vertical: 48);
    return ResponsiveBuilder(
      smallScreen: (context) => Padding(
        padding: padding,
        child: Column(
          children: [
            ...descFrag,
            const SizedBox(height: 24),
            illustrationFrag,
          ],
        ),
      ),
      wideScreen: (context) => SizedBox(
        height: screenHeight,
        child: Padding(
          padding: padding,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: descFrag,
                ),
              ),
              Expanded(
                child: illustrationFrag,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
