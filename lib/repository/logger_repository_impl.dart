import 'dart:math';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:shirasu/repository/logger_repository.dart';

final kPrvLogger =
    Provider<LoggerRepository>((ref) => const LoggerRepositoryImpl._());

class LoggerRepositoryImpl with LoggerRepository {
  const LoggerRepositoryImpl._();

  static const bool CRASHLYTICS_ENABLE = kIsWeb;

  @override
  void d(String message) {
    if (CRASHLYTICS_ENABLE)
      FirebaseCrashlytics.instance.log(message);
    else
      Sentry.captureMessage(message);
  }

  @override
  void e(dynamic exception, StackTrace stack, {dynamic reason}) {
    if (CRASHLYTICS_ENABLE)
      FirebaseCrashlytics.instance.recordError(exception, stack);
    else
      Sentry.captureException(
        exception,
        stackTrace: stack,
        hint: reason,
      );
  }
}
