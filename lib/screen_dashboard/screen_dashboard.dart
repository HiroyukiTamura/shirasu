import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:loadmore/loadmore.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/model/new_programs_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_dashboard/billboard_expaned.dart';
import 'package:shirasu/screen_dashboard/grid_card_item.dart';
import 'package:shirasu/screen_dashboard/heading.dart';
import 'package:shirasu/screen_dashboard/load_more_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';

final _dashBoardProvider =
    ChangeNotifierProvider<ViewModelDashBoard>((ref) => ViewModelDashBoard());

class ScreenDashboard extends StatefulWidget {
  @override
  _ScreenDashboardState createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  static const _COLUMN_COUNT = 2;

  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController(keepScrollOffset: true);
    WidgetsBinding.instance.addPostFrameCallback(
        (_) => context.read(_dashBoardProvider).requestPrograms());
  }

  @override
  void dispose() {
    super.dispose();
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
              final isFinish =
                  model.newProgramsDataList?.last?.newPrograms?.nextToken ==
                      null;

              final listView = _contentListView(
                itemCount: itemCount,
                nowBroadcastingsLast: nowBroadcastingsLast,
                comingBroadcastingsLast: comingBroadcastingsLast,
                featurePrgData: featurePrgData,
                newPrgData: newPrgData,
                constraints: constraints,
              );

              return isFinish
                  ? listView
                  : LoadMore(
                      delegate: const LoadMoreWidget(),
                      onLoadMore: () async => _onLoadMore(context),
                      child: listView,
                    );
            },
          );
        },
      );


  Future<bool> _onLoadMore(BuildContext context) async {
    final result = await context.read(_dashBoardProvider).loadMoreNewPrg();
    switch(result) {
      case ApiClientResult.NO_MORE:
        const snackBar = SnackBar(content: Text(Strings.SNACK_NO_MORE_ITEM));
        Scaffold.of(context).showSnackBar(snackBar);
        break;
      case ApiClientResult.FAILURE:
        const snackBar = SnackBar(content: Text(Strings.SNACK_ERR));
        Scaffold.of(context).showSnackBar(snackBar);
        break;
    }

    return result == ApiClientResult.SUCCESS;
  }

  ListView _contentListView({
    @required int itemCount,
    @required int nowBroadcastingsLast,
    @required int comingBroadcastingsLast,
    @required FeatureProgramData featurePrgData,
    @required List<NewProgramItem> newPrgData,
    @required BoxConstraints constraints,
  }) =>
      ListView.builder(
        controller: _controller,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: itemCount,
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
            } else {
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
            }
          });
}
