import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';

part 'horizontal_carousels.g.dart';

const double _SEPARATOR_MARGIN = Dimens.DASHBOARD_OUTER_MARGIN;
const double _MAX_WIDTH = 300;

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

class _HorizontalCarouselsState extends State<HorizontalCarousels> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    final columnCount = (widget.constraints.maxWidth / _MAX_WIDTH).ceil();
    final inScreenItemCount = columnCount - 1 + 7 / 16;
    final nonMarginTotalWidth = widget.maxWidth -
        Dimens.DASHBOARD_OUTER_MARGIN -
        (columnCount - 1) * _SEPARATOR_MARGIN;
    final width = nonMarginTotalWidth / inScreenItemCount;
    final height =
        width / Dimens.IMG_RATIO + HorizontalCarouselDetailCaption.HEIGHT;

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
            const SizedBox(width: _SEPARATOR_MARGIN),
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
                child: CachedNetworkImage(
                  imageUrl: UrlUtil.getThumbnailUrl(item.id),
                  errorWidget: Util.defaultPrgThumbnail,
                ),
              ),
              Expanded(
                child: detailCaption
                    ? HorizontalCarouselDetailCaption(item: item)
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

class HorizontalCarouselDetailCaption extends StatelessWidget {
  const HorizontalCarouselDetailCaption({Key key, @required this.item})
      : super(key: key);

  static const double HEIGHT = 108;
  final Item item;

  @override
  Widget build(BuildContext context) => Container(
        height: HEIGHT,
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
}
