import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/images.dart';

part 'page_error.g.dart';

/// todo fix layout metrics, colors of image
@swidget
Widget pageError({String text = Strings.SNACK_ERR}) => LayoutBuilder(
    builder: (context, constrains) => SafeArea(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(48),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          AspectRatio(
            aspectRatio: Dimens.ERROR_WIDGET_RATIO,
            child: Assets.svg.undrawWarningCyit.supportWeb().toWidget(),
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ]),
      ),
    ),
  );
