import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/portal/btm_sheet/portal_animated_modal_barrier.dart';

part 'slide_in_from_btm.g.dart';

typedef OnTapPlaySpeed = void Function(double playSpeed);

typedef ProviderGetter<S> = ProviderBase<Object, S> Function();

typedef ShowModal<S> = bool Function(S value);

const _kBegin = Offset(0, 1);

@swidget
Widget slideInFromBtm({
  @required Widget child,
  @required bool visible,
  @required Duration duration,
  @required Widget btmSheetContent,
  @required GlobalKey<MyAppState> rootKey,
}) =>
    LayoutBuilder(
      builder: (context, _) => PortalEntry(
        closeDuration: duration,
        visible: visible,
        portal: Padding(
          padding: MediaQuery.of(rootKey.currentContext).padding,
          child: TweenAnimationBuilder<Offset>(
            duration: duration,
            curve: Curves.easeOut,
            tween: Tween(
              begin: _kBegin,
              end: visible ? Offset.zero : _kBegin,
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
        ),
        child: child,
      ),
    );
