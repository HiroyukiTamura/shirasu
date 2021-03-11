import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/text_styles.dart';

part 'heading.g.dart';

@swidget
Widget heading(BuildContext context, {
  @required String text,
  double verticalPadding = 16,
}) => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: verticalPadding),
    child: Text(
      text,
      style: TextStyle(
        fontSize: FontSize.S20,
        height: TextHeight.TEXT_H_SINGLE,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).accentColor,
      ),
    ),
  );
