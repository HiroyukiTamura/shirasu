import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'row_top.g.dart';

@hwidget
Widget rowTop(BuildContext context, {
  @required OnTap onTapFullScreenBtn,
}) => Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      //todo implement
      Visibility(
        visible: false,
        child: IconButton(
          color: Colors.white,
          icon: const Icon(MdiIcons.playSpeed),
          onPressed: () {},
        ),
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
      IconButton(
        color: Colors.white,
        icon: const Icon(Icons.fullscreen),
        onPressed: () => onTapFullScreenBtn(context),
      ),
    ],
  );
