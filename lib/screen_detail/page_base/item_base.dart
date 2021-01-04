import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/screen_detail/page_base/item_heading.dart';

part 'item_base.g.dart';

typedef OnClearClicked = Function(BuildContext context);

@swidget
Widget itemPadding({
  @required Widget child,
}) =>
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: child,
    );

@swidget
Widget draggableSheet(
  BuildContext context, {
  @required String heading,
  @required Widget child,
  @required OnClearClicked onClearClicked,
}) =>
    Column(
      children: [
        ItemHeading(
          text: heading,
          onClearClicked: () => onClearClicked(context),
        ),
        Expanded(child: child),
      ],
    );
