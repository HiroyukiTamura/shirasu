import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/screen_detail/padding_row.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/extension.dart';

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
          CachedNetworkImage(
            imageUrl: UrlUtil.getChannelLogoUrl(channelId),
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyles.DETAIL_CHANNEL_NAME,
          )
        ],
      ),
    ),
  );
