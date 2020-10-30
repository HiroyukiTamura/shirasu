import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/resource/styles.dart';

class VideoTagChip extends StatelessWidget {
  final String text;

  VideoTagChip({this.text}) : super();

  @override
  Widget build(BuildContext context) => Container(
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Styles.colorTextSub,
            fontSize: 13,
          ),
          children:[
            WidgetSpan(
              child: Icon(FontAwesomeIcons.tag, size: 13, color: Colors.white.withOpacity(.5),),
            ),
            WidgetSpan(child: SizedBox(width: 4,)),
            TextSpan(
              text: text
            )
          ]
        ),
      ),
    );
}
