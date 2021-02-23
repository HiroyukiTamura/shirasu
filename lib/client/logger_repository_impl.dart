import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:shirasu/client/logger_repository.dart';

import 'logger_repository.dart';

class LoggerRepositoryImpl with LoggerRepository {
  @override
  void e(dynamic exception, StackTrace stack) =>
      FirebaseCrashlytics.instance.recordError(exception, stack);

  @override
  void d(String message) => FirebaseCrashlytics.instance.log(message);
}
