import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'animated_shower.g.dart';

/// immediately hide but show with animation
@swidget
Widget animatedShower({
  @required bool visible,
  @required Duration duration,
  @required Widget child,
}) =>
    AnimatedOpacity(
      opacity: visible ? 1 : 0,
      duration: duration,
      child: Visibility(
        visible: visible,
        child: child,
      ),
    );
