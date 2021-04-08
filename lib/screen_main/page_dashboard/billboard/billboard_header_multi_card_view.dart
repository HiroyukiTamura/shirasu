import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/util/types.dart';

/// must be max width of this widget is more than [WIDTH]
/// @see [BuildContextX.isBigScreen]
class BillboardHeaderMultiCardView extends StatelessWidget {
  const BillboardHeaderMultiCardView({
    @required this.data,
    @required this.onTapItem,
    @required this.controller,
    Key key,
  }) : super(key: key);

  static const double WIDTH = 360;
  final HeaderData data;
  final OnTapItem onTapItem;
  final PageController controller;

  /// see [build]
  static int calcPageCount(BoxConstraints constraints, List<Item> items) {
    final cardCountInPage = constraints.maxWidth ~/ WIDTH;
    return (items.length / cardCountInPage).ceil();
  }

  @override
  Widget build(BuildContext context) {
    final height = WIDTH / Dimens.IMG_RATIO + Dimens.CAROUSEL_DETAIL_CAPTION_H;
    final cardCountInPage = data.constraints.maxWidth ~/ WIDTH;
    final pageCount = (data.items.length / cardCountInPage).ceil();
    return SizedBox(
      height: height,
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, i) {
          final start = i == 0 ? 0 : data.items.length ~/ i;
          final end = min(start + cardCountInPage, data.items.length);

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: data.items
                .sublist(start, end)
                .map<Widget>((item) => HorizontalCarouselItem(
              conf: HorizontalCarouselItemConf.from(item),
              onTapItem: onTapItem,
              detailCaption: true,
              width: WIDTH,
              backGround: Colors.black,
            ))
                .joinWith(() => const SizedBox(width: 24))
                .toUnmodifiable(),
          );
        },
        itemCount: pageCount,
      ),
    );
  }
}
