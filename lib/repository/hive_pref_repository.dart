import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/repository/hive_client.dart';

final kPrvHivePrefRepository = Provider<HivePrefRepository>((ref) => HivePrefRepositoryImpl.instance());

mixin HivePrefRepository {
  bool get isInitialLaunchApp;

  double get playSpeed;

  Future<HiveFcmTopic> get subscribingFcmTopic;

  @Deprecated('currently not implemented')
  int get resolution;

  Future<void> setPlaySpeed(double value);

  @Deprecated('currently not implemented')
  Future<void> setResolution(int value);

  Future<void> setInitialLaunchApp();

  Future<void> subscribePrgFcmTopic(HiveFcmProgramData data);

  Future<void> unsubscribePrgFcmTopic(String programId);

  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data);

  Future<void> unsubscribeChannelFcmTopic(String channelId);
}