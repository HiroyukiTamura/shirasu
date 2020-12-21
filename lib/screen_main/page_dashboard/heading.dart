import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

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
        fontSize: 20,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none,
        color: Theme.of(context).accentColor,
      ),
    ),
  );
