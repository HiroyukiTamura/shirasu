import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/screen_main_router_delegate.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

import '../main.dart';
import 'fab.dart';

part 'screen_main.g.dart';

final _kPrvMainSnackMsg = Provider.autoDispose<SnackData>((ref) {
  final state = ref.watch(kPrvSnackBar.state);
  return SnackData(
    state.snackMsg,
    Dimens.SNACK_BAR_DEFAULT_MARGIN,
  );
});

final _kPrvRouterDelegate =
    ChangeNotifierProvider.autoDispose<ScreenMainRouterDelegate>(
        (ref) => ScreenMainRouterDelegate(ref.read));

class ScreenMain extends StatefulHookWidget {
  const ScreenMain({
    Key key,
  }) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  ChildBackButtonDispatcher _backButtonDispatcher;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
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
            routerDelegate: useProvider(_kPrvRouterDelegate),
            backButtonDispatcher: _backButtonDispatcher,
          ),
        ),
        floatingActionButton: const Fab(),
        bottomNavigationBar: const _MainBottomNavigationBar(),
      ),
    );
  }
}

@hwidget
Widget _mainBottomNavigationBar(BuildContext context) => BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Styles.COLOR_TEXT_SUB,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: FontSize.DEFAULT,
      onTap: (index) async => context.read(_kPrvRouterDelegate).swapPage(index),
      currentIndex:
          useProvider(_kPrvRouterDelegate.select((it) => it.pageIndex)),
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