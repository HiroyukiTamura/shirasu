import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';

class BillboardExpanded extends StatelessWidget {
  BillboardExpanded({Key key, @required this.item})
      : _thumbnailUrl = ApiClient.getThumbnailUrl(item.id),
        _channelLogoUrl = ApiClient.getChannelLogoUrl(item.channelId),
        super(key: key);

  static const double _CHANNEL_LOGO_SIZE = 24;
  static const double _OUTER_MARGIN = 8;

  final Item item;
  final String _thumbnailUrl;
  final String _channelLogoUrl;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          AspectRatio(
            aspectRatio: Dimens.IMG_RATIO,
            child: CachedNetworkImage(imageUrl: _thumbnailUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: _OUTER_MARGIN, left: _OUTER_MARGIN, top: 16),
            child: Text(
              item.title,
              style: TextStyles.DASHBOARD_BILLBOARD_TITLE,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: _OUTER_MARGIN, left: _OUTER_MARGIN, top: 8),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: _channelLogoUrl,
                  height: _CHANNEL_LOGO_SIZE,
                  width: _CHANNEL_LOGO_SIZE,
                ),
                const SizedBox(width: 16),
                Text(
                  item.channel.name,
                  style: TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME,
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              right: _OUTER_MARGIN,
              left: _OUTER_MARGIN,
              top: 24,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.deepOrange,
                            Theme.of(context).accentColor
                          ],
                          stops: const <double>[0, 1],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Text(
                  DateFormat('yyyy/MM/dd HH:mm').format(item.broadcastAt),
                  style: TextStyles.DASHBOARD_BILLBOARD_DATETIME,
                ),
              ],
            ),
          )
        ],
      );
}
