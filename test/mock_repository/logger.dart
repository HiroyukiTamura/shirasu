import 'package:shirasu/repository/logger_repository.dart';

class TestLogger with LoggerRepository {

  const TestLogger();

  @override
  void d(String message) {
    print(message);
  }

  @override
  void e(exception, StackTrace stack, {reason}) {
    print(exception);
    print(stack);
  }
}