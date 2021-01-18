import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:lottie/lottie.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/resource/dimens.dart';

part 'seek_btn.g.dart';

final _kPrvSeekBtnTapEventProvider =
    StateProvider.family<int, Lr>((ref, lr) => 0);

@swidget
Widget seekBtn(
  BuildContext context, {
  @required Lr lr,
  @required VoidCallback onTap,
}) =>
    Material(
      clipBehavior: Clip.antiAlias,
      shape: const CircleBorder(),
      color: Colors.transparent,
      child: IconButton(
        padding: const EdgeInsets.all(16),
        color: Colors.white,
        iconSize: Dimens.VIDEO_SEEK_BTN_ICON_SIZE,
        icon: _SeekIcon(lr: lr),
        onPressed: () {
          context.read(_kPrvSeekBtnTapEventProvider(Lr.LEFT)).state++;
          onTap();
        },
      ),
    );

@hwidget
Widget _seekIcon({Lr lr}) {
  final ac = useAnimationController(
    duration: const Duration(seconds: 1),
  );
  return ProviderListener(
    provider: _kPrvSeekBtnTapEventProvider(Lr.LEFT),
    onChange: (context, _) {
      if (ac.isCompleted) ac.reset();
      ac.forward();
    },
    child: ColorFiltered(
      colorFilter: const ColorFilter.mode(
        Colors.white,
        BlendMode.srcIn,
      ),
      child: Lottie.asset(
        lr == Lr.LEFT ? Assets.lottie.rewind : Assets.lottie.fastForward,
        controller: ac,
      ),
    ),
  );
}
