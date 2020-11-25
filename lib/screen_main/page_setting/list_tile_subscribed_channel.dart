import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/viewer.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/images.dart';

class ListTileSubscribedChannel extends StatelessWidget {
  const ListTileSubscribedChannel({Key key, @required this.subscribedChannel})
      : super(key: key);

  final SubscribedChannel subscribedChannel;

  static const double _ICON_SIZE = 40;

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: subscribedChannel.channel.icon == null
            ? _defaultIcon()
            : CachedNetworkImage(
                height: _ICON_SIZE,
                width: _ICON_SIZE,
                imageUrl: subscribedChannel.channel.icon as String,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) {
                  print(error);
                  return _defaultIcon();
                },
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

  static Widget _defaultIcon() => Assets.svg.defaultChannelIcon.supportWeb().toWidget(
      height: _ICON_SIZE,
      width: _ICON_SIZE,
    );
}
