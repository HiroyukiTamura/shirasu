import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/images.dart';

part 'screen_pwa_guide.g.dart';

@swidget
Widget screenPwaGuide() => SafeArea(
  child: Scaffold(
    body: Stack(
      children: [
        const _HeaderLogo(),
      ],
    ),
  ),
);

@swidget
Widget _headerLogo() => Semantics(
  label: Strings.CD_LOGO,
  child: Padding(
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
  ),
);