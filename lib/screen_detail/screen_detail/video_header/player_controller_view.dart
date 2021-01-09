import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/play_btn.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class PlayerControllerView extends HookWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black.withOpacity(.5),
        child: Stack(
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
                    onPressed: _onTapPlaySpeedBtn,
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
                  onPressed: _onTapFullScreenBtn,
                ),
              ],
            ),
            Row(
              children: [
                _SeekBtn(
                  icon: Icons.replay_30,
                  onTap: _onTapRewindBtn,
                ),
                Expanded(
                  child: PlayBtn(
                    onTap: () {
                      //todo implement
                    },
                  ),
                ),
                _SeekBtn(
                  icon: Icons.forward_30,
                  onTap: _onTapFastForwardBtn,
                ),
              ],
            ),
          ],
        ),
      );

  void _onTapFastForwardBtn() {}

  void _onTapRewindBtn() {}

  void _onTapFullScreenBtn() {}

  void _onTapResolutionBtn() {}

  void _onTapPlaySpeedBtn() {}
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
