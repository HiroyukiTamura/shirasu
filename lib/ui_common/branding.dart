import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/env_repository.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'branding.g.dart';

final _kAnimationDuration = 10.seconds;

@swidget
Widget headerLogo() => Semantics(
  label: Strings.CD_LOGO,
  child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 24),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.svg.logoOfficial.svg(
          height: 48,
          color: Colors.white,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(
            Icons.clear_rounded,
            color: Colors.white,
            size: 40,
          ),
        ),
        Assets.svg.appLogoContent.svg(
          height: 60,
        ),
      ],
    ),
  ),
);

@hwidget
Widget animatedBackground(
    BuildContext context,
    ) {
  final enableAnimation =
  useProvider(kPrvEnv.select((it) => it.enableAnimation));
  if (!enableAnimation) return const Placeholder();

  final tween = TimelineTween<DefaultAnimationProperties>()
    ..addScene(
      begin: Duration.zero,
      end: _kAnimationDuration,
    ).animate(
      DefaultAnimationProperties.color,
      tween: ColorTween(
        begin: Theme.of(context).primaryColor,
        end: Theme.of(context).primaryColorDark,
      ),
    );

  return MirrorAnimation<TimelineValue<DefaultAnimationProperties>>(
    tween: tween, // Pass in tween
    duration: tween.duration, // Obtain duration
    builder: (context, child, value) => Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            value.get(DefaultAnimationProperties.color),
            Theme.of(context).scaffoldBackgroundColor,
          ],
        ),
      ),
    ),
  );
}