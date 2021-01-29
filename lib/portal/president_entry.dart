import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/portal/portal_snack_bar.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../main.dart';
import 'btm_sheet/program/btm_sheet_program.dart';

part 'president_entry.g.dart';

final _kPrvNavigationChange = Provider.autoDispose<GlobalRoutePathBase>(
    (ref) => ref.watch(pcnAppRouterDelegate).appState.last);

@hwidget
Widget presidentEntry(Key key, {
  @required GlobalKey<MyAppState> rootKey,
  @required Widget child,
}) =>
    PortalSnackBar(
      rootKey: rootKey,
      child: useProvider(_kPrvNavigationChange).wrappedWhen(
        intro: () => child,
        error: () => child,
        channel: (channelId) => child,
        program: (programId) => ModalForProgramPage(id: programId, child: child),
        dashboard: () => child,
        subscribing: (page) => child,
        setting: () => child,
        ossLicense: () => child,
        imgLicense: () => child,
        auth: () => child,
      ),
    );
