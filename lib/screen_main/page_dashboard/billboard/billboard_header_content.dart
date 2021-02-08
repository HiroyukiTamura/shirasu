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
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/util/types.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

part 'billboard_header_content.g.dart';

class BillboardHeaderContent extends StatefulHookWidget {
  const BillboardHeaderContent({
    Key key,
    @required this.data,
    @required this.onTapItem,
  }) : super(key: key);

  final HeaderData data;
  final OnTapItem onTapItem;

  @override
  _BillboardHeaderContentState createState() => _BillboardHeaderContentState();
}

class _BillboardHeaderContentState extends State<BillboardHeaderContent>
    with AutomaticKeepAliveClientMixin {
  PageController _pc;

  double get _singleCardViewH {
    double h = widget.data.height -
        BillboardHeader.TITLE_H -
        BillboardHeader.CARD_SPACE * 2 -
        BillboardHeader.BTM_NOTCH_H_PAD -
        (widget.data.showIndicator
            ? BillboardHeader.INDICATOR_H
            : BillboardHeader.BTM_PADDING);
    return h;
  }

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _pc = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    ScrollController sc;
    double topPadding = 0;

    if (!widget.data.wideMode) {
      final scrollRatio = useProvider(scrollRatioProvider(widget.data.height));
      topPadding = widget.data.height * scrollRatio / 2;
      sc = useScrollController(
          initialScrollOffset: widget.data.height + topPadding);
    } else {
      useProvider(
          scrollRatioProvider(widget.data.height)); // avoid hook mismatch
    }

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
            if (widget.data.wideMode)
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: BillboardHeader.CARD_SPACE,
                ),
                child: BillboardHeaderMultiCardView(
                  data: widget.data,
                  onTapItem: widget.onTapItem,
                  controller: _pc,
                ),
              )
            else
              BillboardHeaderSingleCardView(
                onTapItem: widget.onTapItem,
                height: _singleCardViewH,
                data: widget.data,
                controller: _pc,
              ),
            if (widget.data.showIndicator)
              _Indicator(
                controller: _pc,
                count: widget.data.wideMode
                    ? BillboardHeaderMultiCardView.calcPageCount(
                        widget.data.constraints, widget.data.items)
                    : widget.data.items.length,
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
        effect: const WormEffect(
          dotColor: Colors.white54,
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
