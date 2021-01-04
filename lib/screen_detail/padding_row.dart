import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';

part 'padding_row.g.dart';

@swidget
Widget basePadding({
  @required Widget child,
  double bottom = 0,
  double top = 0,
}) =>
    Padding(
      padding: EdgeInsets.only(
        right: Dimens.MARGIN_OUTLINE,
        left: Dimens.MARGIN_OUTLINE,
        bottom: bottom,
        top: top,
      ),
      child: child,
    );
