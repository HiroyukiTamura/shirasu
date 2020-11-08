import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_program_data.freezed.dart';
part 'detail_program_data.g.dart';

@freezed
abstract class ProgramDetailData implements _$ProgramDetailData {

  factory ProgramDetailData({
    @required Viewer viewer,
    @required ProgramDetail program,
  }) = _ProgramDetailData;

  factory ProgramDetailData.fromJson(Map<String, dynamic> json) => _$ProgramDetailDataFromJson(json);

  const ProgramDetailData._();
}

@freezed
abstract class ProgramDetail with _$ProgramDetail {
  factory ProgramDetail({
    @required String id,
    @required String channelId,
    @required String tenantId,
    @required dynamic adminComment,
    @required dynamic adminCommentDisappearAt,
    @required DateTime broadcastAt,
    @required String detail,
    @required int mainTime,
    @required int previewTime,
    @required bool release,
    @required List<String> tags,
    @required String title,
    @required int totalPlayTime,
    @required dynamic viewerPlanType,
    @required dynamic isExtensionChargedToSubscribers,
    @required dynamic archivedAt,
    @required String releaseState,
    @required bool shouldArchive,
    @required List<dynamic> extensions,
    @required String typename,
    @required DetailPrgChannel channel,
    @required Handouts handouts,
    @required Handouts videos,
    @required List<OnetimePlan> onetimePlans,
  }) = _ProgramDetail;

  factory ProgramDetail.fromJson(Map<String, dynamic> json) => _$ProgramDetailFromJson(json);
}

@freezed
abstract class DetailPrgChannel with _$DetailPrgChannel {
  factory DetailPrgChannel({
    @required String id,
    @required String tenantId,
    @required String name,
    dynamic icon,
    @required String textOnPurchaseScreen,
    @required String typename,
  }) = _DetailPrgChannel;

  factory DetailPrgChannel.fromJson(Map<String, dynamic> json) => _$DetailPrgChannelFromJson(json);
}

@freezed
abstract class Handouts with _$Handouts {
  factory Handouts({
    @required List<DetailPrgItem> items,
    dynamic nextToken,
    @required String typename,
  }) = _Handouts;

  factory Handouts.fromJson(Map<String, dynamic> json) => _$HandoutsFromJson(json);
}

@freezed
abstract class DetailPrgItem with _$DetailPrgItem {
  factory DetailPrgItem({
    @required String id,
    @required String videoType,
    @required String mediaStatus,
    @required dynamic liveUrl,
    dynamic archiveUrl,
    @required String typename,
  }) = _DetailPrgItem;

  factory DetailPrgItem.fromJson(Map<String, dynamic> json) => _$DetailPrgItemFromJson(json);
}

@freezed
abstract class OnetimePlan with _$OnetimePlan {
  factory OnetimePlan({
    @required String id,
    @required String parentPlanType,
    @required String parentPlanId,
    @required String productType,
    @required String productId,
    @required String name,
    @required int amount,
    @required String currency,
    @required bool isPurchasable,
    dynamic viewerPurchasedPlan,
    @required String typename,
  }) = _OnetimePlan;

  factory OnetimePlan.fromJson(Map<String, dynamic> json) => _$OnetimePlanFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer {
  factory Viewer({
    @required String name,
    @required String icon,
    @required String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}
