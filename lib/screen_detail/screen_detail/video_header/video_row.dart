import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/minimized_player_view.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'video_row.g.dart';

const double _kBtnWidth = kMinInteractiveDimension;

class VideoRow extends HookWidget {
  const VideoRow({
    Key key,
    @required this.height,
    @required this.width,
    @required this.data,
  }) : super(key: key);

  final double height;
  final double width;
  final ProgramDetailData data;

  static const double _LEFT_PAD = 8;

  @override
  Widget build(BuildContext context) {
    final maxW = width -
        (ScreenDetailState.SHRINKED_HEIGHT *
                ScreenDetailState.SHRINKED_ASPECT_RATIO +
            _LEFT_PAD);
    final videoSpace =
        height * ScreenDetailState.SHRINKED_ASPECT_RATIO + _LEFT_PAD;
    final currentW = width - videoSpace;
    double spaceRatio = currentW <= 0 ? 0 : currentW / maxW;

    return Stack(
      children: <Widget>[
        if (_kBtnWidth * 2 < currentW)
          Container(
            height: height,
            padding: EdgeInsets.only(
              left: videoSpace,
              right: _kBtnWidth * 2 < currentW ? _kBtnWidth * 2 : 0,
            ),
            alignment: Alignment.center,
            child: Opacity(
              opacity: spaceRatio,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _Text(
                    isTitle: true,
                    text: data.program.title,
                  ),
                  _Text(
                    isTitle: false,
                    text: data.program.channel.name,
                  ),
                ],
              ),
            ),
          ),
        if (_kBtnWidth < currentW)
          _IconBtn(
            iconData: Icons.play_arrow,
            spaceRatio: spaceRatio,
            height: height,
            right:
                _kBtnWidth * 2 < currentW ? _kBtnWidth : currentW - _kBtnWidth,
            onPressed: () {
              //todo implement
            },
          ),
        _IconBtn(
          iconData: Icons.close,
          spaceRatio: spaceRatio,
          height: height,
          right: _kBtnWidth < currentW ? 0 : currentW - _kBtnWidth,
          onPressed: spaceRatio == 1 ? () => _onTapCloseBtn(context) : null,
        ),
        _Video(height: height),
      ],
    );
  }

  void _onTapCloseBtn(BuildContext context) =>
      context.read(pDetailId).state = null;
}

@swidget
Widget _iconBtn({
  @required double height,
  @required double right,
  @required double spaceRatio,
  @required IconData iconData,
  @required VoidCallback onPressed,
}) =>
    Positioned(
      height: height,
      right: right,
      child: Opacity(
        opacity: spaceRatio,
        child: IconButton(
          icon: Icon(
            iconData,
            color: Colors.white,
          ),
          onPressed: spaceRatio == 1 ? onPressed : null,
        ),
      ),
    );

@swidget
Widget _text({
  @required bool isTitle,
  @required String text,
}) =>
    Container(
      padding: isTitle
          ? const EdgeInsets.only(bottom: 3)
          : const EdgeInsets.only(top: 3),
      height: ScreenDetailState.SHRINKED_HEIGHT / 2,
      alignment: isTitle ? Alignment.bottomCenter : Alignment.topCenter,
      child: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: isTitle ? Colors.white : Styles.colorTextSub,
          fontSize: 13,
          height: 1,
        ),
      ),
    );

class _Video extends HookWidget {
  const _Video({
    Key key,
    @required this.height,
  }) : super(key: key);

  static final _aspectTween = Tween<double>(
    begin: ScreenDetailState.SHRINKED_ASPECT_RATIO,
    end: Dimens.IMG_RATIO,
  );

  final double height;

  @override
  Widget build(BuildContext context) {
    final animation = useProvider(pPlayerAnimationProvider).pam.animation;
    final aspectRatio = _aspectTween.evaluate(animation);
    return Positioned(
      height: height,
      width: height * aspectRatio,
      child: const MinimizedPlayerView(),
    );
  }
}
