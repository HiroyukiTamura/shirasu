import 'package:background_fetch/background_fetch.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:shirasu/repository/dio_client.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:synchronized/synchronized.dart';

final authOperationLock = Lock();

Future<void> backgroundFetchTask(String taskId) async {
  final localAuthData = HiveAuthRepositoryImpl.instance();
  if (localAuthData.shouldRefresh)
    await authOperationLock.synchronized(() async {
      final authData = localAuthData.authData;
      if (authData == null) return;

      try {
        final result = await DioRepositoryImpl.renewToken(
          clientId: authData.body.clientId,
          refreshToken: authData.body.refreshToken,
          audience: authData.body.audience,
        );
        debugPrint(result.toString());
        await localAuthData.appendRefreshedToken(result);
      } catch (e) {
        await FirebaseCrashlytics.instance.recordError(e, null);
      }
    });
  BackgroundFetch.finish(taskId);
}

Future<void> backgroundTaskTimeout(String taskId) async {
  BackgroundFetch.finish(taskId);
}
