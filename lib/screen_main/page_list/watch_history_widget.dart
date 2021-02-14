import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/model/graphql/watch_history_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

part 'watch_history_widget.g.dart';

@visibleForTesting
final kPrvViewModelWatchHistory = StateNotifierProvider.autoDispose<ViewModelWatchHistory>(
    (ref) => ViewModelWatchHistory(ref.read));

@hwidget
Widget watchHistoryWidget() => useProvider(kPrvViewModelWatchHistory.state).when(
    initial: () => const CenterCircleProgress(),
    success: (data) => _ContentListView(
          watchHistories: data.watchHistories,
          showLoadingIndicator:
              data.isLoadingMore && data.watchHistories.last.viewerUser.watchHistories.nextToken != null,
        ),
    resultEmpty: () => const EmptyListWidget(
          text: Strings.WATCH_HISTORY_EMPTY_MSG,
          icon: Icons.history,
        ),
    error: (errMsg) => PageError(text: errMsg.value));

class _ContentListView extends HookWidget {
  const _ContentListView({
    Key key,
    this.watchHistories,
    this.showLoadingIndicator,
  }) : super(key: key);

  final UnmodifiableListView<WatchHistoriesData> watchHistories;
  final bool showLoadingIndicator;

  @override
  Widget build(BuildContext context) {
    final sc = useScrollController();

    return _wrappedNotificationListener(
      context,
      sc: sc,
      listView: _listView(
        sc: sc,
        items: watchHistories
            .expand((it) => it.viewerUser.watchHistories.items)
            .toUnmodifiable(),
      ),
    );
  }

  Widget _wrappedNotificationListener(
    BuildContext context, {
    @required ScrollController sc,
    @required ListView listView,
  }) =>
      showLoadingIndicator
          ? listView
          : NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                if (notification is UserScrollNotification &&
                    notification.direction == ScrollDirection.forward &&
                    sc.position.maxScrollExtent - Dimens.CIRCULAR_HEIGHT <
                        sc.offset) {
                  context.read(kPrvViewModelWatchHistory).loadMoreWatchHistory();
                  return true;
                }

                return false;
              },
              child: listView,
            );

  ListView _listView({
    @required ScrollController sc,
    @required List<WatchHistoriesItem> items,
  }) {
    int itemCount = items.length;
    if (showLoadingIndicator) itemCount++;

    return ListView.builder(
      controller: sc,
      padding: const EdgeInsets.symmetric(vertical: MovieListItemBase.PADDING),
      itemBuilder: (context, i) {
        if (showLoadingIndicator && i == itemCount - 1)
          return const CenterCircleProgress();
        final program = items[i].program;
        return MovieListItem(
          program: program,
          onTap: () async => context.pushProgramPage(program.id),
        );
      },
      itemCount: itemCount,
    );
  }
}
