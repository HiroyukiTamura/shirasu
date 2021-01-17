import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_controller_vis.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

part 'player_controller_view.g.dart';

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
          child: DoubleTapPlayerView(
            ovalColor: Styles.COLOR_DOUBLE_TAP_BG,
            rippleColor: Styles.COLOR_DOUBLE_TAP_BG,
            textBuilder: _buildTapLabel,
            child: PlayerAnimOpacity(
              id: programId,
              child: ColoredBox(
                color: Colors.black.withOpacity(.5),
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        //todo implement
                        Visibility(
                          visible: false,
                          child: IconButton(
                            color: Colors.white,
                            icon: const Icon(MdiIcons.playSpeed),
                            onPressed: () => _onTapBgBtn(context),
                          ),
                        ),
                        //todo implement
                        Visibility(
                          visible: false,
                          child: IconButton(
                            color: Colors.white,
                            icon: const Icon(Icons.video_settings),
                            onPressed: _onTapResolutionBtn,
                          ),
                        ),
                        IconButton(
                          color: Colors.white,
                          icon: const Icon(Icons.fullscreen),
                          onPressed: () => _onTapFullScreenBtn(context),
                        ),
                      ],
                    ),
                    Center(
                      child: Row(
                        children: [
                          _SeekBtn(
                            icon: Icons.replay_30,
                            onTap: () => _onTapRewindBtn(context),
                          ),
                          _PlayOrPauseBtn(
                            onTap: () => _onTapPlayToggleBtn(context),
                            id: programId,
                          ),
                          _SeekBtn(
                            icon: Icons.forward_30,
                            onTap: () => _onTapFastForwardBtn(context),
                          ),
                        ],
                      ),
                    ),
                    _TimeText(id: programId),
                  ],
                ),
              ),
            ),
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

  String _buildTapLabel(Lr lr, int tapCount) {
    final swapSec =
        tapCount * VideoViewModel.SEC_FAST_SEEK_BY_DOUBLE_TAP.inSeconds;
    return '$swapSec${Strings.TIME_UNIT_SEC}';
  }
}

class _PlayOrPauseBtn extends StatelessWidget {
  const _PlayOrPauseBtn({
    @required this.id,
    @required this.onTap,
  });

  final VoidCallback onTap;
  final String id;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Center(
          child: Material(
            clipBehavior: Clip.antiAlias,
            shape: const CircleBorder(),
            color: Colors.transparent,
            child: IconButton(
              padding: const EdgeInsets.all(20),
              iconSize: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
              color: Colors.white,
              icon: _PlayOrPauseIcon(id: id),
              onPressed: onTap,
            ),
          ),
        ),
      );
}

@hwidget
Widget _playOrPauseIcon({@required String id}) {
  final isPlaying =
      useProvider(pVideoViewModel(id).state.select((it) => it.isPlaying));
  return Icon(
    isPlaying ? Icons.pause : Icons.play_arrow,
  );
}

class _SeekBtn extends StatelessWidget {
  const _SeekBtn({
    Key key,
    @required this.onTap,
    @required this.icon,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Expanded(
        child: Center(
          child: Material(
            clipBehavior: Clip.antiAlias,
            shape: const CircleBorder(),
            color: Colors.transparent,
            child: IconButton(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              iconSize: Dimens.VIDEO_SEEK_BTN_ICON_SIZE,
              icon: Icon(icon),
              onPressed: onTap,
            ),
          ),
        ),
      );
}

class _TimeText extends HookWidget {
  const _TimeText({@required this.id});

  final String id;

  @override
  Widget build(BuildContext context) {
    final isSeekBarDragging = useProvider(
        pVideoViewModel(id).state.select((it) => it.isSeekBarDragging));
    final total =
        useProvider(pVideoViewModel(id).state.select((it) => it.totalDuration));
    final current =
        useProvider(pVideoViewModel(id).state.select((it) => it.currentPos));

    final totalStr = Util.formatDurationStyled(total);
    final currentStr = Util.formatDurationStyled(current);

    final invisible =
        isSeekBarDragging || total == Duration.zero || current == Duration.zero;

    return AnimatedOpacity(
      opacity: invisible ? 0 : 1,
      duration: const Duration(milliseconds: 300),
      child: invisible
          ? const SizedBox.shrink()
          : Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.bottomLeft,
              child: Text(
                '$currentStr / $totalStr',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
    );
  }
}
