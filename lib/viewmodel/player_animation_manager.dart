import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

import '../util.dart';

enum PlayerStatus {
  SHRINKED,
  EXPANDED,
}

// TODO(mono): 完全に隠れた方のアニメーションを無効化したり(Visibility+α)
class PlayerAnimationManager with Disposable {

  PlayerAnimationManager._(TickerProvider vsync)
      : _animationController = AnimationController(
          duration: _DURATION,
          vsync: vsync,
        ) {
    _resetAnimationIfNeeded();
    _topFadeAnimation = _animationController.drive(
      CurveTween(
        curve: const Interval(0.8, 1),
      ),
    );
    _contentFadeAnimation = _animationController.drive(
      CurveTween(
        curve: const Interval(0.2, 1),
      ),
    );
  }

  static PlayerAnimationManager _instance;

  static PlayerAnimationManager get instance => _instance;

  static void init(TickerProvider vsync) => _instance = PlayerAnimationManager._(vsync);

  // TODO(mono): 200くらいが良い
  static const _DURATION = Duration(milliseconds: 500);

  static AnimationController createController(TickerProvider vsync) =>
      AnimationController(
        duration: _DURATION,
        vsync: vsync,
      );

  final AnimationController _animationController;
  Animation<double> _animation;
  Animation<double> _topFadeAnimation;
  Animation<double> _contentFadeAnimation;

  Animation<double> get animation => _animation;

  Animation<double> get topFadeAnimation => _topFadeAnimation;

  Animation<double> get contentFadeAnimation => _contentFadeAnimation;

  PlayerStatus _status = PlayerStatus.SHRINKED;

  PlayerStatus get status => _status;

  void _resetAnimationIfNeeded() {
    if (_animation != _animationController) {
      _animation = _animationController;
    }
  }

  void addAnimationValue(double value) {
    _resetAnimationIfNeeded();
    _animationController.value += value;
  }

  Future<void> expand() async {
    _status = PlayerStatus.EXPANDED;

    // その地点から良い感じのアニメーションカーブをかけるためのケア(shrink()も同様)
    // https://twitter.com/_mono/status/1226426629800390659
    final tween = Tween<double>(
      begin: _animationController.value,
      end: 1,
    );
    _animation = _animationController
        .drive(
          CurveTween(
            curve: Interval(
              tween.begin,
              tween.end,
              curve: Curves.easeOutExpo,
            ),
          ),
        )
        .drive(tween);

    await _animationController.forward();
    _resetAnimationIfNeeded();
  }

  Future<void> collapse() async {
    _status = PlayerStatus.SHRINKED;
    final tween = Tween<double>(
      begin: 0,
      end: _animationController.value,
    );
    _animation = _animationController
        .drive(
          CurveTween(
            curve: Interval(
              tween.begin,
              tween.end,
              curve: Curves.easeInCirc,
            ),
          ),
        )
        .drive(tween);
    await _animationController.reverse();
    _resetAnimationIfNeeded();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _instance = null;
  }
}
