import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/extension.dart';

class BillboardHeaderMultiCardView extends StatelessWidget {
  const BillboardHeaderMultiCardView({
    Key key,
    @required this.data,
    @required this.onTapItem,
    @required this.controller,
  }) : super(key: key);

  static const double WIDTH = 360;
  final HeaderData data;
  final OnTapItem onTapItem;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    final height =
        WIDTH / Dimens.IMG_RATIO + HorizontalCarouselDetailCaption.HEIGHT;
    final cardCountInPage = data.constraints.maxWidth ~/ WIDTH;
    final pageCount = (data.items.length / cardCountInPage).ceil();
    return SizedBox(
      height: height,
      child: PageView.builder(
        controller: controller,
        itemBuilder: (context, i) {
          int start = i == 0 ? 0 : data.items.length ~/ i;
          int end = min(start + cardCountInPage, data.items.length);

          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: data.items
                .sublist(start, end)
                .map<Widget>((item) => HorizontalCarouselItem(
              item: item,
              onTapItem: onTapItem,
              detailCaption: true,
              width: WIDTH,
              backGround: Colors.black,
            ))
                .joinWith(() => const SizedBox(width: 24))
                .toUnmodifiableList(),
          );
        },
        itemCount: pageCount,
      ),
    );
  }
}