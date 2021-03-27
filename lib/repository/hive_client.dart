import 'dart:collection';

import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/model/network/result_login.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/model/hive/auth_data.dart';
import 'package:shirasu/model/update_user_with_attribute_data.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/repository/hive_auth_repository.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shirasu/viewmodel/background_task.dart';

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

  /// must run under [authOperationLock]
  @override
  Future<void> putAuthData(HiveAuthData data) async =>
      box.put(_KEY_AUTH_DATA, data);

  /// must run under [authOperationLock]
  @override
  Future<void> clearAuthData() async => box.clear();

  @override
  bool get shouldRefresh {
    final expiresAt = authData?.expiresAt;
    return expiresAt == null ? null : (expiresAt - 3.hours) < DateTime.now();
  }

  @override
  bool get maybeExpired => authData?.isExpired == true;

  /// must run under [authOperationLock]
  @override
  Future<void> appendRefreshedToken(LoginResult result) async {
    final body = authData.body.copyWith(
      expiresIn: result.expiresIn,
      accessToken: result.accessToken,
      tokenType: result.tokenType,
      idToken: result.idToken,
      scope: result.scope,
    );
    final data = authData.copyWith(
      expiresAt: HiveAuthData.calcExpiresAt(body),
      body: body,
    );
    await putAuthData(data);
  }

  /// must run under [authOperationLock]
  @override
  Future<void> updateProfile(UserWithAttributeData data) async {
    final hiveUser = authData.copyWithEditResult(data.updateUserWithAttribute);
    await putAuthData(hiveUser);
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
  static const KEY_FCM_TOPIC = 'FCM_TOPIC';
  static const List<double> PLAY_SPEED = [0.5, 0.75, 1, 1.25, 1.5, 1.75, 2];
  static const List<int> RESOLUTIONS = [480, 720, 1080];
  static HivePrefRepositoryImpl _instance;

  @override
  ValueListenable<Box> get fcmTopicListener =>
      box.listenable(keys: [HivePrefRepositoryImpl.KEY_FCM_TOPIC]);

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

  @override
  Future<HiveFcmTopic> get subscribingFcmTopic async => box.get(
        KEY_FCM_TOPIC,
        defaultValue: HiveFcmTopic.initial(),
      );

  @override
  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data) async {
    final topic = await subscribingFcmTopic;
    await box.put(KEY_FCM_TOPIC, topic.appendChannelData(data));
  }

  @override
  Future<void> subscribePrgFcmTopic(HiveFcmProgramData data) async {
    final topic = await subscribingFcmTopic;
    await box.put(KEY_FCM_TOPIC, topic.appendProgramData(data));
  }

  @override
  Future<bool> unsubscribeChannelFcmTopic(String channelId) async {
    final topic = await subscribingFcmTopic;
    if (!topic.hasChannel(channelId)) return false;

    await box.put(KEY_FCM_TOPIC, topic.removeChannelData(channelId));
    return true;
  }

  @override
  Future<void> unsubscribePrgFcmTopic(String programId) async {
    final topic = await subscribingFcmTopic;
    await box.put(KEY_FCM_TOPIC, topic.removeProgramData(programId));
  }

  /// return items older than 1 week
  @override
  Future<UnmodifiableSetView<HiveFcmProgramData>>
      get outdatedPrgFcmTopic async {
    final topics = await subscribingFcmTopic;
    final set = topics.subscribingPrograms.values
        .where((it) => it.broadcastAt < DateTime.now() - 1.weeks)
        .toSet();
    return UnmodifiableSetView(set);
  }

  @override
  Future<bool> isFcmTopicChannelSubscribing(String channelId) async {
    final topics = await subscribingFcmTopic;
    return topics.hasChannel(channelId);
  }

  @override
  Future<bool> isFcmTopicProgramSubscribing(String programId) async {
    final topics = await subscribingFcmTopic;
    return topics.hasProgram(programId);
  }
}
