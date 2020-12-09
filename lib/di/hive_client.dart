import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';

abstract class HiveClient<T> {

  const HiveClient(this.boxName);

  @protected
  final String boxName;

  Future<void> init() async => Hive.openBox<T>(boxName);
}

class HiveAuthClient extends HiveClient<HiveAuthData> {

  HiveAuthClient._() : super(_NAME);

  factory HiveAuthClient.instance() => HiveAuthClient._();

  static const _NAME = 'AUTH_DATA';
  static const _KEY_AUTH_DATA = 'AUTH_DATA';

  Future<void> putAuthData(AuthData authData) async =>
      Hive.box<HiveAuthData>(boxName)
          .put(_KEY_AUTH_DATA, HiveAuthData.parse(authData));

  HiveAuthData _getAuthData() =>
      Hive.box<HiveAuthData>(boxName).get(_KEY_AUTH_DATA);

  bool get maybeExpired {
    final expiredAt = _getAuthData()?.expiresAt;
    return expiredAt == null ||
        expiredAt * 1000 < DateTime.now().millisecondsSinceEpoch;
  }
}

class HivePrefectureClient extends HiveClient<dynamic> {

  HivePrefectureClient._() : super(_NAME);

  factory HivePrefectureClient.instance() => HivePrefectureClient._();

  static const _NAME = 'PREFERENCE';
  static const _KEY_INITIAL_LAUNCH_APP = 'INITIAL_LAUNCH_APP';

  bool isInitialLaunchApp() =>
      Hive.box<bool>(boxName).get(_KEY_INITIAL_LAUNCH_APP, defaultValue: true);

  Future<void> setInitialLaunchApp() async =>
      Hive.box(boxName).put(_KEY_INITIAL_LAUNCH_APP, false);
}