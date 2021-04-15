import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/branding.dart';
import 'package:shirasu/gen/assets.gen.dart';

part 'screen_pwa_guide.g.dart';

@swidget
Widget screenPwaGuide() => SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const AnimatedBackground(),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderLogo(),
                  const SizedBox(height: 64),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: FontSize.S16,
                        color: Colors.white,
                      ),
                      children: [
                        const TextSpan(
                          text: Strings.SCREEN_FCM_GUIDE_1,
                        ),
                        WidgetSpan(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Assets.svg.iconIosShare.svg(
                              height: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const TextSpan(
                          text: Strings.SCREEN_FCM_GUIDE_2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
