import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOssLicense extends StatelessWidget {
  //todo show ApplicationIcon
  @override
  Widget build(BuildContext context) {
    final parentTheme = Theme.of(context);
    return Theme(
      data: parentTheme.copyWith(
        cardColor: parentTheme.scaffoldBackgroundColor,
      ),
      child: const LicensePage(),
    );
  }
}
