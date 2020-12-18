import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/padding_row.dart';

class RowVideoTitle extends WidgetItemBase {

  const RowVideoTitle({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => basePadding(
    child: Text(
      text,
      style: TextStyles.DETAIL_VIDEO_TITLE,
    ),
  );
}