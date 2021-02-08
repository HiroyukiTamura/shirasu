import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/ui_common/ui_util.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/util/types.dart';

part 'page_error.g.dart';

/// todo fix layout metrics, colors of image
/// todo change to listView??
///

class PageError extends StatelessWidget {

  const PageError({
    Key key,
    this.onTapLoginBtn,
    this.text = Strings.SNACK_ERR,
  }) : super(key: key);


  final OnTap onTapLoginBtn;
  final String text;


  @override
  Widget build(BuildContext context) => SafeArea(
      child: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.svg.roboto.svg(
                color: Styles.COLOR_TEXT_SUB,
                width: 160,
                height: 160,
              ),
              const SizedBox(height: 24),
              Text(
                text,
                style: const TextStyle(
                  fontSize: FontSize.S16,
                  color: Styles.COLOR_TEXT_SUB,
                ),
              ),
              if (onTapLoginBtn != null)
                _LoginBtn(onTapLoginBtn: onTapLoginBtn),
            ],
          ),
        ),
      ),
    );
}

@swidget
Widget _loginBtn(
  BuildContext context, {
  @required OnTap onTapLoginBtn,
}) =>
    Container(
      padding: const EdgeInsets.only(top: 24),
      constraints: const BoxConstraints(
        minWidth: 200,
      ),
      child: RaisedButton(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: kCircleBorderRadius,
        ),
        color: Theme.of(context).primaryColor,
        onPressed: () => onTapLoginBtn(context),
        child: const Text(
          Strings.LOGIN_BTN_VALUE,
          maxLines: 1,
          style: TextStyle(
            fontSize: FontSize.S16,
            height: TextHeight.TEXT_H_SINGLE,
          ),
        ),
      ),
    );

// return LayoutBuilder(
//   builder: (context, constrains) => SafeArea(
//     child: Container(
//       alignment: Alignment.center,
//       padding: const EdgeInsets.all(48),
//       child:
//       Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         AspectRatio(
//           aspectRatio: Dimens.ERROR_WIDGET_RATIO,
//           child: Assets.svg.undrawWarningCyit.supportWeb().toWidget(),
//         ),
//         Text(
//           text,
//           style: const TextStyle(
//             fontSize: 16,
//           ),
//         ),
//       ]),
//     ),
//   ),
// );
