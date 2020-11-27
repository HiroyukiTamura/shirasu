import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/viewer.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_dashboard.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final _viewmodelProvider =
    ChangeNotifierProvider.autoDispose<ViewModelWatchHistory>(
        (_) => ViewModelWatchHistory());

class WatchHistoryWidget extends StatefulHookWidget {
  const WatchHistoryWidget({Key key}) : super(key: key);

  @override
  _WatchHistoryWidgetState createState() => _WatchHistoryWidgetState();
}

class _WatchHistoryWidgetState extends State<WatchHistoryWidget>
    with AfterLayoutMixin<WatchHistoryWidget> {
  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewmodelProvider).setUpData();

  @override
  Widget build(BuildContext context) =>
      useProvider(_viewmodelProvider.select((value) => value.watchHistoryState))
          .when(
              preInitialized: () => const CenterCircleProgress(),
              success: (watchHistories) {
                final sc = useScrollController();
                final items = watchHistories
                    .expand((it) => it.viewerUser.watchHistories.items)
                    .toList();

                final isLoadMoreCommanded =
                    context.read(_viewmodelProvider).isLoadMoreCommanded;

                final listView = _listView(
                  controller: sc,
                  items: items,
                  showLoadingIndicator: isLoadMoreCommanded,
                );

                return isLoadMoreCommanded
                    ? NotificationListener<ScrollNotification>(
                        onNotification: (notification) {
                          if (notification is UserScrollNotification &&
                              notification.direction ==
                                  ScrollDirection.forward &&
                              sc.position.maxScrollExtent -
                                      Dimens.CIRCULAR_HEIGHT <
                                  sc.offset) {
                            _loadMore(context); //todo debug
                            return true;
                          }

                          return false;
                        },
                        child: listView,
                      )
                    : listView;
              },
              resultEmpty: () => const EmptyListWidget(
                  text: Strings.WATCH_HISTORY_EMPTY_MSG,
                  icon: Icons.history,
                ),
              error: () => const PageError());

  static Widget _listView({
    @required ScrollController controller,
    @required List<WatchHistoriesItem> items,
    @required bool showLoadingIndicator,
  }) {
    int itemCount = items.length;
    if (showLoadingIndicator) itemCount++;

    return ListView.builder(
      controller: controller,
      padding: const EdgeInsets.symmetric(vertical: MovieListItem.PADDING),
      itemBuilder: (context, i) {
        if (showLoadingIndicator && i == items.length - 1)
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
  }

  /// todo refactor @see [_ListViewContent._loadMore]
  Future<void> _loadMore(BuildContext context) async {
    final result =
        await context.read(_viewmodelProvider).loadMoreWatchHistory();

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
