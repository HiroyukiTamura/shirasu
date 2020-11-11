import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/content_cell.dart';

class RowVideoDesc extends StatelessWidget {

  const RowVideoDesc({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: TextStyles.DETAIL_VIDEO_DESC,
  );
}