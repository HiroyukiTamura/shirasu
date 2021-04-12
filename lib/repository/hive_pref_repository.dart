import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/hive_client.dart';

final kPrvHivePrefRepository =
    Provider<HivePrefRepository>((ref) => HivePrefRepositoryImpl.instance());

final kPrvHiveFcmTopicListener = Provider<ValueListenable<Box<dynamic>>>(
        (ref) => ref.watch(kPrvHivePrefRepository).fcmTopicListener);

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

  /// todo return boolean? see [unsubscribeChannelFcmTopic]
  Future<void> unsubscribePrgFcmTopic(String programId);

  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data);

  /// returns false if fcm topic is not subscribed firstly
  Future<bool> unsubscribeChannelFcmTopic(String channelId);

  Future<bool> isFcmTopicChannelSubscribing(String channelId);

  Future<bool> isFcmTopicProgramSubscribing(String programId);

  ValueListenable<Box<dynamic>> get fcmTopicListener;
}
