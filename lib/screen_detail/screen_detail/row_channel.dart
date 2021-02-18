import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/util.dart';

part 'row_channel.g.dart';

@swidget
Widget rowChannel(BuildContext context, {
  @required String title,
  @required String channelId,
}) => StackedInkWell(
    onTap: () async => context.pushChannelPage(channelId),
    child: Container(
      height: 56,
      padding: const EdgeInsets.symmetric(
          vertical: 16, horizontal: Dimens.MARGIN_OUTLINE),
      child: Row(
        children: [
          CustomCachedNetworkImage(
            width: 40,
            errorWidget: Util.defaultChannelIcon,
            imageUrl: UrlUtil.getChannelLogoUrl(channelId),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: FontSize.DEFAULT,
            ),
          )
        ],
      ),
    ),
  );
