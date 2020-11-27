import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final _subscribingViewModelProvider =
ChangeNotifierProvider.autoDispose<ViewModelSubscribing>(
        (_) => ViewModelSubscribing());

class SubscribingWidget extends StatefulHookWidget {
  const SubscribingWidget({Key key}) : super(key: key);

  @override
  _SubscribingWidgetState createState() => _SubscribingWidgetState();
}

class _SubscribingWidgetState extends State<SubscribingWidget> {
  @override
  Widget build(BuildContext context) =>
      useProvider(
          _subscribingViewModelProvider.select((value) => value.programData))
          .when(
              preInitialized: () => const CenterCircleProgress(),
              success: (programData) => ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    itemBuilder: (context, i) {
                      final item = programData.viewerUser.subscribedPrograms[i];
                      return MovieListBigItem(
                        program: item as BaseProgram,
                        onTap: () async =>
                            context.read(appRouterProvider).delegate.pushPage(
                                  GlobalRoutePath.program(item.id),
                                ),
                      );
                    },
                    itemCount: programData.viewerUser.subscribedPrograms.length,
                  ),
              resultEmpty: () {
                return Container(); //todo display error widget
              },
              error: () => const PageError());
}
