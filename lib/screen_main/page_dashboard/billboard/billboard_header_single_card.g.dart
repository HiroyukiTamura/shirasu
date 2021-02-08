// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billboard_header_single_card.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class BillboardHeaderSingleCardView extends StatelessWidget {
  const BillboardHeaderSingleCardView(
      {Key key,
      @required this.height,
      @required this.data,
      @required this.onTapItem,
      @required this.controller})
      : super(key: key);

  final double height;

  final HeaderData data;

  final void Function(BuildContext, String) onTapItem;

  final PageController controller;

  @override
  Widget build(BuildContext _context) => billboardHeaderSingleCardView(
      height: height, data: data, onTapItem: onTapItem, controller: controller);
}

class _BillboardHeaderSingleCard extends StatelessWidget {
  const _BillboardHeaderSingleCard(
      {Key key, @required this.item, @required this.onTapItem})
      : super(key: key);

  final Item item;

  final void Function(BuildContext, String) onTapItem;

  @override
  Widget build(BuildContext _context) =>
      _billboardHeaderSingleCard(_context, item: item, onTapItem: onTapItem);
}

class _Thumbnail extends StatelessWidget {
  const _Thumbnail({Key key, @required this.url}) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext _context) => _thumbnail(url: url);
}

class _Title extends StatelessWidget {
  const _Title({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext _context) => _title(title: title);
}
