// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontal_carousels.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HorizontalCarouselItem extends StatelessWidget {
  const HorizontalCarouselItem(
      {Key key,
      @required this.conf,
      @required this.width,
      @required this.detailCaption,
      @required this.onTapItem,
      this.backGround})
      : super(key: key);

  final HorizontalCarouselItemConf conf;

  final double width;

  final bool detailCaption;

  final void Function(BuildContext, String) onTapItem;

  final Color backGround;

  @override
  Widget build(BuildContext _context) => horizontalCarouselItem(_context,
      conf: conf,
      width: width,
      detailCaption: detailCaption,
      onTapItem: onTapItem,
      backGround: backGround);
}

class _CaptionTitle extends StatelessWidget {
  const _CaptionTitle({Key key, @required this.prgTitle}) : super(key: key);

  final String prgTitle;

  @override
  Widget build(BuildContext _context) => _captionTitle(prgTitle: prgTitle);
}

class _HorizontalCarouselDetailCaption extends StatelessWidget {
  const _HorizontalCarouselDetailCaption({Key key, @required this.conf})
      : super(key: key);

  final HorizontalCarouselItemConf conf;

  @override
  Widget build(BuildContext _context) =>
      _horizontalCarouselDetailCaption(_context, conf: conf);
}
