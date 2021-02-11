import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/client/env_repository.dart';

part 'center_circle_progress.g.dart';

@swidget
Widget centerCircleProgress({EdgeInsets padding = EdgeInsets.zero}) => Center(
      child: Padding(
        padding: padding,
        child: const CustomCircleProgress(),
      ),
    );

/// default [strokeWidth] is [CircularProgressIndicator.strokeWidth]
@hwidget
Widget customCircleProgress({
  Animation<Color> valueColor,
  double strokeWidth = 4,
}) {
  final value = useProvider(kPrvEnv).enableProgressAnimation ? null : .5;
  return CircularProgressIndicator(
    value: value,
    valueColor: valueColor,
    strokeWidth: strokeWidth,
  );
}
