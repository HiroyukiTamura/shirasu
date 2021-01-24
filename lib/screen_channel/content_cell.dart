import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';

part 'content_cell.g.dart';

@swidget
Widget contentCell({
  @required Widget child,
  double verticalPadding = 0,
}) => Padding(
    padding: EdgeInsets.symmetric(
        horizontal: Dimens.MARGIN_OUTLINE, vertical: verticalPadding),
    child: child,
  );
