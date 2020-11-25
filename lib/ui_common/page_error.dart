import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';

class PageError extends StatelessWidget {
  const PageError({Key key, this.text = Strings.SNACK_ERR}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constrains) {
          final width =
              max(constrains.maxHeight, constrains.maxWidth) / Dimens.IMG_RATIO;
          return SafeArea(
            child: Container(
              alignment: Alignment.center,
              width: width,
              child: Column(children: [
                Assets.undrawWarningCyit.svg(
                  width: width,
                  height: width * Dimens.ERROR_WIDGET_RATIO,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(text),
              ]),
            ),
          );
        },
      );
}
