import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lp/resources/styles.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'card_gray.g.dart';

@swidget
Widget cardGray({required Widget child}) => Card(
      elevation: 16,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: CustomColor.BACK_GROUND_CARD,
      child: child,
    );
