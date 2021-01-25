import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/util.dart';

abstract class HiveClient<T> {

  const HiveClient(this.boxName);

  @protected
  final String boxName;

  Future<void> init() async => Hive.openBox<T>(boxName);
}

class HiveAuthClient extends HiveClient<HiveAuthData> {

  HiveAuthClient._() : super(_NAME);

  factory HiveAuthClient.instance() => _instance ??= HiveAuthClient._();

  static const _NAME = 'AUTH_DATA';
  static const _KEY_AUTH_DATA = 'AUTH_DATA';
  static HiveAuthClient _instance;

  HiveAuthData get authData =>
      Hive.box<HiveAuthData>(boxName).get(_KEY_AUTH_DATA);

  Future<void> putAuthData(AuthData authData) async =>
      Hive.box<HiveAuthData>(boxName)
          .put(_KEY_AUTH_DATA, HiveAuthData.parse(authData));

  Future<void> clearAuthData() async =>
      Hive.box<HiveAuthData>(boxName).clear();

  bool get maybeExpired {
    final expiredAt = authData?.expiresAt;
    return expiredAt == null ||
        expiredAt * 1000 < DateTime
            .now()
            .millisecondsSinceEpoch;
  }
}

final kPrvHivePlaySpeedUpdate = StreamProvider.autoDispose<double>((ref) => Hive.box<dynamic>(HivePrefectureClient.NAME)
      .watch(key: HivePrefectureClient.KEY_PLAY_SPEED)
      .map((event) => event.value as double));

@Deprecated('currently not implemented')
final kPrvHiveResolutionUpdate = StreamProvider.autoDispose<double>((ref) => Hive.box<dynamic>(HivePrefectureClient.NAME)
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
      Hive.box<dynamic>(boxName).get(_KEY_INITIAL_LAUNCH_APP, defaultValue: true) as bool;

  double get playSpeed =>
      Hive.box<dynamic>(boxName).get(KEY_PLAY_SPEED, defaultValue: 1.0) as double;

  @Deprecated('currently not implemented')
  int get resolution =>
      Hive.box<dynamic>(boxName).get(KEY_RESOLUTION, defaultValue: 720) as int;

  Future<void> setPlaySpeed(double value) async {
    assert(PLAY_SPEED.contains(value));
    await Hive.box<dynamic>(boxName).put(KEY_PLAY_SPEED, value);
  }

  @Deprecated('currently not implemented')
  Future<void> setResolution(int value) async {
    assert(RESOLUTIONS.contains(value));
    await Hive.box<dynamic>(boxName).put(KEY_RESOLUTION, value);
  }

  Future<void> setInitialLaunchApp() async =>
      Hive.box<dynamic>(boxName).put(_KEY_INITIAL_LAUNCH_APP, false);
}