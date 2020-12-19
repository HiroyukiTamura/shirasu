import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard_header.dart';

part 'header_color_filter.g.dart';

@hwidget
Widget headerColorFilter(
  BuildContext context, {
  @required double height,
}) {
  final scrollRatio = useProvider(scrollRatioProvider(height));
  return Visibility(
    visible: 0 < scrollRatio,
    child: Opacity(
      opacity: scrollRatio,
      child: const ColoredBox(color: Colors.black),
    ),
  );
}
