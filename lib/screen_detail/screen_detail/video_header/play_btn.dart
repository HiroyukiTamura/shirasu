import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';

part 'play_btn.g.dart';

//todo change style
@swidget
Widget playBtn({
  @required GestureTapCallback onTap,
}) =>
    Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
          width: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
          decoration: BoxDecoration(
            color: Styles.bigIcon,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: const Icon(
            Icons.play_arrow,
            size: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
            color: Colors.white,
          ),
        ),
      ),
    );