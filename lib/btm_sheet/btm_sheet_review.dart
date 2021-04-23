import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/btm_sheet/common.dart';
import 'package:shirasu/resource/strings.dart';

part 'btm_sheet_review.g.dart';

@swidget
Widget btmSheetMyReview({
  @required VoidCallback onTapEdit,
  @required VoidCallback onTapDelete,
}) =>
    ListView(
      children: [
        BtmSheetListItem(
          icon: Icons.edit,
          text: Strings.BTM_SHEET_REVIEW_EDIT,
          onTap: onTapEdit,
        ),
        BtmSheetListItem(
          icon: Icons.delete,
          text: Strings.BTM_SHEET_REVIEW_DELETE,
          onTap: onTapDelete,
        ),
      ],
    );
