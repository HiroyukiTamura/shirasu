// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_item.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class ListItem extends StatelessWidget {
  const ListItem(
      {Key key, @required this.title, @required this.subTitle, this.onTap})
      : super(key: key);

  final String title;

  final String subTitle;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      listItem(_context, title: title, subTitle: subTitle, onTap: onTap);
}
