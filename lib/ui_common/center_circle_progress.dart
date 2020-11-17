import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CenterCircleProgress extends StatelessWidget {

  const CenterCircleProgress({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => const Center(
      child: CircularProgressIndicator(),
    );
}