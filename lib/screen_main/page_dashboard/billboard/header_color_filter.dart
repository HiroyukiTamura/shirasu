import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';

part 'header_color_filter.g.dart';

@hwidget
Widget headerColorFilter({
  @required HeaderData data,
}) {
  final double scrollRatio = data.wideMode ? 0 : useProvider(kPrvScrollRatio(data.height));
  return Visibility(
    visible: 0 < scrollRatio,
    child: Opacity(
      opacity: scrollRatio,
      child: const ColoredBox(color: Colors.black),
    ),
  );
}
