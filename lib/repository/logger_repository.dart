import 'package:shirasu/model/result.dart';

mixin LoggerRepository {
  void d(String message);

  void e(dynamic exception, StackTrace stack, {dynamic reason});

  Result<T> guard<T>(
    T Function() body, {
    bool logError = true,
  }) =>
      Result.guard(this, body, logError: logError);

  Future<Result<T>> guardFuture<T>(
    Future<T> Function() future, {
    bool logError = true,
  }) async =>
      Result.guardFuture(this, future, logError: logError);
}
