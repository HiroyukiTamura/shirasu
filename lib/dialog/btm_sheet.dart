import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/dialog/portal_animated_modal_barrier.dart';

typedef OnTapPlaySpeed = void Function(double playSpeed);

typedef ProviderGetter<S> = ProviderBase<Object, S> Function();

typedef ShowModal<S> = bool Function(S value);

class BtmSheet extends StatelessWidget {
  const BtmSheet({
    Key key,
    @required this.child,
    @required this.visible,
    @required this.btmSheetContent,
  }) : super(key: key);

  final Widget btmSheetContent;
  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) => PortalEntry(
        closeDuration: PortalAnimatedModalBarrier.DURATION,
        visible: visible,
        portal: TweenAnimationBuilder<Offset>(
          duration: PortalAnimatedModalBarrier.DURATION,
          curve: Curves.easeOut,
          tween: Tween(
            begin: const Offset(0, 1),
            end: visible ? Offset.zero : const Offset(0, 1),
          ),
          builder: (context, offset, child) => FractionalTranslation(
            translation: offset,
            child: child,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 8,
              child: btmSheetContent,
            ),
          ),
        ),
        child: child,
      );
}
