import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/in_player_app_router_delegate.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScreenInPlayer extends StatefulHookWidget {
  const ScreenInPlayer({
    @required this.appState,
    Key key,
    this.id,
  }) : super(key: key);

  final String id;
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
  void dispose() {
    super.dispose();
    _routerDelegate.dispose();
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
          body: Stack(
            children: [
              Router(
                routerDelegate: _routerDelegate,
                backButtonDispatcher: _backButtonDispatcher,
              ),
              if (widget.id == null)
                const SizedBox.shrink()
              else
                ScreenDetail(id: widget.id),
            ],
          ),
        ),
      ),
    );
  }
}
