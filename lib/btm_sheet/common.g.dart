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

class TextBtmSheetContent extends StatelessWidget {
  const TextBtmSheetContent(
      {Key key, @required this.text, @required this.onTap})
      : super(key: key);

  final String text;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      textBtmSheetContent(text: text, onTap: onTap);
}
