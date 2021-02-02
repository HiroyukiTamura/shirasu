import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';

part 'item_note_credit.g.dart';

@swidget
Widget itemNoteCredit() => Padding(
    padding: const EdgeInsets.only(top: 16),
    child: ItemPadding(
      child: Text(
        Strings.BTM_SHEET_MSG_CREDIT_CARD,
        style: TextStyles.itemNote(
          color: Colors.white,
        ),
      ),
    ),
  );
