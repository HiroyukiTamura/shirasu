import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/styles.dart';

part 'widget_holder.g.dart';

@swidget
Widget widgetHolder({
  @required Widget child,
  List<Override> overrides = const [],
}) =>
    ProviderScope(
      overrides: overrides,
      child: Theme(
        data: Styles.theme,
        child: child,
      ),
    );
