import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/model/ntf_data.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/repository/ntf_message_repository.dart';
import 'package:shirasu/router/app_router_delegate.dart';
import 'package:shirasu/router/global_route_path.dart';

final kPrvNtfMessage = Provider.autoDispose<NtfMessageRepository>(
    (ref) => NtfMessageRepositoryImpl(ref.read));

class NtfMessageRepositoryImpl with NtfMessageRepository {
  NtfMessageRepositoryImpl(this._reader);

  final Reader _reader;

  AppRouterDelegate get _appRouter => _reader(kPrvAppRouterDelegate);

  HivePrefRepository get _hivePref => _reader(kPrvHivePrefRepository);

  @override
  Future<bool> requestPermission() async {
    final settings = await FirebaseMessaging.instance.requestPermission();
    return settings.authorizationStatus == AuthorizationStatus.authorized;
  }

  @override
  Future<void> handleNtf(RemoteMessage message) async {
    if (message?.data != null)
      return NtfData.fromJson(message.data).ntfAction.when(
            unknown: () {},
            openProgram: (programId) async =>
                _appRouter.pushPage(GlobalRoutePath.program(programId)),
            openChannel: (channelId) async => _appRouter.pushPage(GlobalRoutePath.channel(channelId)),
          );
  }

  @override
  Future<void> subscribeChannel(HiveFcmChannelData data) async {
    await FirebaseMessaging.instance.subscribeToTopic(data.topic);
    await _hivePref.subscribeChannelFcmTopic(data);
  }

  @override
  Future<void> subscribeProgram(HiveFcmProgramData data) async {
    await FirebaseMessaging.instance.subscribeToTopic(data.topic);
    await _hivePref.subscribePrgFcmTopic(data);
  }

  @override
  Future<bool> unsubscribeChannel(String channelId) async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(channelId);
    return _hivePref.unsubscribeChannelFcmTopic(channelId);
  }

  @override
  Future<void> unsubscribeProgram(String programId) async {
    await FirebaseMessaging.instance.unsubscribeFromTopic(programId);
    await _hivePref.unsubscribePrgFcmTopic(programId);
  }

  @override
  Future<void> unsubscribeOutDatedPrgTopic() async {
    final outDatedTopics = await _hivePref.outdatedPrgFcmTopic;
    for (final topic in outDatedTopics) await unsubscribeProgram(topic.topic);
  }
}

extension on HiveFcmProgramData {
  String get topic => 'program_$id';
}

extension on HiveFcmChannelData {
  String get topic => 'channel_$id';
}
