import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/player_controller_view.dart';
import 'package:shirasu/screen_detail/screen_detail/video_player.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/player_animation_manager.dart';

part 'screen_main.g.dart';

final screenMainScaffoldProvider =
    Provider<ScaffoldKeyHolder>((_) => ScaffoldKeyHolder());

class ScaffoldKeyHolder {
  ScaffoldKeyHolder();

  GlobalKey<ScaffoldState> key;
}

class ScreenMain extends StatefulHookWidget {
  const ScreenMain({
    Key key,
    @required this.appState,
  }) : super(key: key);

  final GlobalAppState appState;

  @override
  _ScreenMainState createState() =>
      _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
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
    // context.read(screenMainScaffoldProvider).key = null;
    _routerDelegate.dispose(); // todo is it necessary?
    super.dispose();
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
      // nest Scaffold because of it displays BottomSheet above BottomNavigationBar
      child: Scaffold(
        key: useProvider(screenMainScaffoldProvider).key,
        body: Router(
          routerDelegate: _routerDelegate,
          backButtonDispatcher: _backButtonDispatcher,
        ),
        floatingActionButton: _Fab(delegate: _routerDelegate),
        bottomNavigationBar:
            _MainBottomNavigationBar(routerDelegate: _routerDelegate),
      ),
    );
  }
}

@hwidget
Widget _mainBottomNavigationBar({
  @required ScreenMainRouterDelegate routerDelegate,
}) {
  final pam = PlayerAnimationManager.instance;
  return AnimatedBuilder(
    builder: (context, child) => Align(
      alignment: Alignment.topCenter,
      heightFactor: 1 - pam.animation.value,
      child: child,
    ),
    animation: pam.animation,
    child: BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(.6),
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 14,
      onTap: (index) async => routerDelegate.swapPage(index),
      currentIndex: routerDelegate.pageIndex,
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
  );
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
    if (!(delegate.page is PathDataMainPageSetting))
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
