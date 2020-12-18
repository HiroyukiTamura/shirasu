import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/watch_history_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final _viewmodelSNProvider =
    StateNotifierProvider.autoDispose<ViewModelWatchHistory>(
        (ref) => ViewModelWatchHistory(ref));

class WatchHistoryWidget extends HookWidget {

  const WatchHistoryWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      useProvider(_viewmodelSNProvider.state).when(
          loading: () => const CenterCircleProgress(),
          preInitialized: () => const CenterCircleProgress(),
          loadingMore: (watchHistories) => _ContentListView(
                watchHistories: watchHistories,
                showLoadingIndicator: true,
              ),
          success: (watchHistories) => _ContentListView(
                watchHistories: watchHistories,
                showLoadingIndicator: watchHistories.last.viewerUser.watchHistories.nextToken != null,
              ),
          resultEmpty: () => const EmptyListWidget(
                text: Strings.WATCH_HISTORY_EMPTY_MSG,
                icon: Icons.history,
              ),
          error: () => const PageError());
}

class _ContentListView extends HookWidget {
  const _ContentListView({
    Key key,
    this.watchHistories,
    this.showLoadingIndicator,
  }) : super(key: key);

  final List<WatchHistoriesData> watchHistories;
  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext context) {
    final sc = useScrollController();

    final items = watchHistories
        .expand((it) => it.viewerUser.watchHistories.items)
        .toList();

    int itemCount = items.length;
    if (showLoadingIndicator) itemCount++;

    final listView = ListView.builder(
      controller: sc,
      padding: const EdgeInsets.symmetric(vertical: MovieListItem.PADDING),
      itemBuilder: (context, i) {
        if (showLoadingIndicator && i == itemCount - 1)
          return const CenterCircleProgress();
        else {
          final program = items[i].program as BaseProgram; //todo why cast?
          return MovieListItem(
            program: program,
            onTap: () async => context
                .read(appRouterProvider)
                .delegate
                .pushPage(GlobalRoutePath.program(program.id)),
          );
        }
      },
      itemCount: itemCount,
    );

    //todo must debug
    return showLoadingIndicator
        ? listView
        : NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is UserScrollNotification &&
                  notification.direction == ScrollDirection.forward &&
                  sc.position.maxScrollExtent - Dimens.CIRCULAR_HEIGHT <
                      sc.offset) {
                context.read(_viewmodelSNProvider).loadMoreWatchHistory();
                return true;
              }

              return false;
            },
            child: listView,
          );
  }
}
