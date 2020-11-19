import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard_expaned.dart';
import 'package:shirasu/screen_main/page_dashboard/grid_card_item.dart';
import 'package:shirasu/screen_main/page_dashboard/heading.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';

final _dashBoardProvider =
    ChangeNotifierProvider.autoDispose<ViewModelDashBoard>(
        (_) => ViewModelDashBoard());

class PageDashboardInMainScreen extends StatefulHookWidget {
  const PageDashboardInMainScreen({Key key}) : super(key: key);

  @override
  _PageDashboardInMainScreenState createState() =>
      _PageDashboardInMainScreenState();
}

class _PageDashboardInMainScreenState extends State<PageDashboardInMainScreen> with AfterLayoutMixin<PageDashboardInMainScreen> {

  @override
  void afterFirstLayout(BuildContext context) => context.read(_dashBoardProvider).requestPrograms();

  @override
  Widget build(BuildContext context) => useProvider(_dashBoardProvider)
      .value
      .when(
        preInitialized: () => const CenterCircleProgress(),
        error: () => const Text('error!'), //todo show error widget
        success: (model) {
          final featurePrgData = model?.featureProgramData;
          final newPrgData = model?.allNewPrograms;

          int itemCount = 0;

          if (featurePrgData?.nowBroadcastings?.items?.isNotEmpty == true)
            itemCount = featurePrgData.nowBroadcastings.items.length + 1;
          final nowBroadcastingsLast = itemCount;

          if (featurePrgData?.comingBroadcastings?.items?.isNotEmpty == true)
            itemCount += featurePrgData.comingBroadcastings.items.length + 1;
          final comingBroadcastingsLast = itemCount;

          if (featurePrgData?.viewerUser?.subscribedPrograms?.isNotEmpty ==
              true) itemCount += 2;

          final subscribingLast = itemCount;

          if (newPrgData?.isNotEmpty == true)
            itemCount += (newPrgData.length / 2).ceil() + 1;

          return _ListViewContent(
            itemCount: itemCount,
            nowBroadcastingsLast: nowBroadcastingsLast,
            comingBroadcastingsLast: comingBroadcastingsLast,
            subscribingLast: subscribingLast,
          );
        },
      );
}

class _ListViewContent extends HookWidget {

  const _ListViewContent({
    @required this.itemCount,
    @required this.nowBroadcastingsLast,
    @required this.comingBroadcastingsLast,
    @required this.subscribingLast,
  });

  final int itemCount;
  final int nowBroadcastingsLast;
  final int comingBroadcastingsLast;
  final int subscribingLast;

  static const _COLUMN_COUNT = 2;

  static const _CIRCULAR_HEIGHT = 36;
  
  @override
  Widget build(BuildContext context) {
    final model = (context.read(_dashBoardProvider).value as StateSuccess).dashboardModel;
    final isFinish = model.newProgramsDataList?.isNotEmpty == true &&
        model.newProgramsDataList?.last?.newPrograms?.nextToken == null;
    final featurePrgData = model?.featureProgramData;
    final newPrgData = model?.allNewPrograms;

    final controller = useScrollController();

    return LayoutBuilder(
      builder: (context, constraints) {
        return NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            if (!isFinish &&
                notification is UserScrollNotification &&
                notification.direction == ScrollDirection.idle &&
                controller.position.maxScrollExtent - _CIRCULAR_HEIGHT < controller.offset) {
              _loadMore(context);
              return true;
            }

            return false;
          },
          child: ListView.builder(
              controller: controller,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: isFinish ? itemCount : itemCount + 1,
              itemBuilder: (context, index) {
                if (index < nowBroadcastingsLast && nowBroadcastingsLast != 0) {
                  if (index == 0)
                    return const Heading(text: Strings.HEADING_NOW_ON_AIR);
                  else {
                    final item = featurePrgData.nowBroadcastings.items[index - 1];
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 48,
                        top: 16,
                      ),
                      child: BillboardExpanded(
                        isLive: true,
                        item: item,
                        onTap: () async => routerDelegate
                            .pushPage(GlobalRoutePath.program(item.id)),
                      ),
                    );
                  }
                } else if (index < comingBroadcastingsLast &&
                    nowBroadcastingsLast != comingBroadcastingsLast) {
                  final i = index - nowBroadcastingsLast;

                  if (i == 0)
                    return const Heading(text: Strings.HEADING_UPCOMING);
                  else {
                    final item =
                        featurePrgData.comingBroadcastings.items[i - 1];
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 48,
                        top: 16,
                      ),
                      child: BillboardExpanded(
                        isLive: true,
                        item: item,
                        onTap: () async => routerDelegate
                            .pushPage(GlobalRoutePath.program(item.id)),
                      ),
                    );
                  }
                } else if (index < subscribingLast &&
                    comingBroadcastingsLast != subscribingLast) {
                  final i = index - comingBroadcastingsLast;

                  return i == 0
                      ? const Heading(text: Strings.HEADING_SUBSCRIBING)
                      : Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 32),
                          child: HorizontalCarousels(
                            list: featurePrgData.viewerUser.subscribedPrograms,
                            columnCount: _COLUMN_COUNT,
                            maxWidth: constraints.maxWidth,
                            onTap: (item) async => routerDelegate
                                .pushPage(GlobalRoutePath.program(item.id)),
                          ),
                        );
                } else if (index < itemCount || isFinish) {
                  final i = index - subscribingLast;

                  if (i == 0)
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Heading(text: Strings.HEADING_NEW_PRG),
                    );

                  final rowIndex = i - 1;
                  final start = rowIndex * _COLUMN_COUNT;
                  final end = start + _COLUMN_COUNT;
                  final children = newPrgData
                      .getRange(start, end)
                      .toList()
                      .map<Widget>((item) {
                    final width = constraints.maxWidth / _COLUMN_COUNT -
                        GirdCardItem.HORIZONTAL_MARGIN * (_COLUMN_COUNT + 1);
                    final height = width * Dimens.DASHBOARD_GRID_RATIO -
                        GirdCardItem.HORIZONTAL_MARGIN * 2;
                    return GirdCardItem(
                      width: width,
                      height: height,
                      item: item,
                      onTap: () async => routerDelegate
                          .pushPage(GlobalRoutePath.program(item.id)),
                    );
                  }).toList(growable: false);

                  return Padding(
                    padding: const EdgeInsets.only(
                      right: GirdCardItem.HORIZONTAL_MARGIN,
                      left: GirdCardItem.HORIZONTAL_MARGIN,
                      top: GirdCardItem.HORIZONTAL_MARGIN * 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: children,
                    ),
                  );
                } else
                  return const CenterCircleProgress();
              }),
        );
      },
    );
  }

  Future<void> _loadMore(BuildContext context) async {
    final result = await context.read(_dashBoardProvider).loadMoreNewPrg();

    switch (result) {
      case ApiClientResult.NO_MORE:
        const snackBar = SnackBar(content: Text(Strings.SNACK_NO_MORE_ITEM));
        Scaffold.of(context).showSnackBar(snackBar);
        break;
      case ApiClientResult.FAILURE:
        const snackBar = SnackBar(content: Text(Strings.SNACK_ERR));
        Scaffold.of(context).showSnackBar(snackBar);
        break;
      default:
        // do nothing
        break;
    }
  }
}
