import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail/padding_row.dart';

part 'row_video_title.g.dart';

@swidget
Widget rowVideoTitle({@required String text,}) => BasePadding(
    child: Text(
      text,
      style: TextStyles.detailVideoTitle,
    ),
  );