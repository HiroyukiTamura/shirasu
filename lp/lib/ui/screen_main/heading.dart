import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/resources/styles.dart';

class Heading extends StatelessWidget {
  const Heading({required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) => Text(
        heading,
        style: Styles.HEADING,
      );
}
