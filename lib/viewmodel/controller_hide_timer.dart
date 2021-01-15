import 'package:async/async.dart';
import 'package:dio/dio.dart';

class ControllerHideTimer {
  ControllerHideTimer(this.onFinish);

  _SingleTimer _timer;

  final VoidCallback onFinish;

  void renew() {
    _timer?.cancel();
    _timer = _SingleTimer(onFinish);
  }

  void cancel() => _timer?.cancel();
}

class _SingleTimer {
  _SingleTimer(this.onFinish) {
    _start();
  }

  CancelableOperation _operation;
  final VoidCallback onFinish;

  static const Duration _DURATION = Duration(seconds: 2);

  void _start() {
    _operation = CancelableOperation.fromFuture(
      Future.delayed(_DURATION, _computation),
    );
  }

  void cancel() => _operation.cancel();

  void _computation() {
    if (!_operation.isCanceled) onFinish();
  }
}