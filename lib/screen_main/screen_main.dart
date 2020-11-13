import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';

class ScreenMain extends StatefulWidget {

  const ScreenMain({Key key, @required this.appState}) : super(key: key);

  final GlobalAppState appState;

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  ScreenMainRouterDelegate _routerDelegate;
  ChildBackButtonDispatcher _backButtonDispatcher;

  @override
  void initState() {
    super.initState();
    _routerDelegate = ScreenMainRouterDelegate(widget.appState);
  }

  @override
  void didUpdateWidget(covariant ScreenMain oldWidget) {
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
          body: Router(
            routerDelegate: _routerDelegate,
            backButtonDispatcher: _backButtonDispatcher,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.6),
            showUnselectedLabels: true,
            unselectedFontSize: 14,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: Strings.NAV_ITEM_HOME,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.playlist_play_rounded),
                label: Strings.NAV_ITEM_SUBSCRIBE,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: Strings.NAV_ITEM_SEARCH,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: Strings.NAV_ITEM_CONFIG,
              ),
            ],
          ),
        ),
    );
  }
}
