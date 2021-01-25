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
