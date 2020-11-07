import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class _HorizontalCarouselItem extends StatelessWidget {
  _HorizontalCarouselItem({
    Key key,
    @required this.item,
    @required this.width,
    @required this.onTap,
  })  : _thumbnailUrl = ApiClient.getThumbnailUrl(item.id),
        super(key: key);

  final Item item;
  final double width;
  final String _thumbnailUrl;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: double.infinity,
        width: width,
        decoration: BoxDecoration(
          color: Styles.cardBackground,
          borderRadius: BorderRadius.circular(Dimens.DASHBOARD_ITEM_RADIUS),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CachedNetworkImage(imageUrl: _thumbnailUrl),
            Expanded(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    item.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HorizontalCarousels extends StatelessWidget {
  const HorizontalCarousels({
    Key key,
    @required this.list,
    @required this.columnCount,
    @required this.maxWidth,
  }) : super(key: key);

  final List<Item> list;
  final int columnCount;
  final double maxWidth;
  static const double SEPARATOR_MARGIN = 16;

  @override
  Widget build(BuildContext context) {
    final inScreenItemCount = columnCount - 1 + 7 / 16;
    final nonMarginTotalWidth = maxWidth -
        Dimens.DASHBOARD_OUTER_MARGIN -
        (columnCount - 1) * HorizontalCarousels.SEPARATOR_MARGIN;
    final width = nonMarginTotalWidth / inScreenItemCount;
    final height = width / Dimens.IMG_RATIO + 56;

    return SizedBox(
      height: height,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.DASHBOARD_OUTER_MARGIN),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: SEPARATOR_MARGIN),
        itemBuilder: (context, index) {
          return _HorizontalCarouselItem(
              item: list[index], width: width, onTap: () {});
        },
      ),
    );
  }
}
