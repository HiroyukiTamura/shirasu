import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class MaterialTabView extends HookWidget {
  const MaterialTabView({
    Key key,
    @required this.tabs,
    @required this.pages,
    this.initialIndex = 0,
  })  : assert(tabs.length == pages.length),
        super(key: key);

  static const double _INDICATOR_WIDTH = 24;
  static const double _INDICATOR_RADIUS = 5;

  final List<Tab> tabs;
  final List<Widget> pages;
  final int initialIndex;

  @override
  Widget build(BuildContext context) {
    final controller = useTabController(initialLength: tabs.length, initialIndex: initialIndex);
    return Column(children: [
      LayoutBuilder(
          builder: (context, constrains) => TabBar(
                controller: controller,
                indicator: MaterialIndicator(
                  color: Theme.of(context).accentColor,
                  topLeftRadius: _INDICATOR_RADIUS,
                  topRightRadius: _INDICATOR_RADIUS,
                  bottomLeftRadius: _INDICATOR_RADIUS,
                  bottomRightRadius: _INDICATOR_RADIUS,
                  horizontalPadding:
                      (constrains.maxWidth / tabs.length - _INDICATOR_WIDTH) /
                          2,
                  strokeWidth: 1,
                  tabPosition: TabPosition.bottom,
                ),
                tabs: tabs,
              )),
      Expanded(
        child: TabBarView(
          controller: controller,
          children: pages,
        ),
      ),
    ]);
  }
}
