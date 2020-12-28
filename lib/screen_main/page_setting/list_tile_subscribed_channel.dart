import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/viewer.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/util.dart';

class ListTileSubscribedChannel extends StatelessWidget {
  const ListTileSubscribedChannel({Key key, @required this.subscribedChannel})
      : super(key: key);

  final SubscribedChannel subscribedChannel;

  static const double _ICON_SIZE = 40;

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: CircleCachedNetworkImage(
          size: _ICON_SIZE,
          errorWidget: Util.defaultChannelIcon,
          imageUrl: subscribedChannel.channel.icon as String,
        ),
        title: Text(subscribedChannel.channel.name),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            '${Strings.SUBSCRIPTION_START_DATE}: ${DateFormat('yyyy/MM/dd').format(subscribedChannel.subscribedAt)}\n${Strings.CURRENT_PERIOD_END_AT_LABEL}: ${DateFormat('yyyy/MM/dd').format(subscribedChannel.currentPeriodEndAt)}',
            style: TextStyles.SETTING_SUBSCRIBED_CHANNEL,
          ),
        ),
      );
}
