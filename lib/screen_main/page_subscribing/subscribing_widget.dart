import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final _viewmodelProvider =
    ChangeNotifierProvider.autoDispose<ViewModelSubscribing>(
        (_) => ViewModelSubscribing());

class SubscribingWidget extends StatefulHookWidget {
  const SubscribingWidget({Key key}) : super(key: key);

  @override
  _SubscribingWidgetState createState() => _SubscribingWidgetState();
}

class _SubscribingWidgetState extends State<SubscribingWidget>
    with AfterLayoutMixin<SubscribingWidget> {
  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewmodelProvider).setUpData();

  @override
  Widget build(BuildContext context) =>
      useProvider(_viewmodelProvider.select((value) => value.programData)).when(
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
          resultEmpty: () => const EmptyListWidget(
                text: Strings.SUBSCRIBING_EMPTY_MSG,
                icon: Icons.history,
              ),
          error: () => const PageError());
}
