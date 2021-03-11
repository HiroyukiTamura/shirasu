// ignore_for_file: avoid_print
import 'package:shirasu/repository/logger_repository.dart';

class TestLogger with LoggerRepository {
  const TestLogger();

  @override
  void d(String message) {
    print(message);
  }

  @override
  void e(dynamic exception, StackTrace stack, {dynamic reason}) {
    print(exception);
    print(stack);
  }
}
