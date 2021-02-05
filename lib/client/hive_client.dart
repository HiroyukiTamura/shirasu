import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import 'package:shirasu/util.dart';
import 'package:dartx/dartx.dart';

abstract class HiveClient<T> {
  const HiveClient(this._boxName);

  final String _boxName;

  Future<void> init() async => Hive.openBox<T>(_boxName);

  @protected
  Box<T> get box => Hive.box<T>(_boxName);

  bool get isEmpty => box.isEmpty;
}

class HiveAuthClient extends HiveClient<HiveAuthData> {
  HiveAuthClient._() : super(_NAME);

  factory HiveAuthClient.instance() => _instance ??= HiveAuthClient._();

  static const _NAME = 'AUTH_DATA';
  static const _KEY_AUTH_DATA = 'AUTH_DATA';
  static HiveAuthClient _instance;

  HiveAuthData get authData => box.get(_KEY_AUTH_DATA);

  Future<void> putAuthData(AuthData authData) async =>
      _putAuthData(HiveAuthData.parse(authData));

  Future<void> _putAuthData(HiveAuthData data) async =>
      box.put(_KEY_AUTH_DATA, data);

  Future<void> clearAuthData() async => box.clear();

  //todo synchronize??
  bool get shouldRefresh {
    final tokenPublishedAtUtc = authData?.tokenPublishedAtUtc;
    return tokenPublishedAtUtc == null ? null : (tokenPublishedAtUtc + 3.hours).isBefore(DateTime.now().toUtc());
  }

  bool get maybeExpired {
    final expiredAt = authData?.expiresAtUtc;
    return expiredAt == null ||
        expiredAt.isBefore(DateTime.now().toUtc());
  }

  Future<void> appendRefreshedToken(ResultTokenRefresh result) async {
    final data = authData.copyWith(
        rawExpiresAt: result.expiresIn + DateTime.now().millisecondsSinceEpoch,
        tokenPublishedAtUtc: DateTime.now().toUtc(),
        body: authData.body.copyWith(
          expiresIn: result.expiresIn,
          accessToken: result.accessToken,
          tokenType: result.tokenType,
          idToken: result.idToken,
          scope: result.scope,
        ));
    await _putAuthData(data);
  }
}

final kPrvHivePlaySpeedUpdate = StreamProvider.autoDispose<double>((ref) =>
    Hive.box<dynamic>(HivePrefectureClient.NAME)
        .watch(key: HivePrefectureClient.KEY_PLAY_SPEED)
        .map((event) => event.value as double));

@Deprecated('currently not implemented')
final kPrvHiveResolutionUpdate = StreamProvider.autoDispose<double>((ref) =>
    Hive.box<dynamic>(HivePrefectureClient.NAME)
        .watch(key: HivePrefectureClient.KEY_RESOLUTION)
        .map((event) => event.value as double));

class HivePrefectureClient extends HiveClient<dynamic> {
  HivePrefectureClient._() : super(NAME);

  factory HivePrefectureClient.instance() =>
      _instance ??= HivePrefectureClient._();

  static const NAME = 'PREFERENCE';
  static const _KEY_INITIAL_LAUNCH_APP = 'INITIAL_LAUNCH_APP';
  static const KEY_PLAY_SPEED = 'PLAY_SPEED';
  static const KEY_RESOLUTION = 'RESOLUTION';
  static const List<double> PLAY_SPEED = [0.5, 0.75, 1, 1.25, 1.5, 1.75, 2];
  static const List<int> RESOLUTIONS = [480, 720, 1080];
  static HivePrefectureClient _instance;

  bool get isInitialLaunchApp =>
      box.get(_KEY_INITIAL_LAUNCH_APP, defaultValue: true) as bool;

  double get playSpeed => box.get(KEY_PLAY_SPEED, defaultValue: 1.0) as double;

  @Deprecated('currently not implemented')
  int get resolution => box.get(KEY_RESOLUTION, defaultValue: 720) as int;

  Future<void> setPlaySpeed(double value) async {
    assert(PLAY_SPEED.contains(value));
    await box.put(KEY_PLAY_SPEED, value);
  }

  @Deprecated('currently not implemented')
  Future<void> setResolution(int value) async {
    assert(RESOLUTIONS.contains(value));
    await box.put(KEY_RESOLUTION, value);
  }

  Future<void> setInitialLaunchApp() async =>
      box.put(_KEY_INITIAL_LAUNCH_APP, false);
}
