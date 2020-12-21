import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'screen_oss_licence.g.dart';

@swidget
Widget screenOssLicense(BuildContext context) {
  //todo show ApplicationIcon
  final parentTheme = Theme.of(context);
  return Theme(
    data: parentTheme.copyWith(
      cardColor: parentTheme.scaffoldBackgroundColor,
    ),
    child: const LicensePage(),
  );
}
