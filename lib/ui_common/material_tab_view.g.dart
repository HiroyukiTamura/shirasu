// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_tab_view.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class MaterialTabView extends StatelessWidget {
  const MaterialTabView(
      {Key key,
      @required this.tabs,
      @required this.pages,
      this.initialIndex = 0})
      : super(key: key);

  final List<Tab> tabs;

  final List<Widget> pages;

  final int initialIndex;

  @override
  Widget build(BuildContext _context) =>
      materialTabView(tabs: tabs, pages: pages, initialIndex: initialIndex);
}
