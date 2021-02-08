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

@swidget
Widget billboardHeaderSingleCardView({
  @required double height,
  @required HeaderData data,
  @required OnTapItem onTapItem,
  @required PageController controller,
}) =>
    SizedBox(
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

@swidget
Widget _billboardHeaderSingleCard(
  BuildContext context, {
  @required Item item,
  @required OnTapItem onTapItem,
}) => Padding(
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
              _Thumbnail(
                url: UrlUtil.getThumbnailUrl(item.id),
              ),
              _Title(
                title: item.title,
              ),
            ],
          ),
        ),
      ),
    ),
  );

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
