import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shirasu/screen_detail/screen_detail/player_seekbar.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

// part 'player_controller_view.g.dart';

class PlayerControllerView extends HookWidget {
  const PlayerControllerView({
    @required this.programId,
  });

  final String programId;
  static const _SEC_DIFF = Duration(seconds: 30);

  @override
  Widget build(BuildContext context) => Positioned.fill(
        child: PlayerAnimOpacity(
          id: programId,
          child: GestureDetector(
            onTap: () => _onTapBackDrop(context),
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
                          onPressed: () => _onTapPlaySpeedBtn(context),
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
                ],
              ),
            ),
          ),
        ),
      );

  void _onTapPlayToggleBtn(BuildContext context) {}

  Future<void> _onTapFastForwardBtn(BuildContext context) async =>
      _seek(context, _SEC_DIFF);

  Future<void> _onTapRewindBtn(BuildContext context) async =>
      _seek(context, -_SEC_DIFF);

  Future<void> _seek(BuildContext context, Duration diff) async =>
      context.read(pVideoViewModel(programId)).seek(diff);

  void _onTapFullScreenBtn(BuildContext context) =>
      context.read(pVideoViewModel(programId)).toggleFullScreen();

  void _onTapResolutionBtn() {}

  void _onTapPlaySpeedBtn(BuildContext context) {}

  void _onTapBackDrop(BuildContext context) =>
      context.read(pVideoViewModel(programId)).toggleVisibility();
}

class _PlayOrPauseBtn extends HookWidget {
  const _PlayOrPauseBtn({
    @required this.id,
    @required this.onTap,
  });

  final VoidCallback onTap;
  final String id;

  @override
  Widget build(BuildContext context) {
    final isPlaying =
        useProvider(pVideoViewModel(id).state.select((it) => it.isPlaying));
    return Expanded(
      child: IconButton(
        iconSize: Dimens.VIDEO_PLAY_BTN_ICON_SIZE,
        color: Colors.white,
        icon: Icon(
          isPlaying ? Icons.play_arrow : Icons.pause,
        ),
        onPressed: onTap,
      ),
    );
  }
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
        child: IconButton(
          color: Colors.white,
          iconSize: Dimens.VIDEO_SEEK_BTN_ICON_SIZE,
          icon: Icon(icon),
          onPressed: onTap,
        ),
      );
}
