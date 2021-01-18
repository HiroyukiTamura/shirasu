import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/row_center/row_center.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/time_text.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_controller_vis.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/row_top.dart';

import '../drag_overlay.dart';

final kPrvDragStartDx = StateProvider.autoDispose<double>((ref) => 0);

class PlayerControllerView extends HookWidget {
  const PlayerControllerView({
    @required this.programId,
  });

  final String programId;

  @override
  Widget build(BuildContext context) => VideoControllerVis(
        id: programId,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => _onTapBgBtn(context),
          child: Stack(
            children: [
              DoubleTapPlayerView(
                doubleTapConfig: DoubleTapConfig.create(
                  ovalColor: Styles.COLOR_DOUBLE_TAP_BG,
                  rippleColor: Styles.COLOR_DOUBLE_TAP_BG,
                  labelBuilder: _buildTapLabel,
                  onDoubleTap: () => _onDoubleTap(context),
                ),
                swipeConfig: SwipeConfig.create(
                  onSwipeStart: (dx) => _clearStartDx(context, dx),
                  onSwipeCancel: () => _clearStartDx(context, 0),
                  onSwipeEnd: (data) => _onSwipeEnd(context),
                  overlayBuilder: _dragOverlay,
                ),
              ),
              PlayerAnimOpacity(
                id: programId,
                child: ColoredBox(
                  color: Colors.black.withOpacity(.5),
                  child: Stack(
                    overflow: Overflow.visible,
                    children: [
                      RowTop(
                        onTapFullScreenBtn: (context) =>
                            _onTapFullScreenBtn(context),
                      ),
                      RowCenter(
                        programId: programId,
                        onTapRewindBtn: (context) => _onTapRewindBtn(context),
                        onTapFastForwardBtn: (context) =>
                            _onTapFastForwardBtn(context),
                        onTapPlayToggleBtn: (context) =>
                            _onTapPlayToggleBtn(context),
                      ),
                      TimeText(id: programId),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );

  Future<void> _onTapPlayToggleBtn(BuildContext context) async =>
      context.read(pVideoViewModel(programId)).playOrPause();

  Future<void> _onTapFastForwardBtn(BuildContext context) async =>
      _seek(context, VideoViewModel.SEC_FAST_SEEK_BY_BTN);

  Future<void> _onTapRewindBtn(BuildContext context) async =>
      _seek(context, -VideoViewModel.SEC_FAST_SEEK_BY_BTN);

  Future<void> _seek(BuildContext context, Duration diff) async =>
      context.read(pVideoViewModel(programId)).seek(diff);

  void _onTapFullScreenBtn(BuildContext context) =>
      context.read(pVideoViewModel(programId)).toggleFullScreen();

  void _onTapResolutionBtn() {}

  void _onTapBgBtn(BuildContext context) =>
      context.read(pVideoViewModel(programId)).toggleVisibility();

  void _onDoubleTap(BuildContext context) =>
      context.read(pVideoViewModel(programId)).hide();

  void _onSwipeEnd(BuildContext context) {
    _clearStartDx(context, 0);
    context.read(pVideoViewModel(programId)).hide();
  }

  void _clearStartDx(BuildContext context, double dx) =>
      context.read(kPrvDragStartDx).state = dx;

  String _buildTapLabel(Lr lr, int tapCount) {
    final swapSec =
        tapCount * VideoViewModel.SEC_FAST_SEEK_BY_DOUBLE_TAP.inSeconds;
    return '$swapSec${Strings.TIME_UNIT_SEC}';
  }

  Widget _dragOverlay(SwipeData data) => DragOverlay(
        id: programId,
        data: data,
      );
}
