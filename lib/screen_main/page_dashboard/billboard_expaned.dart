import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';

class BillboardExpanded extends StatelessWidget {
  BillboardExpanded({
    Key key,
    @required this.item,
    @required this.isLive,
    @required this.onTap,
  })  : _thumbnailUrl = UrlUtil.getThumbnailUrl(item.id),
        _channelLogoUrl = UrlUtil.getChannelLogoUrl(item.channelId),
        super(key: key);

  static const double _CHANNEL_LOGO_SIZE = 24;

  final Item item;
  final String _thumbnailUrl;
  final String _channelLogoUrl;
  final bool isLive;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => StackedInkwell(
    onTap: onTap,
    child: Column(
      children: [
        AspectRatio(
          aspectRatio: Dimens.IMG_RATIO,
          child: CachedNetworkImage(
            imageUrl: _thumbnailUrl,
            errorWidget: (context, url, error) {
              print(error);
              return Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.white60,
              ); //todo show default thumbnail
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: Dimens.MARGIN_OUTLINE,
              left: Dimens.DASHBOARD_OUTER_MARGIN,
              top: 16),
          child: Text(
            item.title,
            style: TextStyles.DASHBOARD_BILLBOARD_TITLE,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: Dimens.DASHBOARD_OUTER_MARGIN,
              left: Dimens.DASHBOARD_OUTER_MARGIN,
              top: 8),
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
        if (!isLive)
          Container(
            padding: const EdgeInsets.only(
              right: Dimens.DASHBOARD_OUTER_MARGIN,
              left: Dimens.DASHBOARD_OUTER_MARGIN,
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
    ),
  );
}
