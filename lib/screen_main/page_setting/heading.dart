import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading(this.text, {Key key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: Text(
      text,
      style: TextStyle(
        color: Theme.of(context).accentColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}