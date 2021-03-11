import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/strings.dart';

part 'screen_oss_license.g.dart';

@swidget
Widget screenOssLicense(BuildContext context) {
  final parentTheme = Theme.of(context);
  return Theme(
    data: parentTheme.copyWith(
      cardColor: parentTheme.scaffoldBackgroundColor,
    ),
    child: const LicensePage(
      applicationLegalese: Strings.LICENSE_LEGAL_APP,
    ),
  );
}
