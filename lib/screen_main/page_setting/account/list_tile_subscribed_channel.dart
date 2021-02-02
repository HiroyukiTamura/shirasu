import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/util.dart';

part 'list_tile_subscribed_channel.g.dart';

@swidget
Widget listTileSubscribedChannel({
  @required SubscribedChannel subscribedChannel,
}) {
  final text =
      '''${Strings.SUBSCRIPTION_START_DATE}: ${DateFormat('yyyy/MM/dd').format(subscribedChannel.subscribedAt)}
${Strings.CURRENT_PERIOD_END_AT_LABEL}: ${DateFormat('yyyy/MM/dd').format(subscribedChannel.currentPeriodEndAt)}''';

  return ListTile(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    leading: CircleCachedNetworkImage(
      size: 40,
      errorWidget: Util.defaultChannelIcon,
      imageUrl: subscribedChannel.channel.icon as String,
    ),
    title: Text(subscribedChannel.channel.name),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Text(
        text,
        style: TextStyles.DEFAULT_H,
      ),
    ),
  );
}
