import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';

mixin NtfMessageRepository {
  Future<void> handleNtf(RemoteMessage message);

  Future<void> subscribeChannel(HiveFcmChannelData data);

  Future<void> unsubscribeChannel(String channelId);

  Future<void> subscribeProgram(HiveFcmProgramData data);

  Future<void> unsubscribeProgram(String programId);

  Future<bool> checkPermission();
}