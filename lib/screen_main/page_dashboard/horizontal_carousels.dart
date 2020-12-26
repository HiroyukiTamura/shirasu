import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';

part 'horizontal_carousels.g.dart';

const double _SEPARATOR_MARGIN = Dimens.DASHBOARD_OUTER_MARGIN;
const double _MAX_WIDTH = 300;

@swidget
Widget horizontalCarousels({
  @required List<Item> list,
  @required BoxConstraints constraints,
  @required double maxWidth,
  @required bool detailCaption,
  @required void Function(Item) onTap,
}) {
  final columnCount = (constraints.maxWidth / _MAX_WIDTH).ceil();
  final inScreenItemCount = columnCount - 1 + 7 / 16;
  final nonMarginTotalWidth = maxWidth -
      Dimens.DASHBOARD_OUTER_MARGIN -
      (columnCount - 1) * _SEPARATOR_MARGIN;
  final width = nonMarginTotalWidth / inScreenItemCount;
  final height = width / Dimens.IMG_RATIO + 108;

  return Container(
    margin: const EdgeInsets.only(top: 16, bottom: 32),
    height: height,
    width: double.infinity,
    child: ListView.separated(
      padding:
          const EdgeInsets.symmetric(horizontal: Dimens.DASHBOARD_OUTER_MARGIN),
      itemCount: list.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(width: _SEPARATOR_MARGIN),
      itemBuilder: (context, index) => _HorizontalCarouselItem(
        item: list[index],
        width: width,
        onTap: onTap,
        detailCaption: detailCaption,
      ),
    ),
  );
}

@swidget
Widget _horizontalCarouselItem(
  BuildContext context, {
  @required Item item,
  @required double width,
  @required bool detailCaption,
  @required void Function(Item) onTap,
}) =>
    ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Dimens.DASHBOARD_ITEM_RADIUS),
      ),
      child: StackedInkWell(
        onTap: () async => onTap(item),
        child: Container(
          width: width,
          color: Styles.cardBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: Dimens.IMG_RATIO,
                child: CachedNetworkImage(
                  imageUrl: UrlUtil.getThumbnailUrl(item.id),
                  errorWidget: Util.defaultPrgThumbnail,
                ),
              ),
              Expanded(
                child: detailCaption
                    ? _CaptionDetail(item: item)
                    : _CaptionTitle(item: item),
              ),
            ],
          ),
        ),
      ),
    );

@swidget
Widget _captionTitle({@required Item item}) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      child: Text(
        item.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME,
      ),
    );

@swidget
Widget _captionDetail(
  BuildContext context, {
  @required Item item,
}) =>
    Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('yyyy/MM/dd HH:mm').format(item.broadcastAt),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              height: 1,
              fontSize: 13,
              color: Theme.of(context).accentColor,
            ),
          ),
          Center(
            child: Text(
              item.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME,
            ),
          ),
          Row(
            children: [
              CircleCachedNetworkImage(
                imageUrl: UrlUtil.getChannelLogoUrl(item.channelId),
                size: 20,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  item.channel.name,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(height: 1, fontSize: 13),
                ),
              ),
            ],
          ),
        ],
      ),
    );
