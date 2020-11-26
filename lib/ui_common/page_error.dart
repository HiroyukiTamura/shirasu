import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/images.dart';

class PageError extends StatelessWidget {
  const PageError({Key key, this.text = Strings.SNACK_ERR}) : super(key: key);

  final String text;

  /// todo fix layout metrics, colors of image
  @override
  Widget build(BuildContext context) => LayoutBuilder(
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
}
