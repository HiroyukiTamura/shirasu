import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'list_item.g.dart';

@swidget
Widget listItem({
  @required BuildContext context,
  @required String title,
  @required String subTitle,
  GestureTapCallback onTap,
}) =>
    ListTile(
      title: Text(title),
      subtitle: Text(
        subTitle,
        style: TextStyle(
          color: Theme.of(context).primaryColorDark,
        ),
      ),
      onTap: onTap,
    );
