import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

class WatchHistoryWidget extends HookWidget {
  const WatchHistoryWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => useProvider(
      subscribingViewModelProvider
          .select((value) => value.watchHistoryState)).when(
      preInitialized: () => const CenterCircleProgress(),
      success: (watchHistories) {
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: MovieListItem.PADDING),
          itemBuilder: (context, i) {
            final item = watchHistories.viewerUser.watchHistories.items[i];
            return MovieListItem(program: item.program as BaseProgram);
          },
          itemCount: watchHistories.viewerUser.watchHistories.items.length,
        );
      },
      resultEmpty: () {
        return Container(); //todo display error widget
      },
      error: () {
        return Container(
          child: const Text('error!'),
        ); //todo display error widget
      });
}
