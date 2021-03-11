import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/row_center/play_or_pause_icon.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/row_center/seek_btn.dart';
import 'package:shirasu/util/types.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'row_center.g.dart';

@hwidget
Widget rowCenter(
  BuildContext context, {
  @required VideoViewModelConf conf,
  @required OnTap onTapRewindBtn,
  @required OnTap onTapFastForwardBtn,
  @required OnTap onTapPlayToggleBtn,
}) =>
    Visibility(
      visible: useProvider(kPrvIsArch(conf.id)),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal:
              PlayerControllerView.getFullScreenPadding(conf.fullScreen),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SeekBtn(
              lr: Lr.LEFT,
              onTap: () => onTapRewindBtn(context),
            ),
            PlayOrPauseBtn(
              id: conf.id,
              onTap: onTapPlayToggleBtn,
            ),
            SeekBtn(
              lr: Lr.RIGHT,
              onTap: () => onTapFastForwardBtn(context),
            ),
          ],
        ),
      ),
    );
