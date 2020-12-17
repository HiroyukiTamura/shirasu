import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shirasu/di/network_image_client.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_dashboard/page_dashboard.dart';
import 'package:shirasu/ui_common/image_painter.dart';
import 'package:shirasu/ui_common/no_effect_scroll_behavior.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BillboardHeader extends HookWidget {
  const BillboardHeader({
    Key key,
    @required this.items,
    @required this.height,
  }) : super(key: key);

  static const double _TITLE_H = 72;
  static const double _INDICATOR_H = 48;
  static const double _PRG_TITLE_H = 108;
  static const double CARD_RADIUS = 8;
  static const double _CARD_PADDING = 4;

  final List<Item> items;
  final double height;

  @override
  Widget build(BuildContext context) {
    final offset = useProvider(
        dashboardViewModelSProvider.select((state) => state.state.offset));
    final double scrollRatio =
        0 < offset && offset < height ? offset / height : 0;

    return SizedBox(
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _BackDrop(height: height),
          _Content(
            height: height,
            items: items,
            scrollRatio: scrollRatio,
          ),
          if (0 < scrollRatio)
            Opacity(
                opacity: scrollRatio,
                child: const ColoredBox(color: Colors.black)),
        ],
      ),
    );
  }

  static double getExpandedHeight(double maxWidth) {
    final thumbnailHeight =
        (maxWidth - (CARD_RADIUS + _CARD_PADDING) * 2) / Dimens.IMG_RATIO;
    return _TITLE_H + _PRG_TITLE_H + thumbnailHeight + _INDICATOR_H;
  }
}

class _BackDrop extends HookWidget {
  const _BackDrop({
    @required this.height,
    Key key,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    final image = useProvider(dashboardViewModelSProvider
        .select((viewModel) => viewModel.headerImage));
    if (image == null) return const SizedBox.shrink();

    final width = height * (image.width / image.height);

    return CarouselSlider(
        items: [
          _BackdropImage(
            widgetH: height,
            widgetW: width,
          ),
          _BackdropImage(
            widgetH: height,
            widgetW: width,
          )
        ],
        options: CarouselOptions(
          height: height,
          aspectRatio: image.width / image.height,
          autoPlayInterval: const Duration(minutes: 30),
          autoPlayAnimationDuration: const Duration(seconds: 30),
          scrollDirection: Axis.horizontal,
        )
    );
  }
}

class _BackdropImage extends HookWidget {
  const _BackdropImage({
    @required this.widgetH,
    @required this.widgetW,
    Key key,
  }) : super(key: key);

  final double widgetH;
  final double widgetW;

  @override
  Widget build(BuildContext context) {
    final image = useProvider(dashboardViewModelSProvider
        .select((viewModel) => viewModel.headerImage));
    return ColorFiltered(
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.srcOver),
      child: ColorFiltered(
        colorFilter: const ColorFilter.mode(Colors.grey, BlendMode.saturation),
        child: CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter:
              ImagePainter(image: image, widgetH: widgetH, widgetW: widgetW),
        ),
      ),
    );
  }
}

class _Content extends HookWidget {
  const _Content({
    Key key,
    @required this.height,
    @required this.items,
    @required this.scrollRatio,
  })  : padding = height * scrollRatio / 2,
        super(key: key);

  final double height;
  final List<Item> items;
  final double scrollRatio;
  final double padding;

  /// todo refactor
  @override
  Widget build(BuildContext context) {
    final sc = useScrollController(initialScrollOffset: height + padding);
    final pc = usePageController();
    return SingleChildScrollView(
      controller: sc,
      padding: EdgeInsets.only(top: padding),
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical:
                BillboardHeader._CARD_PADDING + BillboardHeader.CARD_RADIUS),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: BillboardHeader._TITLE_H -
                  BillboardHeader._CARD_PADDING -
                  BillboardHeader.CARD_RADIUS,
              child: Text(
                Strings.HEADING_NOW_ON_AIR,
                style: GoogleFonts.roboto(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: height -
                  (BillboardHeader._TITLE_H + BillboardHeader._INDICATOR_H),
              child: PageView.builder(
                controller: pc,
                itemBuilder: (context, i) =>
                    _BillboardHeaderItem(item: items[i]),
                itemCount: items.length,
              ),
            ),
            Container(
              height: BillboardHeader._INDICATOR_H -
                  BillboardHeader._CARD_PADDING -
                  BillboardHeader.CARD_RADIUS,
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
            )
          ],
        ),
      ),
    );
  }
}

class _BillboardHeaderItem extends StatelessWidget {
  _BillboardHeaderItem({
    Key key,
    @required this.item,
  })  : _thumbnailUrl = UrlUtil.getThumbnailUrl(item.id),
        _channelLogoUrl = UrlUtil.getChannelLogoUrl(item.channelId),
        super(key: key);

  static const double _CHANNEL_LOGO_SIZE = 24;

  final String _thumbnailUrl;
  final String _channelLogoUrl;
  final Item item;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(BillboardHeader._CARD_PADDING),
        child: Card(
          elevation: 4,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BillboardHeader.CARD_RADIUS),
          ),
          child: ColoredBox(
            color: Colors.black,
            child: StackedInkwell(
              onTap: () async => context
                  .read(appRouterProvider)
                  .delegate
                  .pushPage(GlobalRoutePath.program(item.id)),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: Dimens.IMG_RATIO,
                    child: CachedNetworkImage(
                      imageUrl: _thumbnailUrl,
                      errorWidget: (context, url, error) {
                        print(error);
                        return Container(
                          height: double.infinity,
                          width: double.infinity,
                          color: Colors.white60,
                        ); //todo show default thumbnail
                      },
                    ),
                  ),
                  Expanded(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
