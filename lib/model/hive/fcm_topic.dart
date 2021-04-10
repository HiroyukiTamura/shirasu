import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/extension.dart';

part 'fcm_topic.g.dart';

part 'fcm_topic.freezed.dart';

// hive type id must be 10s

@freezed
abstract class HiveFcmTopic with _$HiveFcmTopic {
  @protected
  @HiveType(typeId: 10)
  const factory HiveFcmTopic({
    @HiveField(100)
    @required
    @protected
        Map<String, HiveFcmChannelData> rawSubscribingChannels,
    @HiveField(101)
    @required
    @protected
        Map<String, HiveFcmProgramData> rawSubscribingPrograms,
  }) = _HiveFcmTopic;

  const HiveFcmTopic._();

  factory HiveFcmTopic.initial() => const HiveFcmTopic(
        rawSubscribingChannels: {},
        rawSubscribingPrograms: {},
      );

  bool get isEmpty => rawSubscribingChannels.isEmpty && rawSubscribingPrograms.isEmpty;

  UnmodifiableMapView<String, HiveFcmChannelData> get subscribingChannels =>
      rawSubscribingChannels.toUnmodifiable();

  UnmodifiableMapView<String, HiveFcmProgramData> get subscribingPrograms =>
      rawSubscribingPrograms.toUnmodifiable();

  HiveFcmTopic appendChannelData(HiveFcmChannelData data) => copyWith(
        rawSubscribingChannels: rawSubscribingChannels + {data.id: data},
      );

  HiveFcmTopic removeChannelData(String channelId) => copyWith(
        rawSubscribingChannels: Map.from(rawSubscribingChannels)
          ..removeWhere((id, _) => id == channelId),
      );

  HiveFcmTopic appendProgramData(HiveFcmProgramData data) => copyWith(
        rawSubscribingPrograms: rawSubscribingPrograms + {data.id: data},
      );

  HiveFcmTopic removeProgramData(String programId) => copyWith(
        rawSubscribingPrograms: Map.from(rawSubscribingPrograms)
          ..removeWhere((id, _) => id == programId),
      );

  bool hasChannel(String channelId) =>
      rawSubscribingChannels.containsKey(channelId);

  bool hasProgram(String programId) =>
      rawSubscribingPrograms.containsKey(programId);

  FcmSubscribingStatus status(String programId, String channelId) {
    if (hasChannel(channelId)) return const FcmSubscribingStatus.channel();
    if (hasProgram(programId)) return const FcmSubscribingStatus.program();
    return const FcmSubscribingStatus.none();
  }
}

@freezed
abstract class PrgIdAndChannelId with _$PrgIdAndChannelId {
  const factory PrgIdAndChannelId({
    @required String programId,
    @required String channelId,
  }) = _PrgIdAndChannelId;
}

@freezed
abstract class FcmSubscribingStatus with _$FcmSubscribingStatus {
  const factory FcmSubscribingStatus.channel() = _Channel;

  const factory FcmSubscribingStatus.program() = _Program;

  const factory FcmSubscribingStatus.none() = _None;

  const FcmSubscribingStatus._();
}

@freezed
abstract class HiveFcmChannelData with _$HiveFcmChannelData {
  @HiveType(typeId: 11)
  const factory HiveFcmChannelData({
    @HiveField(110) @required String id,
    @HiveField(111) @required String name,
  }) = _HiveFcmChannelData;

  factory HiveFcmChannelData.parse(Channel channel) => HiveFcmChannelData(
        id: channel.id,
        name: channel.name,
      );
}

@freezed
abstract class HiveFcmProgramData with _$HiveFcmProgramData {
  @HiveType(typeId: 12)
  const factory HiveFcmProgramData({
    @HiveField(120) @required String id,
    @HiveField(121) @required String title,
    @HiveField(122) @required DateTime broadcastAt,
  }) = _HiveFcmProgramData;

  factory HiveFcmProgramData.parse(ProgramDetail program) => HiveFcmProgramData(
        id: program.id,
        title: program.title,
        broadcastAt: program.broadcastAt,
      );
}
