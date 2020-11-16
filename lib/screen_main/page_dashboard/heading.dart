import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/styles.dart';

class Heading extends StatelessWidget {
  const Heading({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: _HeadingText(
          text: text,
        ),
      );
}

class HeadingTrail extends StatelessWidget {
  const HeadingTrail({
    Key key,
    @required this.text,
    @required this.btnText,
    @required this.onPressed,
  }) : super(key: key);

  final String text;
  final String btnText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _HeadingText(text: text),
          TextButton(
              onPressed: onPressed,
              child: Text(
                btnText,
                style: TextStyle(
                  color: Styles.colorTextSub,
                ),
              ),
          )
        ],
      ),
    );
}

class _HeadingText extends StatelessWidget {
  const _HeadingText({Key key, @required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          color: Theme.of(context).accentColor,
        ),
      );
}
