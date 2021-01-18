import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:lottie/lottie.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

part 'play_or_pause_icon.g.dart';

final _kPrvIsPlaying = Provider.autoDispose.family<bool, String>(
    (ref, id) => ref.watch(pVideoViewModel(id).state).isPlaying);

@hwidget
Widget playOrPauseIcon({
  @required String id,
  @required OnTap onTapPlayToggleBtn,
}) {
  final ac = useAnimationController(
    duration: const Duration(milliseconds: 300),
    upperBound: .3,
  );
  return ProviderListener<bool>(
    provider: _kPrvIsPlaying(id),
    onChange: (context, isPlaying) {
      onTapPlayToggleBtn(context);
      isPlaying ? ac.forward() : ac.reverse();
    },
    child: ColorFiltered(
      colorFilter: const ColorFilter.mode(
        Colors.white,
        BlendMode.srcIn,
      ),
      child: Lottie.asset(
        Assets.lottie.pausePlay,
        controller: ac,
      ),
    ),
  );
}
