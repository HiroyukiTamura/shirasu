import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/screen_detail/video_header/video_thumbnail.dart';
import 'package:shirasu/viewmodel/viewmodel_video.dart';
import 'package:tuple/tuple.dart';

part 'double_tap_inkwell.g.dart';

enum _Ltr { RIGHT, LEFT }

// todo rename, extract from this file
final _pTapPoint = ChangeNotifierProvider.autoDispose
    .family<_TapViewModel, _Ltr>((ref, ltr) => _TapViewModel(ltr));

final _pDoubleTapEvent = Provider.autoDispose.family<UniqueKey, _Ltr>(
    (ref, ltr) => ref.watch(_pTapPoint(ltr)).doubleTapEventKey);
//
// final _pIconVis =
//     StateProvider.autoDispose.family<bool, _Ltr>((_, ltr) => false);

class _TapViewModel extends ChangeNotifier {
  _TapViewModel(this.ltr) : super();

  final _Ltr ltr;

  int _continuesTapTime = 0;
  Offset _lastTap = Offset.zero;
  bool _widgetVis = false;

  int get continuesTapTime => _continuesTapTime;

  bool get widgetVis => _widgetVis;

  Offset get lastTap => _lastTap;

  set lastTap(Offset value) {
    _lastTap = value;
    notifyListeners();
  }

  UniqueKey _doubleTapEventKey;

  UniqueKey get doubleTapEventKey => _doubleTapEventKey;

  void notifyTap() {
    _doubleTapEventKey = UniqueKey();
    _widgetVis = true;
    _continuesTapTime++;
    notifyListeners();
  }

  void notifyHideWidget(UniqueKey key) {
    if (key != doubleTapEventKey) return;

    _widgetVis = false;
    _continuesTapTime = 0;
    notifyListeners();
  }
}

class DoubleTapInkWell extends StatelessWidget {
  const DoubleTapInkWell({
    Key key,
    @required this.id,
    @required this.child,
  }) : super(key: key);

  final String id;
  final Widget child;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => _onTapBackDrop(context),
        behavior: HitTestBehavior.translucent,
        child: Stack(
          children: [
            Row(
              children: const [
                _DoubleTapAnimatedWrapper(ltr: _Ltr.LEFT),
                _DoubleTapAnimatedWrapper(ltr: _Ltr.RIGHT)
              ],
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => _onTapBackDrop(context),
              child: child,
            ),
          ],
        ),
      );

  void _onTapBackDrop(BuildContext context) =>
      context.read(pVideoViewModel(id)).toggleVisibility();
}

class _DoubleTapAnimatedWrapper extends StatelessWidget {
  const _DoubleTapAnimatedWrapper({
    Key key,
    @required this.ltr,
  }) : super(key: key);

  final _Ltr ltr;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onDoubleTapDown: (details) => _onDoubleTapDown(context, details),
        onDoubleTap: () => _onDoubleTap(context),
        child: _DoubleTapAnimated(ltr: ltr),
      ),
    );
  }

  void _onDoubleTapDown(BuildContext context, TapDownDetails details) =>
      context.read(_pTapPoint(ltr)).lastTap = details.localPosition;

  void _onDoubleTap(BuildContext context) =>
      context.read(_pTapPoint(ltr)).notifyTap();
}

class _DoubleTapAnimated extends StatefulHookWidget {
  const _DoubleTapAnimated({
    @required this.ltr,
    Key key,
  }) : super(key: key);

  final _Ltr ltr;

  @override
  _DoubleTapAnimatedState createState() => _DoubleTapAnimatedState();
}

class _DoubleTapAnimatedState extends State<_DoubleTapAnimated>
    with TickerProviderStateMixin {
  AnimationController _animationController;
  AnimationController _fadeController;
  Animation<double> _animation;
  Animation<double> _fadeAnimation;

  static const _DURATION_RIPPLE = Duration(milliseconds: 500);
  static const _DURATION_VISIBLE_EXTRA = Duration(milliseconds: 300);
  static const _DURATION_FADE = Duration(milliseconds: 100);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: _DURATION_RIPPLE,
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.linear,
    );
    _fadeController = AnimationController(
      vsync: this,
      duration: _DURATION_FADE,
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
    _fadeController.dispose();
  }

  @override
  Widget build(BuildContext context) => ProviderListener(
        onChange: _onChange,
        provider: _pDoubleTapEvent(widget.ltr),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: ClipPath(
            clipper: widget.ltr == _Ltr.LEFT
                ? OvalRightBorderClipper()
                : OvalLeftBorderClipper(),
            child: Stack(
              children: [
                CircularRevealAnimation(
                  animation: _animation,
                  centerOffset: useProvider(
                      _pTapPoint(widget.ltr).select((it) => it.lastTap)),
                  child: const SizedBox.expand(
                    child: ColoredBox(
                      color: Colors.white30,
                    ),
                  ),
                ),
                _IconWithShade(
                  ltr: widget.ltr,
                ),
              ],
            ),
          ),
        ),
      );

  Future<void> _onChange(BuildContext context, UniqueKey value) async {
    if (_animationController.status == AnimationStatus.completed)
      _animationController.reset();
    if (_fadeController.status == AnimationStatus.reverse)
      _fadeController.reset();

    try {
      _fadeController.value = 1;
      await _animationController.forward().orCancel;
      await Future.delayed(_DURATION_VISIBLE_EXTRA);
      _animationController.reset();
      await _fadeController.reverse().orCancel;
      _fadeController.reset();
      // ignore: empty_catches
    } on TickerCanceled {}
    context.read(_pTapPoint(widget.ltr)).notifyHideWidget(value);
  }
}

class _IconWithShade extends HookWidget {
  const _IconWithShade({
    Key key,
    @required this.ltr,
  }) : super(key: key);

  final _Ltr ltr;
  static const double _TEXT_H = 24;

  @override
  Widget build(BuildContext context) => Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white30,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: _TEXT_H),
            Icon(
              ltr == _Ltr.LEFT ? Icons.fast_rewind : Icons.fast_forward,
              size: Dimens.VIDEO_SEEK_BTN_ICON_SIZE,
            ),
            Container(
              height: _TEXT_H,
              alignment: Alignment.center,
              child: _TimeText(ltr: ltr),
            ),
          ],
        ),
      );
}

@hwidget
Widget _timeText({
  @required _Ltr ltr,
}) {
  final swapSec =
      useProvider(_pTapPoint(ltr).select((it) => it.continuesTapTime)) *
          VideoViewModel.SEC_FAST_SEEK_BY_DOUBLE_TAP.inSeconds;
  return Text('$swapSec${Strings.TIME_UNIT_SEC}');
}
