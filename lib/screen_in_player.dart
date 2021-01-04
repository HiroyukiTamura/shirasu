import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/in_player_app_router_delegate.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_main/screen_main.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final scaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

final _pPanelExpanded = Provider.autoDispose<bool>(
    (ref) => ref.watch(pDetailController.state).expand);

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
  final PanelController _panelController = PanelController();

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

    return WillPopScope(
      onWillPop: () async => _onWillPop(context),
      child: SafeArea(
        child: Scaffold(
          key: useProvider(scaffoldProvider).key,
          body: Scaffold(
            body: LayoutBuilder(
              builder: (context, constraints) => ProviderListener<bool>(
                provider: _pPanelExpanded,
                onChange: _onChangePanelProvider,
                child: SlidingUpPanel(
                  isDraggable: false,
                  controller: _panelController,
                  //todo is it reusable?
                  maxHeight: constraints.maxHeight,
                  minHeight: 0,
                  body: Router(
                    routerDelegate: _routerDelegate,
                    backButtonDispatcher: _backButtonDispatcher,
                  ),
                  panel: const ScreenDetail(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _onWillPop(BuildContext context) => context.read(pDetailController).collapse();

  void _onChangePanelProvider(BuildContext context, bool isExpanded) {
    if (_panelController.isPanelOpen && !isExpanded)
      _panelController.close();
    else if (_panelController.isPanelClosed && isExpanded)
      _panelController.open();
  }
}
