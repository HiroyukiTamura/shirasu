import 'package:freezed_annotation/freezed_annotation.dart';

part 'guard.freezed.dart';

@freezed
abstract class Guard<T> with _$Guard {

  const factory Guard.success(T data) = _Success;

  const factory Guard.error(dynamic e) = _Error;

  const Guard._();

  factory Guard.run(T Function() runner) {
    try {
      return Guard.success(runner());
    } catch (e) {
      return Guard.error(e);
    }
  }

  static Future<Guard<T>> runAsync<T>(Future<T> Function() runner) async {
    try {
      return Guard.success(await runner());
    } catch (e) {
      return Guard.error(e);
    }
  }
}