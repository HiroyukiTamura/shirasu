import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/types.dart';

part 'horizontal_carousels.g.dart';

const double _kSeparatorMargin = Dimens.DASHBOARD_OUTER_MARGIN;
const double _kMaxWidth = 300;

class HorizontalCarousels extends StatefulWidget {
  const HorizontalCarousels({
    this.list,
    this.constraints,
    this.maxWidth,
    this.detailCaption,
    this.onTapItem,
  });

  final List<Item> list;
  final BoxConstraints constraints;
  final double maxWidth;
  final bool detailCaption;
  final OnTapItem onTapItem;

  @override
  _HorizontalCarouselsState createState() => _HorizontalCarouselsState();
}

class _HorizontalCarouselsState extends State<HorizontalCarousels>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final columnCount = (widget.constraints.maxWidth / _kMaxWidth).ceil();
    final inScreenItemCount = columnCount - 1 + (1 - 1 / Dimens.IMG_RATIO);
    final nonMarginTotalWidth = widget.maxWidth -
        Dimens.DASHBOARD_OUTER_MARGIN -
        (columnCount - 1) * _kSeparatorMargin;
    final width = nonMarginTotalWidth / inScreenItemCount;
    final height =
        width / Dimens.IMG_RATIO + Dimens.CAROUSEL_DETAIL_CAPTION_H;

    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 32),
      height: height,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.DASHBOARD_OUTER_MARGIN),
        itemCount: widget.list.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: _kSeparatorMargin),
        itemBuilder: (context, index) => HorizontalCarouselItem(
          item: widget.list[index],
          width: width,
          onTapItem: widget.onTapItem,
          detailCaption: widget.detailCaption,
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

@swidget
Widget horizontalCarouselItem(
  BuildContext context, {
  @required Item item,
  @required double width,
  @required bool detailCaption,
  @required OnTapItem onTapItem,
  Color backGround,
}) =>
    ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(Dimens.DASHBOARD_ITEM_RADIUS),
      ),
      child: StackedInkWell(
        onTap: () => onTapItem(context, item.id),
        child: Container(
          width: width,
          color: backGround ?? Styles.cardBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: Dimens.IMG_RATIO,
                child: CustomCachedNetworkImage(
                  imageUrl: UrlUtil.getThumbnailUrl(item.id),
                  errorWidget: Util.defaultPrgThumbnail,
                ),
              ),
              Expanded(
                child: detailCaption
                    ? _HorizontalCarouselDetailCaption(item: item)
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
Widget _horizontalCarouselDetailCaption(
  BuildContext context, {
  @required Item item,
}) =>
    Container(
      height: Dimens.CAROUSEL_DETAIL_CAPTION_H,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('yyyy/MM/dd HH:mm').format(item.broadcastAt),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyles.s13TextHSingle(
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
                  style: TextStyles.s13TextHSingle(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
