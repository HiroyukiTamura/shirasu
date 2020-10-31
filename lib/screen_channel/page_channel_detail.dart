import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_channel/content_cell.dart';

class PageChannelDetail extends StatelessWidget {

  final String text;

  const PageChannelDetail({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => ContentCell(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 13,
          color: Colors.white,
          height: Styles.TEXT_HEIGHT,
        ),
      ),
    );
}