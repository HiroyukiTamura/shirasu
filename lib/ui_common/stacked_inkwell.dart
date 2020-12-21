import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'stacked_inkwell.g.dart';

/// to overlay ripple effect to image, stack [InkWell] and its child
@swidget
Widget stackedInkWell({
  @required Widget child,
  @required GestureTapCallback onTap,
}) => Stack(
    children: [
      child,
      Positioned.fill(
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: onTap,
          ),
        ),
      ),
    ],
  );
