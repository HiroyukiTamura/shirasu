// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _Heading extends HookWidget {
  const _Heading({Key key, @required this.isSelected}) : super(key: key);

  final bool Function() isSelected;

  @override
  Widget build(BuildContext _context) => _heading(isSelected: isSelected);
}

class BtmSheetListItemSingle extends StatelessWidget {
  const BtmSheetListItemSingle(
      {Key key, @required this.icon, @required this.text, @required this.onTap})
      : super(key: key);

  final IconData icon;

  final String text;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      btmSheetListItemSingle(icon: icon, text: text, onTap: onTap);
}
