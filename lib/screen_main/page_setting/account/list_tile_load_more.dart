import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/screen_main/page_subscribing/page_subscribing.dart';

part 'list_tile_load_more.g.dart';

final _showLoadMoreProvider = Provider.autoDispose<bool>((ref) =>
    ref.watch(settingViewModelSProvider.state).settingModelState.maybeWhen(
          success: (data) => data.viewerUser.watchHistories.items.isNotEmpty,
          orElse: () => false,
        ));

@hwidget
Widget listTileLoadMore(BuildContext context) =>
    useProvider(_showLoadMoreProvider)
        ? Center(
            child: TextButton(
              onPressed: () async {
                const path = PathDataMainPageBase.subscribing(
                    PageListTabPage.WATCH_HISTORY);
                return context
                    .read(pAppRouterDelegate)
                    .swapPageInMainScreen(path);
              },
              child: const Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  Strings.WATCH_MORE,
                  style: TextStyle(
                    height: 1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        : const SizedBox.shrink();
