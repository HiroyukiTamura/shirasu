// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontal_carousels.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HorizontalCarousels extends StatelessWidget {
  const HorizontalCarousels(
      {Key key,
      @required this.list,
      @required this.constraints,
      @required this.maxWidth,
      @required this.detailCaption,
      @required this.onTapItem})
      : super(key: key);

  final List<Item> list;

  final BoxConstraints constraints;

  final double maxWidth;

  final bool detailCaption;

  final void Function(BuildContext, String) onTapItem;

  @override
  Widget build(BuildContext _context) => horizontalCarousels(
      list: list,
      constraints: constraints,
      maxWidth: maxWidth,
      detailCaption: detailCaption,
      onTapItem: onTapItem);
}

class HorizontalCarouselItem extends StatelessWidget {
  const HorizontalCarouselItem(
      {Key key,
      @required this.item,
      @required this.width,
      @required this.detailCaption,
      @required this.onTapItem,
      this.backGround})
      : super(key: key);

  final Item item;

  final double width;

  final bool detailCaption;

  final void Function(BuildContext, String) onTapItem;

  final Color backGround;

  @override
  Widget build(BuildContext _context) => horizontalCarouselItem(_context,
      item: item,
      width: width,
      detailCaption: detailCaption,
      onTapItem: onTapItem,
      backGround: backGround);
}

class _CaptionTitle extends StatelessWidget {
  const _CaptionTitle({Key key, @required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext _context) => _captionTitle(item: item);
}
