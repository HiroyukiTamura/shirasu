import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/resources/styles.dart';

class CardGray extends StatelessWidget {
  const CardGray({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: CustomColor.BACK_GROUND_CARD,
        child: child,
      );
}
