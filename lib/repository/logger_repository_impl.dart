import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/logger_repository.dart';

final kPrvLogger = Provider<LoggerRepository>((ref) => const LoggerRepositoryImpl._());

class LoggerRepositoryImpl with LoggerRepository {

  const LoggerRepositoryImpl._();

  @override
  void d(String message) => FirebaseCrashlytics.instance.log(message);

  @override
  void e(dynamic exception, StackTrace stack, {dynamic reason}) =>
      FirebaseCrashlytics.instance.recordError(exception, stack);
}
