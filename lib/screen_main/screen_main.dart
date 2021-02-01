import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'screen_main.g.dart';

final kPrvMainSnackBarMsgNotifier =
StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvMainSnackMsg = Provider.autoDispose<SnackData>((ref) {
  final state = ref.watch(kPrvMainSnackBarMsgNotifier.state);
  return SnackData(
    state.snackMsg,
    Dimens.SNACK_BAR_DEFAULT_MARGIN,
  );
});

final _pRouterDelegate =
    Provider<ScreenMainRouterDelegate>((ref) => ScreenMainRouterDelegate(ref));

final _kPrvRouterDelegate = ChangeNotifierProvider<ScreenMainRouterDelegate>((ref) => ScreenMainRouterDelegate(ref));

class ScaffoldKeyHolder {
  ScaffoldKeyHolder();

  GlobalKey<ScaffoldState> key;
}

class ScreenMain extends StatefulHookWidget {
  const ScreenMain({
    Key key,
  }) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  ChildBackButtonDispatcher _backButtonDispatcher;

  // @override
  // void dispose() {
  //   // context.read(screenMainScaffoldProvider).key = null;
  //   // _routerDelegate.dispose(); // todo is it necessary?
  //   super.dispose();
  // }

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
        body: SnackEventListener(
          provider: _kPrvMainSnackMsg,
          child: Router(
            routerDelegate: useProvider(_pRouterDelegate),
            backButtonDispatcher: _backButtonDispatcher,
          ),
        ),
        floatingActionButton: const _Fab(),
        bottomNavigationBar: const _MainBottomNavigationBar(),
      ),
    );
  }
}

@hwidget
Widget _mainBottomNavigationBar(BuildContext context) => BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Styles.colorTextSub,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 14,
      onTap: (index) async => context.read(_pRouterDelegate).swapPage(index),
      currentIndex: useProvider(_kPrvRouterDelegate.select((it) => it.pageIndex)),
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
    );

class _Fab extends HookWidget {
  const _Fab({
    Key key,
  }) : super(key: key);

  static const double _STROKE_WIDTH = 2;

  /// @see `_kSizeConstraints` in `flutter/material/floating_action_button.dart`
  static const double _FAB_SIZE = 56;
  static const _FAB_WRAPPER_SIZE = Size.square(_STROKE_WIDTH + _FAB_SIZE);

  @override
  Widget build(BuildContext context) {
    final page = useProvider(_pRouterDelegate.select((it) => it.page));

    if (!(page is PathDataMainPageSetting)) return const SizedBox.shrink();

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
