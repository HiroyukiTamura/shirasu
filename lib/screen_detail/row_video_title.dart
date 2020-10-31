import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';

class RowVideoTitle extends StatelessWidget {

  final String text;

  const RowVideoTitle({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            height: Styles.TEXT_HEIGHT,
          ),
        ),
      );
}