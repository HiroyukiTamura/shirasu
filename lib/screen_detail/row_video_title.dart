import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class RowVideoTitle extends StatelessWidget {

  const RowVideoTitle({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
    text,
    style: TextStyles.DETAIL_VIDEO_TITLE,
  );
}