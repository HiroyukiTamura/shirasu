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

class Modal extends StatelessWidget {
  const Modal(
      {Key key,
      @required this.onClose,
      @required this.visible,
      @required this.btmSheetContent,
      @required this.child})
      : super(key: key);

  final void Function() onClose;

  final bool visible;

  final Widget btmSheetContent;

  final Widget child;

  @override
  Widget build(BuildContext _context) => modal(
      onClose: onClose,
      visible: visible,
      btmSheetContent: btmSheetContent,
      child: child);
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
