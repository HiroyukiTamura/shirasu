import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header_content.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header_multi_card_view.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/header_backdrop.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/header_color_filter.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final scrollRatioProvider =
    Provider.family.autoDispose<double, double>((ref, height) {
  final offset = ref.watch(pDashboardViewModel).state.offset;
  return 0 < offset && offset < height ? offset / height : 0;
});

typedef OnTapItem = void Function(BuildContext context, String prgId);

class HeaderData {
  const HeaderData({
    @required this.wideMode,
    @required this.constraints,
    @required this.items,
    @required this.height,
    @required this.showIndicator,
  });

  final bool wideMode;
  final BoxConstraints constraints;
  final List<Item> items;
  final double height;
  final bool showIndicator;
}

class BillboardHeader extends StatelessWidget {
  const BillboardHeader._({
    Key key,
    @required this.data,
    @required this.onTapItem,
  }) : super(key: key);

  factory BillboardHeader.build({
    @required bool wideMode,
    @required BoxConstraints constraints,
    @required List<Item> items,
    @required OnTapItem onTapItem,
  }) {
    final thumbnailHeight =
        (constraints.maxWidth - CARD_SPACE * 2) / Dimens.IMG_RATIO;
    final showIndicator = 1 < items.length;
    final bottomH = showIndicator ? INDICATOR_H : BTM_PADDING;
    final commonH = TITLE_H + CARD_SPACE * 2 + bottomH + BTM_NOTCH_H_PAD;
    final height = wideMode
        ? BillboardHeaderMultiCardView.WIDTH / Dimens.IMG_RATIO +
            HorizontalCarouselDetailCaption.HEIGHT
        : _PRG_TITLE_H + thumbnailHeight;
    return BillboardHeader._(
      data: HeaderData(
        wideMode: wideMode,
        constraints: constraints,
        items: items,
        height: height + commonH,
        showIndicator: showIndicator,
      ),
      onTapItem: onTapItem,
    );
  }

  static const double TITLE_H = 64;
  static const double INDICATOR_H = 36;
  static const double _PRG_TITLE_H = 108;
  static const double CARD_RADIUS = 8;
  static const double CARD_PADDING = 4;
  static const double BTM_PADDING = 24;
  static const double CARD_SPACE = CARD_RADIUS / 2 + CARD_PADDING;
  static const double BTM_NOTCH_H = 36;
  static const double BTM_NOTCH_H_PAD = 24;
  static const _CORNER_RADIUS = Radius.circular(BTM_NOTCH_H_PAD);

  final HeaderData data;
  final OnTapItem onTapItem;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Container(
            height: data.height,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                BackDrop(height: data.height),
                BillboardHeaderContent(
                  data: data,
                  onTapItem: onTapItem,
                ),
                HeaderColorFilter(data: data),
              ],
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: BTM_NOTCH_H_PAD,
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: _CORNER_RADIUS,
                    topRight: _CORNER_RADIUS,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
