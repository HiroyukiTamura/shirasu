import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/app_route_information_parser.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';

final screenMainScaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScaffoldKeyHolder {
  ScaffoldKeyHolder();

  GlobalKey<ScaffoldState> key;
}

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
    context.read(screenMainScaffoldProvider).key = GlobalKey<ScaffoldState>();
  }

  @override
  void dispose() {
    super.dispose();
    _routerDelegate.dispose();
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
        key: useProvider(screenMainScaffoldProvider).key,
        body: Router(
          routerDelegate: _routerDelegate,
          backButtonDispatcher: _backButtonDispatcher,
        ),
        floatingActionButton: _Fab(
          delegate: _routerDelegate,
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.6),
          showUnselectedLabels: true,
          unselectedFontSize: 14,
          onTap: (index) async => _routerDelegate.swapPage(index),
          currentIndex: _routerDelegate.pageIndex,
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
    );
  }
}

class _Fab extends HookWidget {
  const _Fab({
    @required this.delegate,
    Key key,
  }) : super(key: key);

  static const double _STROKE_WIDTH = 2;

  /// @see `_kSizeConstraints` in `flutter/material/floating_action_button.dart`
  static const double _FAB_SIZE = 56;
  static const _FAB_WRAPPER_SIZE = Size.square(_STROKE_WIDTH + _FAB_SIZE);

  final ScreenMainRouterDelegate delegate;

  @override
  Widget build(BuildContext context) {
    if (delegate.page is PathDataMainPageSetting)
      return const SizedBox.shrink();

    final isEdited = useProvider(settingViewModelSProvider.state
        .select((it) => it.editedUserInfo.isEdited));
    final isUploadingProfile = useProvider(
        settingViewModelSProvider.state.select((it) => it.uploadingProfile));

    return Visibility(
      visible: isEdited,
      child: SizedBox.fromSize(
        size: _FAB_WRAPPER_SIZE,
        child: Stack(
          children: [
            Visibility(
              visible: isUploadingProfile,
              child: const SizedBox.expand(
                child: CircularProgressIndicator(
                  strokeWidth: _STROKE_WIDTH,
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            ),
            Center(
              child: FloatingActionButton(
                onPressed: isUploadingProfile
                    ? null
                    : () async =>
                        context.read(settingViewModelSProvider).postProfile(),
                child: const Icon(Icons.save),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
