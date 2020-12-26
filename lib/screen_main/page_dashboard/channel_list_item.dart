import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/extension.dart';

part 'channel_list_item.g.dart';

typedef OnTapChannel = void Function(BuildContext context, String channelId);

const double _SIZE = 72;
const double _PADDING = 24;

@swidget
Widget channelListItem({
  @required Channels channels,
  @required OnTapChannel onTap,
}) =>
    Container(
      margin: const EdgeInsets.only(top: 8, bottom: 36),
      height: _SIZE,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: _PADDING),
        itemCount: channels.items.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, i) => const SizedBox(width: _PADDING),
        itemBuilder: (context, i) {
          final id = channels.items[i].id;
          return CircleCachedNetworkImage(
            onTap: () => context.pushChannelPage(id),
            size: _SIZE,
            imageUrl: UrlUtil.getChannelLogoUrl(id),
            errorWidget: Util.defaultChannelIcon,
          );
        },
      ),
    );
