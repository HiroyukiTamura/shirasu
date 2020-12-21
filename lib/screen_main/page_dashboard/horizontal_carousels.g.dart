// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontal_carousels.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class HorizontalCarousels extends StatelessWidget {
  const HorizontalCarousels(
      {Key key,
      @required this.list,
      @required this.columnCount,
      @required this.maxWidth,
      @required this.onTap})
      : super(key: key);

  final List<Item> list;

  final int columnCount;

  final double maxWidth;

  final void Function(Item) onTap;

  @override
  Widget build(BuildContext _context) => horizontalCarousels(
      list: list, columnCount: columnCount, maxWidth: maxWidth, onTap: onTap);
}

class _HorizontalCarouselItem extends StatelessWidget {
  const _HorizontalCarouselItem({Key key, this.item, this.width, this.onTap})
      : super(key: key);

  final Item item;

  final double width;

  final void Function(Item) onTap;

  @override
  Widget build(BuildContext _context) =>
      _horizontalCarouselItem(item: item, width: width, onTap: onTap);
}
