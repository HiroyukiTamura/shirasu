import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';


// part 'player_view.g.dart';

class PlayerView extends HookWidget {
  const PlayerView({Key key, this.conf}) : super(key: key);

  final VideoViewModelConf conf;

  @override
  Widget build(BuildContext context) {
    final viewmodel = useProvider(pVideoViewModel(conf))..ensureController();

    return ColoredBox(
      color: Colors.black,
      child: Stack(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: Dimens.IMG_RATIO,
              child: BetterPlayer(
                controller: viewmodel.controller,
              ),
            ),
          ),
          PlayerControllerView(
            conf: conf,
          ),
        ],
      ),
    );
  }
}
