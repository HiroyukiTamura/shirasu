import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';

part 'play_btn.g.dart';

const double _kBorderW = 4;

@swidget
Widget playBtn(
  BuildContext context, {
  @required GestureTapCallback onTap,
}) =>
    Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
          width: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.7),
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: _kBorderW,
            ),
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.play_arrow_rounded,
            size: Dimens.VIDEO_PLAY_BTN_ICON_SIZE - _kBorderW * 2,
            color: Colors.white,
          ),
        ),
      ),
    );
