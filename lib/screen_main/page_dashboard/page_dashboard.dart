import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/dashboard_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard_expaned.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard_haeder.dart';
import 'package:shirasu/screen_main/page_dashboard/channel_list_item.dart';
import 'package:shirasu/screen_main/page_dashboard/heading.dart';
import 'package:shirasu/screen_main/page_dashboard/horizontal_carousels.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';

final _viewModelSProvider =
    StateNotifierProvider.autoDispose<ViewModelDashBoard>((ref) => ViewModelDashBoard(ref));

class PageDashboardInMainScreen extends HookWidget {

  const PageDashboardInMainScreen({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) => useProvider(_viewModelSProvider.state)
      .when(
        preInitialized: () => const CenterCircleProgress(),
        error: () => const PageError(), //todo show error widget
        loadingMore: (model) => _ListViewContent(
          model: model,
          showLoadingIndicator: true,
        ),
        success: (model) => _ListViewContent(
          model: model,
          showLoadingIndicator: model.newProgramsDataList?.isNotEmpty == true &&
              model.newProgramsDataList?.last?.newPrograms?.nextToken == null,
        ),
      );
}

class _ListViewContent extends HookWidget {
  const _ListViewContent({
    @required this.model,
    @required this.showLoadingIndicator,
  });

  static const _COLUMN_COUNT = 2;
  final DashboardModel model;
  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext context) {
    final featurePrgData = model.featureProgramData;
    final newPrgData = model.allNewPrograms;

    int itemCount = 1; // fixme

    if (featurePrgData?.nowBroadcastings?.items?.isNotEmpty == true)
      itemCount = featurePrgData.nowBroadcastings.items.length + 1;
    final nowBroadcastingsLast = itemCount;

    if (featurePrgData?.comingBroadcastings?.items?.isNotEmpty == true)
      itemCount += featurePrgData.comingBroadcastings.items.length + 1;
    final comingBroadcastingsLast = itemCount;

    if (featurePrgData?.viewerUser?.subscribedPrograms?.isNotEmpty == true)
      itemCount += 2;

    final subscribingLast = itemCount;

    if (featurePrgData?.channels?.items?.isNotEmpty == true) itemCount += 2;

    final channelsLast = itemCount;

    if (newPrgData?.isNotEmpty == true) itemCount += newPrgData.length;

    final controller = useScrollController();

    return LayoutBuilder(
      builder: (context, constraints) => NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            //todo fix; remove Dimens.CIRCULAR_HEIGHT
            if (showLoadingIndicator &&
                notification is UserScrollNotification &&
                notification.direction == ScrollDirection.forward &&
                controller.position.maxScrollExtent - Dimens.CIRCULAR_HEIGHT <
                    controller.offset) {
              context.read(_viewModelSProvider).loadMoreNewPrg();
              return true;
            }

            return false;
          },
          // todo bug fix
          child: ListView.builder(
              controller: controller,
              padding: const EdgeInsets.only(bottom: 16),
              itemCount: showLoadingIndicator ? itemCount + 1 : itemCount,
              itemBuilder: (context, index) {
                if (index < nowBroadcastingsLast &&
                    nowBroadcastingsLast != 0) {
                    final item =
                        featurePrgData.comingBroadcastings.items[index];// fixme
                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 48,
                      ),
                      child: BillboardHeader(
                        item: item,
                        onTap: () async => context
                            .read(appRouterProvider)
                            .delegate
                            .pushPage(GlobalRoutePath.program(item.id)),
                      ),
                    );
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
                        isLive: false,
                        item: item,
                        onTap: () async => context
                            .read(appRouterProvider)
                            .delegate
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
                            list:
                                featurePrgData.viewerUser.subscribedPrograms,
                            columnCount: _COLUMN_COUNT,
                            maxWidth: constraints.maxWidth,
                            onTap: (item) async => context
                                .read(appRouterProvider)
                                .delegate
                                .pushPage(GlobalRoutePath.program(item.id)),
                          ),
                        );
                } else if (index < channelsLast &&
                    subscribingLast != channelsLast) {
                  final i = index - subscribingLast;

                  return i == 0
                      ? const Heading(text: Strings.HEADING_CHANNEL)
                      : Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 32),
                          child: ChannelListItem(
                            channels: featurePrgData.channels,
                          ),
                        );
                } else if (index < itemCount || !showLoadingIndicator) {
                  final i = index - channelsLast;

                  if (i == 0)
                    return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Heading(text: Strings.HEADING_NEW_PRG),
                    );

                  final item = newPrgData[i - 1] as BaseProgram;
                  return MovieListItem(
                    program: item,
                    onTap: () async => context
                        .read(appRouterProvider)
                        .delegate
                        .pushPage(GlobalRoutePath.program(item.id)),
                  );
                } else
                  return const CenterCircleProgress();
              }),
        ),
    );
  }
}
