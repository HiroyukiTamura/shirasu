import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/hive_client.dart';

final kPrvHivePrefRepository =
    Provider<HivePrefRepository>((ref) => HivePrefRepositoryImpl.instance());

final _kPrvHiveSubscribingFcmTopic = FutureProvider<HiveFcmTopic>(
    (ref) => ref.watch(kPrvHivePrefRepository).subscribingFcmTopic);

//todo refactor
final kPrvHiveFcmChannelSubscribeUpdate =
    StreamProvider.family.autoDispose<bool, String>((ref, channelId) async* {
  final initial = await ref.watch(_kPrvHiveSubscribingFcmTopic.future);
  yield initial.hasChannel(channelId);
  yield* Hive.box<dynamic>(HivePrefRepositoryImpl.NAME)
      .watch(key: HivePrefRepositoryImpl.KEY_FCM_TOPIC)
      .map((event) => (event.value as HiveFcmTopic).hasChannel(channelId));
});

final kPrvHiveFcmSubscribeUpdate = StreamProvider.family
    .autoDispose<FcmSubscribingStatus, PrgIdAndChannelId>((ref, msg) async* {
  final initial = await ref.watch(_kPrvHiveSubscribingFcmTopic.future);
  yield initial.status(msg.programId, msg.channelId);
  yield* Hive.box<dynamic>(HivePrefRepositoryImpl.NAME)
      .watch(key: HivePrefRepositoryImpl.KEY_FCM_TOPIC)
      .map((event) {
    final topic = event.value as HiveFcmTopic;
    return topic.status(msg.programId, msg.channelId);
  });
});

mixin HivePrefRepository {
  bool get isInitialLaunchApp;

  double get playSpeed;

  Future<HiveFcmTopic> get subscribingFcmTopic;

  Future<UnmodifiableSetView<HiveFcmProgramData>> get outdatedPrgFcmTopic;

  @Deprecated('currently not implemented')
  int get resolution;

  Future<void> setPlaySpeed(double value);

  @Deprecated('currently not implemented')
  Future<void> setResolution(int value);

  Future<void> setInitialLaunchApp();

  Future<void> subscribePrgFcmTopic(HiveFcmProgramData data);

  Future<void> unsubscribePrgFcmTopic(String programId);

  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data);

  /// returns false if fcm topic is not subscribed firstly
  Future<bool> unsubscribeChannelFcmTopic(String channelId);

  Future<bool> isFcmTopicChannelSubscribing(String channelId);

  Future<bool> isFcmTopicProgramSubscribing(String programId);
}
