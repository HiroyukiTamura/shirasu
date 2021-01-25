import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/styles.dart';

class PortalAnimatedModalBarrier extends StatelessWidget {
  const PortalAnimatedModalBarrier({
    Key key,
    @required this.onClose,
    @required this.visible,
    @required this.child,
  }) : super(key: key);

  static const DURATION = Duration(milliseconds: 500);

  final Widget child;
  final VoidCallback onClose;
  final bool visible;

  @override
  Widget build(BuildContext context) => PortalEntry(
      visible: visible,
      closeDuration: DURATION,
      portal: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onClose,
        child: AnimatedOpacity(
          opacity: visible ? 1 : 0,
          duration: DURATION,
          child: const ColoredBox(
            color: Styles.MODAL_BG,
          ),
        ),
      ),
      child: child,
    );
}

///
/// @see [ModalBarrier]
@swidget
Widget portalAnimatedModalBarrier({
  @required Widget child,
  @required VoidCallback onClose,
  @required bool visible,
}) =>
    PortalEntry(
      visible: visible,
      closeDuration: kThemeAnimationDuration,
      portal: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onClose,
        child: AnimatedOpacity(
          opacity: visible ? 1 : 0,
          duration: kThemeAnimationDuration,
          child: const ColoredBox(
            color: Styles.MODAL_BG,
          ),
        ),
      ),
      child: child,
    );
