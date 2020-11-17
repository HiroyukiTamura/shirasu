import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';

class SubscribingWidget extends HookWidget {

  const SubscribingWidget({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) =>
      useProvider(
              subscribingViewModelProvider.select((value) => value.programData))
          .when(
              preInitialized: () => const CenterCircleProgress(),
              success: (programData) => ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: MovieListItem.PADDING),
                    itemBuilder: (context, i) {
                      final item = programData.viewerUser.subscribedPrograms[i];
                      return MovieListItem(program: item as BaseProgram);
                    },
                    itemCount: programData.viewerUser.subscribedPrograms.length,
                  ),
              resultEmpty: () {
                return Container(); //todo display error widget
              },
              error: () {
                return Container(
                  child: const Text('error!'),
                ); //todo display error widget
              });
}
