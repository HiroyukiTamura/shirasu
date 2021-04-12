import 'package:flutter/cupertino.dart';
import 'package:lp/extensions.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'responsive_builder.g.dart';

@swidget
Widget responsiveBuilder({
  required WidgetBuilder smallScreen,
  required WidgetBuilder wideScreen,
}) {
  return LayoutBuilder(
    builder: (context, constraint) => context.isWideScreen
        ? wideScreen(context)
        : smallScreen(context),
  );
}
