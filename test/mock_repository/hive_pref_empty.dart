import 'dart:collection';

import 'package:collection/src/unmodifiable_wrappers.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';

class HivePrefEmptyRepositoryImpl with HivePrefRepository {
  const HivePrefEmptyRepositoryImpl(this.isInitialLaunchApp);

  @override
  final bool isInitialLaunchApp;

  @override
  double get playSpeed => throw UnimplementedError();

  @override
  int get resolution => throw UnimplementedError();

  @override
  Future<void> setInitialLaunchApp() async {}

  @override
  Future<void> setPlaySpeed(double value) async {}

  @override
  Future<void> setResolution(int value) async {}

  @override
  Future<HiveFcmTopic> get subscribingFcmTopic => throw UnimplementedError();

  @override
  Future<bool> unsubscribeChannelFcmTopic(String channelId) async => true;

  @override
  Future<void> unsubscribePrgFcmTopic(String programId) async {}

  @override
  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data) async {}

  @override
  Future<void> subscribePrgFcmTopic(HiveFcmProgramData data) async {}

  @override
  Future<bool> isFcmTopicChannelSubscribing(String channelId) async => false;

  @override
  Future<bool> isFcmTopicProgramSubscribing(String channelId) async => false;

  @override
  Future<UnmodifiableSetView<HiveFcmProgramData>> get outdatedPrgFcmTopic async => UnmodifiableSetView({});
}
