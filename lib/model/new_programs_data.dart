
import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_programs_data.freezed.dart';
part 'new_programs_data.g.dart';

@freezed
abstract class NewProgramsData implements _$NewProgramsData {

  NewProgramsData._();

  factory NewProgramsData({
    @required NewPrograms newPrograms,
  }) = _NewProgramsData;

  factory NewProgramsData.fromJson(Map<String, dynamic> json) => _$NewProgramsDataFromJson(json);
}

@freezed
abstract class NewPrograms with _$NewPrograms {
  factory NewPrograms({
    @required List<Item> items,
    @required String nextToken,
    @JsonKey(name: '__typename') @required String typename,
  }) = _NewPrograms;

  factory NewPrograms.fromJson(Map<String, dynamic> json) => _$NewProgramsFromJson(json);
}

@freezed
abstract class Item with _$Item {
  factory Item({
    @required DateTime broadcastAt,
    @required String channelId,
    @required String id,
    @required int mainTime,
    @required DateTime releasedAt,
    @required String tenantId,
    @required String title,
    @required int totalPlayTime,
    String viewerPlanType,
    @required Channel channel,
    @JsonKey(name: '__typename') @required String typename,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  factory Channel({
    @required String id,
    @required String name,
    @JsonKey(name: '__typename') @required String typename,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);
}