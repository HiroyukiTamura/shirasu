import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/extension.dart';

part 'screen_error.g.dart';

@swidget
Widget screenError({
  @required bool showLoginBtn,
  @required String errText,
}) =>
    SafeArea(
      child: Scaffold(
        body: showLoginBtn
            ? PageError(
                onTapLoginBtn: (context) =>
                    context.pushPage(const GlobalRoutePath.auth()),
                text: errText,
              )
            : PageError(text: errText),
      ),
    );
