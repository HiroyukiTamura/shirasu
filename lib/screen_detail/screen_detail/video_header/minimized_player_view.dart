import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'player_view.dart';

class MinimizedPlayerView extends HookWidget {
  const MinimizedPlayerView();

  @override
  Widget build(BuildContext context) {
    final playOutState =
        useProvider(detailSNProvider.state.select((it) => it.playOutState));
    final result = useProvider(detailSNProvider).state.prgDataResult
        as StateSuccess; //we don't want rebuild here

    final program = result.programDetailData.program;
    switch (playOutState.commandedState) {
      case PlayerCommandedState.ERROR:
      case PlayerCommandedState.PLAY_ERROR:
        return Container(
          color: Colors.black, //todo extract to Styles
          alignment: Alignment.center,
          child: const Icon(
            Icons.error,
            color: Colors.white,
          ),
        );
      case PlayerCommandedState.POST_PLAY:
        return PlayerView(playOutState: playOutState);
      default:
        return CachedNetworkImage(
          imageUrl: UrlUtil.getThumbnailUrl(program.id),
          errorWidget: Util.defaultPrgThumbnail,
          fit: BoxFit.cover,
        );
    }
  }
}
