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

class ListBtmSheet<T> extends StatelessWidget {
  const ListBtmSheet(
      {Key key,
      @required this.items,
      @required this.textBuilder,
      @required this.visible,
      @required this.onTapBackDrop,
      @required this.onTap,
      @required this.child,
      @required this.isSelected})
      : super(key: key);

  final List<T> items;

  final String Function(T) textBuilder;

  final bool visible;

  final void Function() onTapBackDrop;

  final void Function(T) onTap;

  final Widget child;

  final bool Function(T) isSelected;

  @override
  Widget build(BuildContext _context) => listBtmSheet<T>(
      items: items,
      textBuilder: textBuilder,
      visible: visible,
      onTapBackDrop: onTapBackDrop,
      onTap: onTap,
      child: child,
      isSelected: isSelected);
}

class TextBtnBtmSheet extends StatelessWidget {
  const TextBtnBtmSheet(
      {Key key,
      @required this.onTapBackDrop,
      @required this.visible,
      @required this.child,
      @required this.text,
      @required this.onTap})
      : super(key: key);

  final void Function() onTapBackDrop;

  final bool visible;

  final Widget child;

  final String text;

  final FutureOr<void> Function() onTap;

  @override
  Widget build(BuildContext _context) => textBtnBtmSheet(
      onTapBackDrop: onTapBackDrop,
      visible: visible,
      child: child,
      text: text,
      onTap: onTap);
}
