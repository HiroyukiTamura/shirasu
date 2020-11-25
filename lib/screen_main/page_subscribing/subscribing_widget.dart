import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';

class SubscribingWidget extends HookWidget {
  const SubscribingWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      useProvider(
          subscribingViewModelProvider
              .select((value) => value.programData)).when(
          preInitialized: () => const CenterCircleProgress(),
          success: (programData) => ListView.separated(
                padding:
                    const EdgeInsets.symmetric(vertical: 16),
                itemBuilder: (context, i) {
                  final item = programData.viewerUser.subscribedPrograms[i];
                  return MovieListBigItem(program: item as BaseProgram);
                },
                separatorBuilder: (context, i) => const SizedBox(height: 32),
                itemCount: programData.viewerUser.subscribedPrograms.length,
              ),
          resultEmpty: () {
            return Container(); //todo display error widget
          },
          error: () => const PageError());
}
