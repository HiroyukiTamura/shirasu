import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';

part 'item_note.g.dart';

@swidget
Widget itemNote() => Padding(
    padding: const EdgeInsets.only(top: 40),
    child: ItemPadding(
      child: Text(
        Strings.ARCHIVE_PRICE_TABLE_NOTE,
        style: TextStyle(
            height: 1.3,
            fontSize: 13,
            color: Styles.colorPriceWhite),
      ),
    ),
  );
