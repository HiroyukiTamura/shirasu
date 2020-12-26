import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/viewmodel/model/dashboard_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_expanded.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/billboard_header.dart';
import 'package:shirasu/screen_main/page_dashboard/channel_list_item.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/heading.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';
import 'package:shirasu/extension.dart';

part 'page_dashboard.g.dart';

final pDashboardViewModel =
    ChangeNotifierProvider.autoDispose<ViewModelDashBoard>(
        (ref) => ViewModelDashBoard(ref));

@hwidget
Widget pageDashboardInMainScreen() => useProvider(
        pDashboardViewModel.select((viewModel) => viewModel.state.state)).when(
      preInitialized: () => const CenterCircleProgress(),
      error: () => const PageError(),
      loadingMore: () => _ListViewContent(
        model: useProvider(pDashboardViewModel).state.apiData,
        // we don't want to rebuild
        showLoadingIndicator: true,
      ),
      success: () {
        final model = useProvider(pDashboardViewModel)
            .state
            .apiData; // we don't want to rebuild,
        return _ListViewContent(
          model: model,
          showLoadingIndicator: model.newProgramsDataList?.isNotEmpty == true &&
              model.newProgramsDataList?.last?.newPrograms?.nextToken != null,
        );
      },
    );

class _ListViewContent extends HookWidget {
  const _ListViewContent({
    @required this.model,
    @required this.showLoadingIndicator,
  });

  static const _NOW_BROADCASTINGS_LAST = 1;

  final ApiData model;
  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext context) {
    final featurePrgData = model.featureProgramData;
    final newPrgData = model.allNewPrograms;

    final anyNowBroadcastings =
        featurePrgData?.nowBroadcastings?.items?.isNotEmpty != true; //fixme

    int itemCount = _NOW_BROADCASTINGS_LAST;

    if (featurePrgData?.comingBroadcastings?.items?.isNotEmpty == true) {
      final row = context.isBigScreen
          ? 1
          : featurePrgData.comingBroadcastings.items.length;
      itemCount += row + 1;
    }
    final comingBroadcastingsLast = itemCount;

    if (featurePrgData?.viewerUser?.subscribedPrograms?.isNotEmpty == true)
      itemCount += 2;

    final subscribingLast = itemCount;

    if (featurePrgData?.channels?.items?.isNotEmpty == true) itemCount += 2;

    final channelsLast = itemCount;

    if (newPrgData?.isNotEmpty == true) itemCount += newPrgData.length;

    final controller = useScrollController();
    controller.addListener(() async => _onScroll(context, controller));

    return LayoutBuilder(
      builder: (context, constraints) =>
          NotificationListener<ScrollNotification>(
        onNotification: (notification) =>
            _onScrollNotification(context, controller, notification),
        child: ListView.builder(
            controller: controller,
            padding: const EdgeInsets.only(bottom: 16),
            itemCount: showLoadingIndicator ? itemCount + 1 : itemCount,
            itemBuilder: (context, index) {
              if (index == 0) {
                return anyNowBroadcastings
                    ? BillboardHeader.build(
                        onTapItem: (BuildContext context, String prgId) async =>
                            context.pushProgramPage(prgId),
                        items: featurePrgData.comingBroadcastings.items,
                        constraints: constraints,
                        wideMode: context.isBigScreen,
                      )
                    : const SizedBox(height: 16);
              } else if (index < comingBroadcastingsLast &&
                  _NOW_BROADCASTINGS_LAST != comingBroadcastingsLast) {
                final i = index - _NOW_BROADCASTINGS_LAST;

                if (i == 0)
                  return const Heading(text: Strings.HEADING_UPCOMING);

                if (context.isBigScreen)
                  return HorizontalCarousels(
                    list: featurePrgData.comingBroadcastings.items,
                    maxWidth: constraints.maxWidth,
                    constraints: constraints,
                    detailCaption: true,
                    onTapItem: (item, id) async => context.pushProgramPage(id),
                  );
                else {
                  final item = featurePrgData.comingBroadcastings.items[i - 1];
                  return BillboardExpanded(
                    item: item,
                    onTap: () async => context.pushProgramPage(item.id),
                    btmPadding:
                        i != featurePrgData.comingBroadcastings.items.length,
                  );
                }
              } else if (index < subscribingLast &&
                  comingBroadcastingsLast != subscribingLast) {
                final i = index - comingBroadcastingsLast;

                return i == 0
                    ? const Heading(text: Strings.HEADING_SUBSCRIBING)
                    : HorizontalCarousels(
                        list: featurePrgData.viewerUser.subscribedPrograms,
                        maxWidth: constraints.maxWidth,
                        constraints: constraints,
                        detailCaption: false,
                        onTapItem: (item, id) async =>
                            context.pushProgramPage(id),
                      );
              } else if (index < channelsLast &&
                  subscribingLast != channelsLast) {
                final i = index - subscribingLast;

                return i == 0
                    ? const Heading(text: Strings.HEADING_CHANNEL)
                    : ChannelListItem(
                        channels: featurePrgData.channels,
                        onTap: (BuildContext context, String channelId) async =>
                            context.pushChannelPage(channelId),
                      );
              } else if (index < itemCount || !showLoadingIndicator) {
                final i = index - channelsLast;

                if (i == 0)
                  return const Heading(
                    text: Strings.HEADING_NEW_PRG,
                    verticalPadding: 16,
                  );

                final item = newPrgData[i - 1];
                return MovieListItem(
                  program: item,
                  onTap: () async => context.pushProgramPage(item.id),
                );
              } else
                return const CenterCircleProgress();
            }),
      ),
    );
  }

  Future<void> _onScroll(
          BuildContext context, ScrollController controller) async =>
      context.read(pDashboardViewModel).updateScrollOffset(controller.offset);

  bool _onScrollNotification(BuildContext context, ScrollController controller,
      ScrollNotification notification) {
    if (showLoadingIndicator &&
        notification is UserScrollNotification &&
        notification.direction == ScrollDirection.idle &&
        controller.position.maxScrollExtent - Dimens.CIRCULAR_HEIGHT <
            controller.offset) {
      context.read(pDashboardViewModel).loadMoreNewPrg();
      return true;
    }

    return false;
  }
}
