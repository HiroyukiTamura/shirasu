import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/strings.dart';

part 'screen_web_no_support.g.dart';

@swidget
Widget screenWebNoSupport() => SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Text(Strings.SCREEN_WEB_NO_SUPPORT),
            Assets.png.googlePlayBadge.image(width: 100),
          ],
        ),
      ),
    );
