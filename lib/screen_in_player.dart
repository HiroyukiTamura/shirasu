import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/in_player_app_router_delegate.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScreenInPlayer extends StatefulHookWidget {
  const ScreenInPlayer({
    @required this.appState,
    Key key,
  }) : super(key: key);

  final GlobalAppState appState;

  @override
  _ScreenInPlayerState createState() => _ScreenInPlayerState();
}

class _ScreenInPlayerState extends State<ScreenInPlayer> {
  InPlayerAppRouterDelegate _routerDelegate;
  ChildBackButtonDispatcher _backButtonDispatcher;

  @override
  void initState() {
    super.initState();
    _routerDelegate = InPlayerAppRouterDelegate(widget.appState);
    context.read(scaffoldProvider).key = GlobalKey<ScaffoldState>();
  }

  @override
  void didUpdateWidget(covariant ScreenInPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    _routerDelegate.appState = widget.appState;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Defer back button dispatching to the child router
    _backButtonDispatcher = Router.of(context)
        .backButtonDispatcher
        .createChildBackButtonDispatcher();
  }

  @override
  Widget build(BuildContext context) {
    _backButtonDispatcher.takePriority();

    return SafeArea(
      child: Scaffold(
        key: useProvider(scaffoldProvider).key,
        body: Scaffold(
          primary: false,
          body: Stack(children: [
            Router(
              routerDelegate: _routerDelegate,
              backButtonDispatcher: _backButtonDispatcher,
            ),
            const ScreenDetail(),
          ]),
        ),
      ),
    );
  }
}
