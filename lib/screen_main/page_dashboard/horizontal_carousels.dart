import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';

part 'horizontal_carousels.g.dart';

const double _SEPARATOR_MARGIN = Dimens.DASHBOARD_OUTER_MARGIN;

@swidget
Widget horizontalCarousels({
  @required List<Item> list,
  @required int columnCount,
  @required double maxWidth,
  @required void Function(Item) onTap,
}) {
  final inScreenItemCount = columnCount - 1 + 7 / 16;
  final nonMarginTotalWidth = maxWidth -
      Dimens.DASHBOARD_OUTER_MARGIN -
      (columnCount - 1) * _SEPARATOR_MARGIN;
  final width = nonMarginTotalWidth / inScreenItemCount;
  final height = width / Dimens.IMG_RATIO + 56;

  return Container(
    padding: const EdgeInsets.only(top: 16, bottom: 32),
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
      ),
    ),
  );
}

@swidget
Widget _horizontalCarouselItem({
  Item item,
  double width,
  void Function(Item) onTap,
}) => ClipRRect(
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
              child: CachedNetworkImage(imageUrl: UrlUtil.getThumbnailUrl(item.id)),
            ),
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
    ),
  );
