import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/ui_common/no_effect_scroll_behavior.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BillboardHeader extends StatelessWidget {
  const BillboardHeader({
    Key key,
    @required this.items,
    @required this.height,
    @required this.scrollRatio,
    @required this.width,
  }) : super(key: key);

  static const double _TITLE_H = 56;
  static const double _SPACE_H = 16;
  static const double _PRG_TITLE_H = 108;
  static const double CARD_RADIUS = 8;

  final List<Item> items;
  final double height;
  final double width;
  final double scrollRatio;

  @override
  Widget build(BuildContext context) =>
      SizedBox(
        height: height,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ColoredBox(
              color: Colors.deepOrange,
              child: _Content(
                height: height,
                width: width,
                items: items,
                scrollRatio: scrollRatio,
              ),
            ),
            if (0 < scrollRatio)
              Opacity(
                  opacity: scrollRatio,
                  child: const ColoredBox(color: Colors.black)),
          ],
        ),
      );

  static double getExpandedHeight(double maxWidth) {
    final thumbnailHeight = (maxWidth - CARD_RADIUS * 2) / Dimens.IMG_RATIO;
    return _TITLE_H + _SPACE_H + thumbnailHeight + _PRG_TITLE_H;
  }
}

class _Content extends HookWidget {
  const _Content({
    Key key,
    @required this.height,
    @required this.items,
    @required this.scrollRatio,
    @required this.width,
  })
      : paddingBtm = height * scrollRatio / 2,
        super(key: key);

  final double height;
  final double width;
  final List<Item> items;
  final double scrollRatio;
  final double paddingBtm;

  static const double _TITLE_H = 56;
  static const double _SPACE_H = 16;

  @override
  Widget build(BuildContext context) {
    final controller = useScrollController(initialScrollOffset: height + paddingBtm);
    return ScrollConfiguration(
      behavior: const NoEffectScrollBehavior(),
      child: SingleChildScrollView(
        controller: controller,
        padding: EdgeInsets.only(bottom: paddingBtm),
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: _TITLE_H,
              child: Text(
                Strings.HEADING_NOW_ON_AIR,
                style: GoogleFonts.roboto(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: _SPACE_H),
            SizedBox(
              height: height - (_SPACE_H + _TITLE_H),
              child: PageView.builder(
                itemBuilder: (context, i) =>
                    _BillboardHeaderItem(
                      item: items[i],
                      height: height,
                    ),
                itemCount: items.length,
              ),
            ),
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
    @required this.height,
  })
      : _thumbnailUrl = UrlUtil.getThumbnailUrl(item.id),
        _channelLogoUrl = UrlUtil.getChannelLogoUrl(item.channelId),
        super(key: key);

  static const double _CHANNEL_LOGO_SIZE = 24;

  final String _thumbnailUrl;
  final String _channelLogoUrl;
  final Item item;
  final double height;

  @override
  Widget build(BuildContext context) =>
      Card(
        elevation: 8,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(BillboardHeader.CARD_RADIUS),
        ),
        child: ColoredBox(
          color: Colors.black,
          child: StackedInkwell(
            onTap: () async =>
                context
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
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      item.title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: TextStyles.DASHBOARD_BILLBOARD_TITLE_H,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
