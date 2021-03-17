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
  Future<void> unsubscribeChannelFcmTopic(String channelId) async {}

  @override
  Future<void> unsubscribePrgFcmTopic(String programId) async {}

  @override
  Future<void> subscribeChannelFcmTopic(HiveFcmChannelData data) async {}

  @override
  Future<void> subscribePrgFcmTopic(HiveFcmProgramData data) async {}
}
