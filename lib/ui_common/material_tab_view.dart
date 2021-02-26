import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

part 'material_tab_view.g.dart';

const double _INDICATOR_WIDTH = 24;
/// ref: default value of [MaterialIndicator.topLeftRadius], [MaterialIndicator.topRightRadius]
const double _INDICATOR_RADIUS = 5;

@swidget
Widget materialTabView({
  @required List<Tab> tabs,
  @required List<Widget> pages,
  int initialIndex = 0,
}) =>
    DefaultTabController(
      length: tabs.length,
      initialIndex: initialIndex,
      child: Column(children: [
        LayoutBuilder(
            builder: (context, constrains) => TabBar(
                  indicator: MaterialIndicator(
                    color: Theme.of(context).accentColor,
                    bottomLeftRadius: _INDICATOR_RADIUS,
                    bottomRightRadius: _INDICATOR_RADIUS,
                    horizontalPadding:
                        (constrains.maxWidth / tabs.length - _INDICATOR_WIDTH) /
                            2,
                    strokeWidth: 1,
                  ),
                  tabs: tabs,
                )),
        Expanded(
          child: TabBarView(children: pages),
        ),
      ]),
    );
