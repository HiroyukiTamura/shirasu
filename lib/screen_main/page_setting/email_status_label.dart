import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';

class EmailStatusLabel extends StatelessWidget {
  EmailStatusLabel({Key key, @required this.isVerified})
      : text = isVerified ? Strings.EMAIL_VERIFIED : Strings.EMAIL_NOT_VERIFIED,
        color = isVerified ? Colors.white.withOpacity(.8) : Colors.deepOrange,
        super(key: key);

  final bool isVerified;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) => Container(
    margin: const EdgeInsets.only(top: 6),
    decoration: BoxDecoration(
      border: Border.all(
        color: color,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    ),
    child: Padding(
      padding: const EdgeInsets.all(4),
      child: Text(text, style: TextStyle(
          color: color,
          height: 1
      ),),
    ),
  );
}