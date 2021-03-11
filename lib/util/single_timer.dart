import 'package:async/async.dart';
import 'package:dio/dio.dart';

class SingleTimer {
  SingleTimer(this.onFinish, this.duration);

  _Timer _timer;

  final Duration duration;
  final VoidCallback onFinish;

  void renew() {
    _timer?.cancel();
    _timer = _Timer(onFinish, duration);
  }

  void cancel() => _timer?.cancel();
}

class _Timer {
  _Timer(this.onFinish, this.duration) {
    _start();
  }

  CancelableOperation _operation;
  final VoidCallback onFinish;
  final Duration duration;

  void _start() => _operation = CancelableOperation.fromFuture(
    Future.delayed(duration, _computation),
  );

  void cancel() => _operation.cancel();

  void _computation() {
    if (!_operation.isCanceled) onFinish();
  }
}
