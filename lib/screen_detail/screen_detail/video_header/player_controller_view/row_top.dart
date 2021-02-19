import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view/player_controller_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/util/types.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';

part 'row_top.g.dart';

@hwidget
Widget rowTop(
  BuildContext context, {
  @required OnTap onTapFullScreenBtn,
  @required OnTap onTapSpeedBtn,
  @required VideoViewModelConf conf,
}) {
  final prgDataResult = useProvider(kPrvViewModelDetail(conf.id))
      .state
      .prgDataResult as DetailStateSuccess; // don't want rebuild
  // todo fix
  final title = prgDataResult.programDetailData.program.title;

  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: PlayerControllerView.getFullScreenPadding(conf.fullScreen),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (conf.fullScreen)
          Expanded(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.white,
                height: TextHeight.TEXT_H_SINGLE,
                fontSize: FontSize.S18,
              ),
            ),
          ),
        _IconButton(
          icon: MdiIcons.playSpeed,
          onPressed: onTapSpeedBtn,
          fullScreen: conf.fullScreen,
        ),
        //todo implement
        Visibility(
          visible: false,
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.video_settings),
            onPressed: () {},
          ),
        ),
        _IconButton(
          icon: Icons.fullscreen,
          onPressed: onTapFullScreenBtn,
          fullScreen: conf.fullScreen,
        ),
      ],
    ),
  );
}

@swidget
Widget _iconButton(
  BuildContext context, {
  @required IconData icon,
  @required bool fullScreen,
  @required OnTap onPressed,
}) =>
    IconButton(
      iconSize: fullScreen
          ? Dimens.VIDEO_FULLSCREEN_BTN_SIZE_BIG
          : Dimens.VIDEO_FULLSCREEN_BTN_SIZE,
      color: Colors.white,
      icon: Icon(icon),
      onPressed: () => onPressed(context),
    );
