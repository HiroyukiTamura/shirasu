import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';


final screenMainScaffoldProvider = Provider<GlobalKey<ScaffoldState>>((_) => GlobalKey<ScaffoldState>());

class PageDashboardInMainScreen extends StatefulHookWidget {
  const PageDashboardInMainScreen({Key key, @required this.appState})
      : super(key: key);

  final GlobalAppState appState;

  @override
  _PageDashboardInMainScreenState createState() =>
      _PageDashboardInMainScreenState();
}

class _PageDashboardInMainScreenState extends State<PageDashboardInMainScreen> {
  ScreenMainRouterDelegate _routerDelegate;
  ChildBackButtonDispatcher _backButtonDispatcher;

  @override
  void initState() {
    super.initState();
    _routerDelegate = ScreenMainRouterDelegate(widget.appState);
  }

  @override
  void didUpdateWidget(covariant PageDashboardInMainScreen oldWidget) {
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
      // nest Scaffold because of it displays BottomSheet above BottomNavigationBar
      child: Scaffold(
        key: useProvider(screenMainScaffoldProvider),
        body: Scaffold(
          body: Router(
            routerDelegate: _routerDelegate,
            backButtonDispatcher: _backButtonDispatcher,
          ),
          floatingActionButton: _Fab(delegate: _routerDelegate,),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withOpacity(.6),
            showUnselectedLabels: true,
            unselectedFontSize: 14,
            onTap: (index) {
              final data = PathDataMainPageBase.fromIndex(index);
              _routerDelegate.appState.push(data);
            },
            currentIndex: _routerDelegate.currentConfiguration.getIndex(),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: Strings.NAV_ITEM_HOME,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.playlist_play_rounded),
                label: Strings.NAV_ITEM_LIST,
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.search),
              //   label: Strings.NAV_ITEM_SEARCH,
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: Strings.NAV_ITEM_CONFIG,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//todo refactor
class _Fab extends HookWidget {
  const _Fab({
    @required this.delegate,
    Key key,
  }) : super(key: key);

  final ScreenMainRouterDelegate delegate;

  @override
  Widget build(BuildContext context) {
    final isEdited = useProvider(settingViewModelSProvider.state.select((it) => it.editedUserInfo.isEdited));

    return Visibility(
      visible: isEdited,
      child: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.save),
      ),
    );
  }
}
