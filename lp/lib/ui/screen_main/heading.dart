import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({required this.heading});

  final String heading;

  @override
  Widget build(BuildContext context) => Text(
        heading,
        style: const TextStyle(
          height: 1.7,
          fontSize: 24,
          color: Colors.white,
        ),
      );
}
