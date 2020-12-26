import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header_multi_card_view.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header_single_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part 'billboard_header_content.g.dart';

class BillboardHeaderContent extends HookWidget {
  const BillboardHeaderContent({
    Key key,
    @required this.data,
    @required this.onTapItem,
  }) : super(key: key);

  final HeaderData data;
  final OnTapItem onTapItem;

  double get _singleCardViewH {
    double h = data.height -
        BillboardHeader.TITLE_H -
        BillboardHeader.CARD_SPACE * 2 -
        (data.showIndicator
            ? BillboardHeader.INDICATOR_H
            : BillboardHeader.BTM_PADDING);
    return h;
  }

  @override
  Widget build(BuildContext context) {
    ScrollController sc;
    double topPadding = 0;

    if (!data.wideMode) {
      final scrollRatio = useProvider(scrollRatioProvider(data.height));
      topPadding = data.height * scrollRatio / 2;
      sc = useScrollController(initialScrollOffset: data.height + topPadding);
    }
    final pc = usePageController();

    return SingleChildScrollView(
      controller: sc,
      padding: EdgeInsets.only(top: topPadding),
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(vertical: BillboardHeader.CARD_SPACE),
        child: Column(
          children: [
            const _Title(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: BillboardHeader.CARD_SPACE),
              child: data.wideMode
                  ? BillboardHeaderMultiCardView(
                      data: data,
                      onTapItem: onTapItem,
                      controller: pc,
                    )
                  : BillboardHeaderSingleCardView(
                      onTapItem: onTapItem,
                      height: _singleCardViewH,
                      data: data,
                      controller: pc,
                    ),
            ),
            if (data.showIndicator)
              _Indicator(
                controller: pc,
                count: data.items.length,
              )
            else
              const SizedBox(height: BillboardHeader.BTM_PADDING)
          ],
        ),
      ),
    );
  }
}

@swidget
Widget _indicator({
  @required PageController controller,
  @required int count,
}) =>
    Container(
      height: BillboardHeader.INDICATOR_H,
      alignment: Alignment.center,
      child: SmoothPageIndicator(
        controller: controller,
        count: count,
        effect: WormEffect(
          dotColor: Colors.white.withOpacity(.5),
          activeDotColor: Colors.white,
          dotHeight: 8,
          dotWidth: 8,
        ),
      ),
    );

@swidget
Widget _title() => Container(
      alignment: Alignment.center,
      height: BillboardHeader.TITLE_H,
      child: Text(
        Strings.HEADING_NOW_ON_AIR,
        style: GoogleFonts.roboto(
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
