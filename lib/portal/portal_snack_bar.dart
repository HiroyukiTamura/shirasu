import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/portal/slide_in_from_btm.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/util/single_timer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'portal_snack_bar.g.dart';

part 'portal_snack_bar.freezed.dart';

/// ref: [_snackBarTransitionDuration] on material/portal_snack_bar.dart
const _kDuration = Duration(milliseconds: 250);

final kPrvGlobalPortal =
    StateNotifierProvider<GlobalPortalAdapter>((ref) => GlobalPortalAdapter());

@freezed
abstract class GlobalPortalCommand with _$GlobalPortalCommand {
  const factory GlobalPortalCommand.snackBar(SnackMsg msg) =
      _GlobalPortalCommandSnack;

  const factory GlobalPortalCommand.none() = _GlobalPortalCommandNone;
}

class GlobalPortalAdapter extends StateNotifier<GlobalPortalCommand> {

  GlobalPortalAdapter() : super(const GlobalPortalCommand.none()) {
    _timer = SingleTimer(
      _onFinish,
      SNACK_TIMER,
    );
  }

  static const SNACK_TIMER = Duration(seconds: 4);
  GlobalPortalCommand _lastState;
  SingleTimer _timer;

  String get lastText => _lastState?.when(
        snackBar: (msg) => Util.convert2SnackText(msg),
        none: () => null,
      );

  @override
  set state(GlobalPortalCommand value) {
    _lastState = super.state;
    super.state = value;
  }

  void _onFinish() {
    if (mounted) state = const GlobalPortalCommand.none();
  }

  void notifyCommand(GlobalPortalCommand command) {
    _timer.renew();
    state = command;
  }
}

@hwidget
Widget portalSnackBar(
  BuildContext context, {
  @required Widget child,
}) {
  final visible =
      useProvider(kPrvGlobalPortal.state) != const GlobalPortalCommand.none();
  return SlideInFromBtm(
    duration: _kDuration,
    visible: visible,
    btmSheetContent: AnimatedOpacity(
      duration: _kDuration,
      opacity: visible ? 1 : 0,
      child: Container(
        margin: const EdgeInsets.all(8), // ref: [SnackBar.margin]
        child: Material(
          elevation: 6, // ref: [SnackBar.elevation]
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            // ref: [SnackBar.padding]
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
            // ref: [SnackBar.shape]
            child: Row(
              children: [
                Icon(Icons.error, color: Theme.of(context).accentColor,),
                const SizedBox(width: 24,),
                Text(
                  useProvider(kPrvGlobalPortal).lastText ?? '',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    child: child,
  );
}
