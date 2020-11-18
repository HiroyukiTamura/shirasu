import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading(this.text, {Key key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.info,
              size: 14,
              color: Colors.white70,
            ),
            const SizedBox(width: 4),
            Text(
              text,
              style: TextStyle(
                height: 1,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      );
}
