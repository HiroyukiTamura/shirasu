import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/extension.dart';

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
abstract class NewPrograms with _$NewPrograms implements BaseSearchableProgramConnection {

  @Assert('typename == "SearchableProgramConnection"')
  const factory NewPrograms({
    @required @JsonKey(name: 'items') @protected List<NewProgramItem> rawItems,
    String nextToken,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _NewPrograms;

  factory NewPrograms.fromJson(Map<String, dynamic> json) =>
      _$NewProgramsFromJson(json);

  const NewPrograms._();

  @override
  UnmodifiableListView<NewProgramItem> get items => rawItems.toUnmodifiable();
}

@freezed
abstract class NewProgramItem with ViewerPlanTypeMixin implements _$NewProgramItem, BaseProgram {

  @Assert('typename == "Program"')
  const factory NewProgramItem({
    @required DateTime broadcastAt,
    @required String channelId,
    @required String id,
    @required int mainTime,
    @required DateTime releasedAt,
    @required String tenantId,
    @required String title,
    @required int totalPlayTime,
    /// use [viewerPlanTypeStrict]
    @protected
    String viewerPlanType,
    @required NewProgramChannel channel,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _NewProgramItem;

  factory NewProgramItem.fromJson(Map<String, dynamic> json) =>
      _$NewProgramItemFromJson(json);

  const NewProgramItem._();
}

@freezed
abstract class NewProgramChannel with _$NewProgramChannel implements BaseChannel {

  @Assert('typename == "Channel"')
  const factory NewProgramChannel({
    @required String id,
    @required String name,
    @JsonKey(name: '__typename')
    @required
        String typename,
  }) = _NewProgramChannel;

  factory NewProgramChannel.fromJson(Map<String, dynamic> json) =>
      _$NewProgramChannelFromJson(json);
}
