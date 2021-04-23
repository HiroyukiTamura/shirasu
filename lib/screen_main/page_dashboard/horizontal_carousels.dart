import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/types.dart';

part 'horizontal_carousels.g.dart';

part 'horizontal_carousels.freezed.dart';

const double _kSeparatorMargin = Dimens.DASHBOARD_OUTER_MARGIN;
const double _kMaxWidth = 300;

@freezed
abstract class HorizontalCarouselItemConf with _$HorizontalCarouselItemConf {
  const factory HorizontalCarouselItemConf({
    @required String prgId,
    @required String channelId,
    @required String channelName,
    @required String prgTitle,
    @required DateTime broadcastAt,
  }) = _HorizontalCarouselItemConf;

  factory HorizontalCarouselItemConf.from(Item item) =>
      HorizontalCarouselItemConf(
        channelId: item.channelId,
        prgId: item.id,
        channelName: item.channel.name,
        prgTitle: item.title,
        broadcastAt: item.broadcastAt,
      );
}

class HorizontalCarousels extends StatefulWidget {
  const HorizontalCarousels({
    @required this.list,
    @required this.constraints,
    @required this.maxWidth,
    @required this.detailCaption,
    @required this.onTapItem,
  });

  final List<HorizontalCarouselItemConf> list;
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
    final height = width / Dimens.IMG_RATIO +
        (widget.detailCaption
            ? Dimens.CAROUSEL_DETAIL_CAPTION_H
            : Dimens.CAROUSEL_DETAIL_CAPTION_H_SML);

    return Container(
      margin: const EdgeInsets.only(top: 16, bottom: 32),
      height: height,
      width: double.infinity,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.DASHBOARD_OUTER_MARGIN),
        itemCount: widget.list.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) =>
            const SizedBox(width: _kSeparatorMargin),
        itemBuilder: (context, index) => HorizontalCarouselItem(
          width: width,
          onTapItem: widget.onTapItem,
          detailCaption: widget.detailCaption,
          conf: widget.list[index],
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
  @required HorizontalCarouselItemConf conf,
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
        onTap: () => onTapItem(context, conf.prgId),
        child: Container(
          width: width,
          color: backGround ?? Styles.cardBackground,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: Dimens.IMG_RATIO,
                child: CustomCachedNetworkImage(
                  imageUrl: UrlUtil.getThumbnailUrl(conf.prgId),
                  errorWidget: Util.defaultPrgThumbnail,
                ),
              ),
              Expanded(
                child: detailCaption
                    ? _HorizontalCarouselDetailCaption(conf: conf)
                    : _CaptionTitle(prgTitle: conf.prgTitle),
              ),
            ],
          ),
        ),
      ),
    );

@swidget
Widget _captionTitle({@required String prgTitle}) => Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      child: Text(
        prgTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME,
      ),
    );

@swidget
Widget _horizontalCarouselDetailCaption(
  BuildContext context, {
  @required HorizontalCarouselItemConf conf,
}) =>
    Container(
      height: Dimens.CAROUSEL_DETAIL_CAPTION_H,
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            DateFormat('yyyy/MM/dd HH:mm').format(conf.broadcastAt),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyles.s13TextHSingle(
              color: Theme.of(context).accentColor,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                conf.prgTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyles.DASHBOARD_BILLBOARD_CHANNEL_NAME,
              ),
            ),
          ),
          Row(
            children: [
              CircleCachedNetworkImage(
                imageUrl: UrlUtil.getChannelLogoUrl(conf.channelId),
                size: 20,
                errorWidget: Util.defaultChannelIcon,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  conf.channelName,
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
