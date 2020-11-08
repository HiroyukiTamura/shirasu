
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_programs_data.freezed.dart';
part 'new_programs_data.g.dart';

@freezed
abstract class NewProgramsData implements _$NewProgramsData {

  factory NewProgramsData({
    @required NewPrograms newPrograms,
  }) = _NewProgramsData;

  factory NewProgramsData.fromJson(Map<String, dynamic> json) => _$NewProgramsDataFromJson(json);

  NewProgramsData._();
}

@freezed
abstract class NewPrograms with _$NewPrograms {
  factory NewPrograms({
    @required List<NewProgramItem> items,
    String nextToken,
    @JsonKey(name: '__typename') @required String typename,
  }) = _NewPrograms;

  factory NewPrograms.fromJson(Map<String, dynamic> json) => _$NewProgramsFromJson(json);
}

@freezed
abstract class NewProgramItem with _$NewProgramItem {
  factory NewProgramItem({
    @required DateTime broadcastAt,
    @required String channelId,
    @required String id,
    @required int mainTime,
    @required DateTime releasedAt,
    @required String tenantId,
    @required String title,
    @required int totalPlayTime,
    String viewerPlanType,
    @required NewProgramChannel channel,
    @JsonKey(name: '__typename') @required String typename,
  }) = _NewProgramItem;

  factory NewProgramItem.fromJson(Map<String, dynamic> json) => _$NewProgramItemFromJson(json);
}

@freezed
abstract class NewProgramChannel with _$NewProgramChannel {
  factory NewProgramChannel({
    @required String id,
    @required String name,
    @JsonKey(name: '__typename') @required String typename,
  }) = _NewProgramChannel;

  factory NewProgramChannel.fromJson(Map<String, dynamic> json) => _$NewProgramChannelFromJson(json);
}