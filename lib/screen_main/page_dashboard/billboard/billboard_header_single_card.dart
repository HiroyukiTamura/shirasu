import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/client/url_util.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/types.dart';

part 'billboard_header_single_card.g.dart';

class BillboardHeaderSingleCardView extends StatelessWidget {
  const BillboardHeaderSingleCardView({
    Key key,
    @required this.height,
    @required this.data,
    @required this.onTapItem,
    @required this.controller,
  }) : super(key: key);

  final double height;
  final HeaderData data;
  final OnTapItem onTapItem;
  final PageController controller;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: height,
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, i) => _BillboardHeaderSingleCard(
            item: data.items[i],
            onTapItem: onTapItem,
          ),
          itemCount: data.items.length,
        ),
      );
}

class _BillboardHeaderSingleCard extends StatelessWidget {
  _BillboardHeaderSingleCard({
    Key key,
    @required this.item,
    @required this.onTapItem,
  })  : _thumbnailUrl = UrlUtil.getThumbnailUrl(item.id),
        super(key: key);

  final String _thumbnailUrl;
  final Item item;
  final OnTapItem onTapItem;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(BillboardHeader.CARD_PADDING),
    child: Card(
      elevation: 4,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(BillboardHeader.CARD_RADIUS),
      ),
      child: ColoredBox(
        color: Colors.black,
        child: StackedInkWell(
          onTap: () async => onTapItem(context, item.id),
          child: Column(
            children: [
              _Thumbnail(url: _thumbnailUrl),
              _Title(title: item.title),
            ],
          ),
        ),
      ),
    ),
  );
}

@swidget
Widget _thumbnail({@required String url}) => AspectRatio(
      aspectRatio: Dimens.IMG_RATIO,
      child: CachedNetworkImage(
        imageUrl: url,
        errorWidget: Util.defaultPrgThumbnail,
      ),
    );

@swidget
Widget _title({@required String title}) => Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        child: Text(
          title,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          style: TextStyles.dashboardBillboardTitle,
        ),
      ),
    );
