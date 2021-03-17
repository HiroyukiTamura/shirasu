import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';

part 'fcm_topic.g.dart';

part 'fcm_topic.freezed.dart';

// hive type id must be 100s

@freezed
abstract class HiveFcmTopic with _$HiveFcmTopic {
  @HiveType(typeId: 100)
  const factory HiveFcmTopic({
    @HiveField(100) @Default({}) @protected Set<HiveFcmChannelData> rawSubscribingChannels,
    @HiveField(101) @Default({}) @protected Set<HiveFcmProgramData> rawSubscribingPrograms,
  }) = _HiveFcmTopic;

  const HiveFcmTopic._();

  UnmodifiableSetView<HiveFcmChannelData> get subscribingChannels => rawSubscribingChannels;

  UnmodifiableSetView<HiveFcmProgramData> get subscribingPrograms => rawSubscribingPrograms;

  HiveFcmTopic appendChannelData(HiveFcmChannelData data) => copyWith(
        rawSubscribingChannels: subscribingChannels..add(data),
    );

  HiveFcmTopic removeChannelData(String channelId) => copyWith(
    rawSubscribingChannels: subscribingChannels..removeWhere((it) => it.id == channelId),
  );

  HiveFcmTopic appendProgramData(HiveFcmProgramData data) => copyWith(
    rawSubscribingPrograms: subscribingPrograms..add(data),
  );

  HiveFcmTopic removeProgramData(String programId) => copyWith(
    rawSubscribingPrograms: subscribingPrograms..removeWhere((it) => it.id == programId),
  );
}

@freezed
abstract class HiveFcmChannelData with _$HiveFcmChannelData {
  @HiveType(typeId: 200)
  const factory HiveFcmChannelData({
    @HiveField(200) @required String id,
    @HiveField(201) @required String name,
  }) = _HiveFcmChannelData;

  factory HiveFcmChannelData.parse(Channel channel) => HiveFcmChannelData(
        id: channel.id,
        name: channel.name,
      );
}

@freezed
abstract class HiveFcmProgramData with _$HiveFcmProgramData {
  @HiveType(typeId: 300)
  const factory HiveFcmProgramData({
    @HiveField(300) @required String id,
    @HiveField(301) @required String title,
    @HiveField(302) @required DateTime broadcastAt,
  }) = _HiveFcmProgramData;

  factory HiveFcmProgramData.parse(ProgramDetail program) => HiveFcmProgramData(
        id: program.id,
        title: program.title,
        broadcastAt: program.broadcastAt,
      );
}
