import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/ui_common/images.dart';

part 'page_error.g.dart';

/// todo fix layout metrics, colors of image
@swidget
Widget pageError({
  String text = Strings.SNACK_ERR,
}) =>
    SafeArea(
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.svg.roboto.svg(
                color: Styles.colorTextSub,
                width: 160,
                height: 160,
              ),
              const SizedBox(height: 24),
              Text(
                text,
                style: TextStyle(
                  fontSize: FontSize.S16,
                  color: Styles.colorTextSub,
                ),
              ),
            ],
          ),
        ),
      ),
    );

// return LayoutBuilder(
//   builder: (context, constrains) => SafeArea(
//     child: Container(
//       alignment: Alignment.center,
//       padding: const EdgeInsets.all(48),
//       child:
//       Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         AspectRatio(
//           aspectRatio: Dimens.ERROR_WIDGET_RATIO,
//           child: Assets.svg.undrawWarningCyit.supportWeb().toWidget(),
//         ),
//         Text(
//           text,
//           style: const TextStyle(
//             fontSize: 16,
//           ),
//         ),
//       ]),
//     ),
//   ),
// );
