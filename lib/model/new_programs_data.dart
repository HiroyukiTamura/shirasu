import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';

part 'new_programs_data.freezed.dart';

part 'new_programs_data.g.dart';

@freezed
abstract class NewProgramsData with _$NewProgramsData {
  const factory NewProgramsData({
    @required NewPrograms newPrograms,
  }) = _NewProgramsData;

  factory NewProgramsData.fromJson(Map<String, dynamic> json) =>
      _$NewProgramsDataFromJson(json);
}

@freezed
abstract class NewPrograms with _$NewPrograms {
  @Implements(BaseSearchableProgramConnection)
  const factory NewPrograms({
    @required List<NewProgramItem> items,
    String nextToken,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "SearchableProgramConnection"')
        String typename,
  }) = _NewPrograms;

  factory NewPrograms.fromJson(Map<String, dynamic> json) =>
      _$NewProgramsFromJson(json);
}

@freezed
abstract class NewProgramItem with _$NewProgramItem implements BaseProgram {
  const factory NewProgramItem({
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
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "Program"')
        String typename,
  }) = _NewProgramItem;

  factory NewProgramItem.fromJson(Map<String, dynamic> json) =>
      _$NewProgramItemFromJson(json);
}

@freezed
abstract class NewProgramChannel with _$NewProgramChannel implements BaseChannel {
  const factory NewProgramChannel({
    @required String id,
    @required String name,
    @JsonKey(name: '__typename')
    @required
    @Assert('typename == "Channel"')
        String typename,
  }) = _NewProgramChannel;

  factory NewProgramChannel.fromJson(Map<String, dynamic> json) =>
      _$NewProgramChannelFromJson(json);
}
