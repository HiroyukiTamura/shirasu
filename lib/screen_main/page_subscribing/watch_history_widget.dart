import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
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
import 'package:shirasu/ui_common/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final _viewmodelProvider =
    ChangeNotifierProvider.autoDispose<ViewModelWatchHistory>(
        (ref) {
          final snackBarMsgNotifier = ref.read(snackBarMsgProvider);
          return ViewModelWatchHistory(snackBarMsgNotifier);
        });

class WatchHistoryWidget extends StatefulHookWidget {
  const WatchHistoryWidget({Key key}) : super(key: key);

  @override
  _WatchHistoryWidgetState createState() => _WatchHistoryWidgetState();
}

class _WatchHistoryWidgetState extends State<WatchHistoryWidget>
    with AfterLayoutMixin<WatchHistoryWidget> {
  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewmodelProvider).initialize();

  @override
  Widget build(BuildContext context) =>
      useProvider(_viewmodelProvider).state.when(
          loading: () => const CenterCircleProgress(),
          preInitialized: () => const CenterCircleProgress(),
          loadingMore: (watchHistories) => _ContentListView(
                watchHistories: watchHistories,
                showLoadingIndicator: false,
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

    final listView = ProviderListener<SnackBarMessageNotifier>(
      onChange: (context, viewModel) {
        if (viewModel.state == null)
          return;

        final text = Util.convert2SnackText(viewModel.state);
        final snackBar = SnackBar(content: Text(text));
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
        viewModel.clear();
      },
      provider: snackBarMsgProvider,
      child: ListView.builder(
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
      ),
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
                context.read(_viewmodelProvider).loadMoreWatchHistory();
                return true;
              }

              return false;
            },
            child: listView,
          );
  }
}
