import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/content_cell.dart';

class RowVideoDesc extends StatelessWidget {

  final String text;

  const RowVideoDesc({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => ContentCell(
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
        height: Styles.TEXT_HEIGHT,
      ),
    ),
  );
}