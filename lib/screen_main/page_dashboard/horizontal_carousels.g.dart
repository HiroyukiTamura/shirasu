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
      @required this.onTap})
      : super(key: key);

  final List<Item> list;

  final BoxConstraints constraints;

  final double maxWidth;

  final bool detailCaption;

  final void Function(Item) onTap;

  @override
  Widget build(BuildContext _context) => horizontalCarousels(
      list: list,
      constraints: constraints,
      maxWidth: maxWidth,
      detailCaption: detailCaption,
      onTap: onTap);
}

class _HorizontalCarouselItem extends StatelessWidget {
  const _HorizontalCarouselItem(
      {Key key,
      @required this.item,
      @required this.width,
      @required this.detailCaption,
      @required this.onTap})
      : super(key: key);

  final Item item;

  final double width;

  final bool detailCaption;

  final void Function(Item) onTap;

  @override
  Widget build(BuildContext _context) => _horizontalCarouselItem(_context,
      item: item, width: width, detailCaption: detailCaption, onTap: onTap);
}

class _CaptionTitle extends StatelessWidget {
  const _CaptionTitle({Key key, @required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext _context) => _captionTitle(item: item);
}

class _CaptionDetail extends StatelessWidget {
  const _CaptionDetail({Key key, @required this.item}) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext _context) => _captionDetail(_context, item: item);
}
