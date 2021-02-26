import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/model/auth_data.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/result_token_refresh.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';

abstract class HiveClient<T> {
  const HiveClient(this._boxName);

  final String _boxName;

  Future<void> init() async => Hive.openBox<T>(_boxName);

  @protected
  Box<T> get box => Hive.box<T>(_boxName);

  bool get isEmpty => box.isEmpty;
}

class HiveAuthRepositoryImpl extends HiveClient<HiveAuthData>
    with HiveAuthRepository {
  HiveAuthRepositoryImpl._() : super(_NAME);

  factory HiveAuthRepositoryImpl.instance() =>
      _instance ??= HiveAuthRepositoryImpl._();

  static const _NAME = 'AUTH_DATA';
  static const _KEY_AUTH_DATA = 'AUTH_DATA';
  static HiveAuthRepositoryImpl _instance;

  @override
  HiveAuthData get authData => box.get(_KEY_AUTH_DATA);

  @override
  Future<void> putAuthData(AuthData authData) async =>
      _putAuthData(HiveAuthData.parse(authData));

  Future<void> _putAuthData(HiveAuthData data) async =>
      box.put(_KEY_AUTH_DATA, data);

  @override
  Future<void> clearAuthData() async => box.clear();

  @override
  bool get shouldRefresh {
    final tokenPublishedAtUtc = authData?.tokenPublishedAtUtc;
    return tokenPublishedAtUtc == null
        ? null
        : (tokenPublishedAtUtc + 3.hours).isBefore(DateTime.now().toUtc());
  }

  @override
  bool get maybeExpired {
    final expiredAt = authData?.expiresAtUtc;
    return expiredAt == null || expiredAt.isBefore(DateTime.now().toUtc());
  }

  @override
  Future<void> appendRefreshedToken(ResultTokenRefresh result) async {
    final nowUtc = DateTime.now().toUtc();
    final unixSec = nowUtc.millisecondsSinceEpoch ~/ 1000;
    final data = authData.copyWith(
        rawExpiresAt: result.expiresIn + unixSec,
        tokenPublishedAtUtc: nowUtc,
        body: authData.body.copyWith(
          expiresIn: result.expiresIn,
          accessToken: result.accessToken,
          tokenType: result.tokenType,
          idToken: result.idToken,
          scope: result.scope,
        ));
    await _putAuthData(data);
  }

  @override
  Future<void> updateProfile(UserWithAttributeData data) async {
    final hiveUser = authData.copyWithEditResult(data.updateUserWithAttribute);
    await _putAuthData(hiveUser);
  }
}

final kPrvHivePlaySpeedUpdate = StreamProvider.autoDispose<double>((ref) =>
    Hive.box<dynamic>(HivePrefRepositoryImpl.NAME)
        .watch(key: HivePrefRepositoryImpl.KEY_PLAY_SPEED)
        .map((event) => event.value as double));

@Deprecated('currently not implemented')
final kPrvHiveResolutionUpdate = StreamProvider.autoDispose<double>((ref) =>
    Hive.box<dynamic>(HivePrefRepositoryImpl.NAME)
        .watch(key: HivePrefRepositoryImpl.KEY_RESOLUTION)
        .map((event) => event.value as double));

class HivePrefRepositoryImpl extends HiveClient<dynamic>
    with HivePrefRepository {
  HivePrefRepositoryImpl._() : super(NAME);

  factory HivePrefRepositoryImpl.instance() =>
      _instance ??= HivePrefRepositoryImpl._();

  static const NAME = 'PREFERENCE';
  static const _KEY_INITIAL_LAUNCH_APP = 'INITIAL_LAUNCH_APP';
  static const KEY_PLAY_SPEED = 'PLAY_SPEED';
  static const KEY_RESOLUTION = 'RESOLUTION';
  static const List<double> PLAY_SPEED = [0.5, 0.75, 1, 1.25, 1.5, 1.75, 2];
  static const List<int> RESOLUTIONS = [480, 720, 1080];
  static HivePrefRepositoryImpl _instance;

  @override
  bool get isInitialLaunchApp =>
      box.get(_KEY_INITIAL_LAUNCH_APP, defaultValue: true) as bool;

  @override
  double get playSpeed => box.get(KEY_PLAY_SPEED, defaultValue: 1.0) as double;

  @override
  @Deprecated('currently not implemented')
  int get resolution => box.get(KEY_RESOLUTION, defaultValue: 720) as int;

  @override
  Future<void> setPlaySpeed(double value) async {
    assert(PLAY_SPEED.contains(value));
    await box.put(KEY_PLAY_SPEED, value);
  }

  @override
  @Deprecated('currently not implemented')
  Future<void> setResolution(int value) async {
    assert(RESOLUTIONS.contains(value));
    await box.put(KEY_RESOLUTION, value);
  }

  @override
  Future<void> setInitialLaunchApp() async =>
      box.put(_KEY_INITIAL_LAUNCH_APP, false);
}
