import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_dashboard/billboard_expaned.dart';
import 'package:shirasu/screen_dashboard/grid_card_item.dart';
import 'package:shirasu/screen_dashboard/heading.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';

final _dashBoardProvider =
    ChangeNotifierProvider<ViewModelDashBoard>((ref) => ViewModelDashBoard());

class ScreenDashboard extends StatefulWidget {
  @override
  _ScreenDashboardState createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  static const _COLUMN_COUNT = 2;

  static const _CIRCULAR_HEIGHT = 36;

  ScrollController _controller;
  bool _isLoadingMoreCommanded = false;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => context.read(_dashBoardProvider).requestPrograms());
  }

  @override
  void dispose() {
    super.dispose();
    _isLoadingMoreCommanded = false;
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) => Consumer(
        builder: (context, watch, child) {
          final model = watch(_dashBoardProvider).value;

          if (model == null)
            return const Center(child: CircularProgressIndicator());

          final featurePrgData = model?.featureProgramData;
          final newPrgData = model?.allNewPrograms;

          int itemCount = 0;

          if (featurePrgData?.nowBroadcastings?.items?.isNotEmpty == true)
            itemCount = featurePrgData.nowBroadcastings.items.length + 1;
          final nowBroadcastingsLast = itemCount;

          if (featurePrgData?.comingBroadcastings?.items?.isNotEmpty == true)
            itemCount += featurePrgData.comingBroadcastings.items.length + 1;
          final comingBroadcastingsLast = itemCount;

          if (newPrgData?.isNotEmpty == true)
            itemCount += (newPrgData.length / 2).ceil() + 1;

          return LayoutBuilder(
            builder: (_, constraints) {
              return _contentListView(
                context: context,
                model: model,
                itemCount: itemCount,
                nowBroadcastingsLast: nowBroadcastingsLast,
                comingBroadcastingsLast: comingBroadcastingsLast,
                constraints: constraints,
              );
            },
          );
        },
      );

  Future<void> _loadMore(BuildContext context) async {
    if (_isLoadingMoreCommanded) return _isLoadingMoreCommanded = true;
    final result = await context.read(_dashBoardProvider).loadMoreNewPrg();
    _isLoadingMoreCommanded = false;

    switch (result) {
      case ApiClientResult.NO_MORE:
        const snackBar = SnackBar(content: Text(Strings.SNACK_NO_MORE_ITEM));
        Scaffold.of(context).showSnackBar(snackBar);
        break;
      case ApiClientResult.FAILURE:
        const snackBar = SnackBar(content: Text(Strings.SNACK_ERR));
        Scaffold.of(context).showSnackBar(snackBar);
        break;
    }
  }

  Widget _contentListView({
    @required BuildContext context,
    @required DashboardModel model,
    @required int itemCount,
    @required int nowBroadcastingsLast,
    @required int comingBroadcastingsLast,
    @required BoxConstraints constraints,
  }) {
    final isFinish = model.newProgramsDataList?.isNotEmpty == true &&
        model.newProgramsDataList?.last?.newPrograms?.nextToken == null;
    final featurePrgData = model?.featureProgramData;
    final newPrgData = model?.allNewPrograms;

    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (!isFinish &&
            notification is UserScrollNotification &&
            notification.direction == ScrollDirection.idle &&
            _controller.position.maxScrollExtent - _CIRCULAR_HEIGHT <
                _controller.offset) {
          _loadMore(context);
          return true;
        }

        return false;
      },
      child: ListView.builder(
          controller: _controller,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: isFinish ? itemCount : itemCount + 1,
          itemBuilder: (context, index) {
            if (index < nowBroadcastingsLast) {
              return const SizedBox();
            } else if (index < comingBroadcastingsLast) {
              final i = index - nowBroadcastingsLast;

              if (i == 0)
                return const Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Heading(text: Strings.HEADING_UPCOMING),
                );
              else
                return Padding(
                  padding: const EdgeInsets.only(bottom: 48),
                  child: BillboardExpanded(
                    item: featurePrgData.comingBroadcastings.items[i - 1],
                  ),
                );
            } else if (index < itemCount || isFinish) {
              final i = index - comingBroadcastingsLast;

              if (i == 0)
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Heading(text: Strings.HEADING_NEW_PRG),
                );

              final rowIndex = i - 1;
              final start = rowIndex * _COLUMN_COUNT;
              final end = start + _COLUMN_COUNT;
              final children =
                  newPrgData.getRange(start, end).toList().map<Widget>((item) {
                final width = constraints.maxWidth / 2 -
                    GirdCardItem.HORIZONTAL_MARGIN * 2;
                final height = width * 4 / 3;
                return GirdCardItem(
                  width: width,
                  height: height,
                  item: item,
                );
              }).toList(growable: false);

              return Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: GirdCardItem.HORIZONTAL_MARGIN),
                child: Row(
                  children: children,
                ),
              );
            } else
              return const Center(
                child: CircularProgressIndicator(),
              );
          }),
    );
  }
}
