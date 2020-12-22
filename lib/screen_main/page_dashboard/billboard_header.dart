import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_main/page_dashboard/header_backdrop.dart';
import 'package:shirasu/screen_main/page_dashboard/header_color_filter.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final scrollRatioProvider =
    Provider.family.autoDispose<double, double>((ref, height) {
  final offset = ref.watch(pDashboardViewModel).state.offset;
  return 0 < offset && offset < height ? offset / height : 0;
});

typedef OnTapItem = void Function(BuildContext context, String prgId);

class BillboardHeader extends StatelessWidget {
  const BillboardHeader({
    Key key,
    @required this.items,
    @required this.height,
    @required this.onTapItem,
  }) : super(key: key);

  static const double _TITLE_H = 64;
  static const double _INDICATOR_H = 36;
  static const double _PRG_TITLE_H = 108;
  static const double _CARD_RADIUS = 8;
  static const double _CARD_PADDING = 4;
  static const double _CARD_SPACE = _CARD_RADIUS/2 + _CARD_PADDING;

  final List<Item> items;
  final double height;
  final OnTapItem onTapItem;

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        margin: const EdgeInsets.only(bottom: 48),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BackDrop(height: height),
            _Content(
              height: height,
              items: items,
              onTapItem: onTapItem,
            ),
            HeaderColorFilter(height: height),
          ],
        ),
      );

  static double getExpandedHeight(double maxWidth, bool showIndicator) {
    final thumbnailHeight = (maxWidth - _CARD_SPACE * 2) / Dimens.IMG_RATIO;
    double height = _TITLE_H + _PRG_TITLE_H + _CARD_SPACE * 2 + thumbnailHeight;
    if (showIndicator) height += _INDICATOR_H;
    return height;
  }
}

class _Content extends HookWidget {
  const _Content({
    Key key,
    @required this.height,
    @required this.items,
    @required this.onTapItem,
  })  : _showIndicator = 1 < items.length,
        super(key: key);

  final double height;
  final List<Item> items;
  final bool _showIndicator;
  final OnTapItem onTapItem;

  double get _pageViewH {
    double h = height - BillboardHeader._TITLE_H - BillboardHeader._CARD_SPACE * 2;
    if (_showIndicator) h -= BillboardHeader._INDICATOR_H;
    return h;
  }

  @override
  Widget build(BuildContext context) {
    final scrollRatio = useProvider(scrollRatioProvider(height));
    final padding = height * scrollRatio / 2;
    final sc = useScrollController(initialScrollOffset: height + padding);
    final pc = usePageController();

    return SingleChildScrollView(
      controller: sc,
      padding: EdgeInsets.only(top: padding),
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: BillboardHeader._CARD_SPACE),
        child: Column(
          children: [
            _title(),
            _pageView(pc),
            if (_showIndicator) _indicator(pc),
          ],
        ),
      ),
    );
  }

  static Widget _title() => Container(
        alignment: Alignment.center,
        height: BillboardHeader._TITLE_H,
        child: Text(
          Strings.HEADING_NOW_ON_AIR,
          style: GoogleFonts.roboto(
            fontSize: 28,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget _pageView(PageController pc) => SizedBox(
        height: _pageViewH,
        child: PageView.builder(
          controller: pc,
          itemBuilder: (context, i) => _BillboardHeaderItem(
            item: items[i],
            onTapItem: onTapItem,
          ),
          itemCount: items.length,
        ),
      );

  Widget _indicator(PageController pc) => Container(
        height: BillboardHeader._INDICATOR_H,
        alignment: Alignment.center,
        child: SmoothPageIndicator(
          controller: pc,
          count: items.length,
          effect: WormEffect(
            dotColor: Colors.white.withOpacity(.5),
            activeDotColor: Colors.white,
            dotHeight: 8,
            dotWidth: 8,
          ),
        ),
      );
}

class _BillboardHeaderItem extends StatelessWidget {
  _BillboardHeaderItem({
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
        padding: const EdgeInsets.all(BillboardHeader._CARD_PADDING),
        child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BillboardHeader._CARD_RADIUS),
          ),
          child: ColoredBox(
            color: Colors.black,
            child: StackedInkWell(
              onTap: () async => onTapItem(context, item.id),
              child: Column(
                children: [
                  _thumbnail(),
                  _title(),
                ],
              ),
            ),
          ),
        ),
      );

  Widget _thumbnail() => AspectRatio(
        aspectRatio: Dimens.IMG_RATIO,
        child: CachedNetworkImage(
          imageUrl: _thumbnailUrl,
          errorWidget: Util.defaultPrgThumbnail,
        ),
      );

  Widget _title() => Expanded(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Text(
            item.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyles.DASHBOARD_BILLBOARD_TITLE_H,
          ),
        ),
      );
}
