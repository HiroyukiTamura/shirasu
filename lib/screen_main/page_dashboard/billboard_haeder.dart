import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';

class BillboardHeader extends StatelessWidget {
  BillboardHeader({
    Key key,
    @required this.item,
    @required this.onTap,
  })  : _thumbnailUrl = UrlUtil.getThumbnailUrl(item.id),
        _channelLogoUrl = UrlUtil.getChannelLogoUrl(item.channelId),
        super(key: key);

  static const double _CHANNEL_LOGO_SIZE = 24;

  final Item item;
  final String _thumbnailUrl;
  final String _channelLogoUrl;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ColoredBox(
          color: Colors.deepOrange,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Text('NOW ON AIR', style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 2, left: 2, bottom: 16),
                child: Card(
                  elevation: 8,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: StackedInkwell(
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
                              style: TextStyles.DASHBOARD_BILLBOARD_TITLE_H,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: Dimens.DASHBOARD_OUTER_MARGIN,
                              left: Dimens.DASHBOARD_OUTER_MARGIN,
                              top: 8,
                              bottom: 16,
                            ),
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
                                  style:
                                      TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME_H,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
