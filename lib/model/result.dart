import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/repository/logger_repository.dart';

part 'result.freezed.dart';

/// ref: https://github.com/wasabeef/flutter-architecture-blueprints/blob/0fcdfc8522050cd233ed90b1915f55ffcd33831a/lib/data/model/result.dart
@freezed
abstract class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success([T data]) = _Success<T>;

  const factory Result.failure(dynamic error) = _Failure<T>;

  // ignore: prefer_constructors_over_static_methods
  static Result<T> guard<T>(
    LoggerRepository logger,
    T Function() body, {
    bool logError = true,
  }) {
    try {
      return Result.success(body());
    } catch (e) {
      if (logError) logger.e(e, null);
      return Result.failure(e);
    }
  }

  static Future<Result<T>> guardFuture<T>(
    LoggerRepository logger,
    Future<T> Function() future, {
    bool logError = true,
  }) async {
    try {
      return Result.success(await future());
    } catch (e) {
      if (logError) logger.e(e, null);
      return Result.failure(e);
    }
  }

  bool get isSuccess => when(success: (data) => true, failure: (e) => false);

  bool get isFailure => !isSuccess;

  void ifSuccess(Function(T data) body) {
    maybeWhen(
      success: (data) => body(data),
      orElse: () {
        // no-op
      },
    );
  }

  Future<void> ifSuccessFuture(Future<void> Function(T data) body) async => await maybeWhen(
      success: (data) async => body(data),
      orElse: () {
        // no-op
      },
    );

  void ifFailure(Function(dynamic e) body) {
    maybeWhen(
      failure: (e) => body(e),
      orElse: () {
        // no-op
      },
    );
  }

  T get dataOrThrow => when(
        success: (data) => data,
        failure: (e) => throw e,
      );
}

extension ResultObjectExt<T> on T {
  Result<T> get asSuccess => Result.success(this);

  Result<T> asFailure(dynamic e) => Result.failure(e);
}
