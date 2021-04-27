import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/util.dart';

part 'list_tile_top.g.dart';

@swidget
Widget listTileTop({
  @required String iconUrl,
  @required String userName,
}) => Padding(
    padding: const EdgeInsets.only(
      right: Dimens.SETTING_OUTER_MARGIN,
      left: Dimens.SETTING_OUTER_MARGIN,
      top: 24,
      bottom: 14,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleCachedNetworkImage(
          imageUrl: iconUrl,
          size: 40,
          errorWidget: Util.defaultUserIcon,
        ),
        const SizedBox(width: 16),
        Text(
          userName,
          style: const TextStyle(fontSize: FontSize.S18),
        )
      ],
    ),
  );
