import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/row_center/play_or_pause_icon.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/row_center/seek_btn.dart';
import '../../video_thumbnail.dart';

part 'row_center.g.dart';

@swidget
Widget rowCenter(BuildContext context, {
  @required String programId,
  @required OnTap onTapRewindBtn,
  @required OnTap onTapFastForwardBtn,
  @required OnTap onTapPlayToggleBtn,
}) =>
    Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SeekBtn(
            lr: Lr.LEFT,
            onTap: () => onTapRewindBtn(context),
          ),
          PlayOrPauseBtn(
            id: programId,
            onTap: onTapPlayToggleBtn,
          ),
          SeekBtn(
            lr: Lr.RIGHT,
            onTap: () => onTapFastForwardBtn(context),
          ),
        ],
      ),
    );