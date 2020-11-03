import 'package:hive/hive.dart';

class HiveClient {

  static bool isInitialLaunchApp() => _HivePrefClient._isInitialLaunchApp();

  static void setInitialLaunchApp() => _HivePrefClient._setInitialLaunchApp();

  static Future<void> init() async => _HivePrefClient.open();
}

class _HivePrefClient {
  static const _NAME = 'PREFERENCE';

  static const _KEY_INITIAL_LAUNCH_APP = 'INITIAL_LAUNCH_APP';

  static bool _isInitialLaunchApp() => Hive.box(_NAME).get(_KEY_INITIAL_LAUNCH_APP, defaultValue: true);

  static void _setInitialLaunchApp() => Hive.box(_NAME).put(_KEY_INITIAL_LAUNCH_APP, false);

  static Future<void> open() async => Hive.openBox(_NAME);
}