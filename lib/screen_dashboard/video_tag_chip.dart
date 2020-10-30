import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VideoTagChip extends StatelessWidget {
  final String text;

  VideoTagChip({this.text}) : super();

  @override
  Widget build(BuildContext context) => Container(
      padding: EdgeInsets.only(
        right: 8,
        left: 8,
        bottom: 2,
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.6),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 13,
          color: Colors.black,
        ),
      ),
    );
}
