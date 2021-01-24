import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';

part 'item_web_button.g.dart';

@swidget
Widget itemWebButton(BuildContext context, {
  @required VoidCallback onTap,
}) => ItemPadding(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 36),
      alignment: Alignment.center,
      child: TextButton(
        onPressed: onTap,
        child: Text(
          Strings.OPEN_WEB,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    ),
  );