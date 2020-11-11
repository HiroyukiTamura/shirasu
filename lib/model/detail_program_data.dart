import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';

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
    String adminComment,
    int adminCommentDisappearAt,
    @required DateTime broadcastAt,
    @required String detail,
    @required int mainTime,
    @required int previewTime,
    @required bool release,
    @required List<String> tags,
    @required String title,
    @required int totalPlayTime,
    String viewerPlanType,
    bool isExtensionChargedToSubscribers,
    DateTime archivedAt,
    @required String releaseState,
    @required bool shouldArchive,
    @required List<dynamic> extensions,
    @required @JsonKey(name: '__typename') String typename,
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
    @required @JsonKey(name: '__typename') String typename,
  }) = _DetailPrgChannel;

  factory DetailPrgChannel.fromJson(Map<String, dynamic> json) => _$DetailPrgChannelFromJson(json);
}

@freezed
abstract class Handouts with _$Handouts {
  factory Handouts({
    @required List<DetailPrgItem> items,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Handouts;

  factory Handouts.fromJson(Map<String, dynamic> json) => _$HandoutsFromJson(json);
}

@freezed
abstract class DetailPrgItem with _$DetailPrgItem, VideoTypeGetter, MediaStatusGetter {
  factory DetailPrgItem({
    @required String id,
    @required String videoType,
    @required String mediaStatus,
    String liveUrl,
    String archiveUrl,
    @required @JsonKey(name: '__typename') String typename,
  }) = _DetailPrgItem;

  factory DetailPrgItem.fromJson(Map<String, dynamic> json) => _$DetailPrgItemFromJson(json);

  const DetailPrgItem._();

  @override
  VideoType get videoTypeStrict => VideoTypeGetter.parse(videoType);

  @override
  MediaStatus get mediaStatusStrict => MediaStatusGetter.parse(mediaStatus);

  String get urlAvailable {
    switch(videoTypeStrict) {
      case VideoType.LIVE:
        return liveUrl;
      case VideoType.ARCHIVED:
        return archiveUrl;
      default:
        throw UnimplementedError('unknown VideoType: $videoTypeStrict');
    }
  }
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
    @required @JsonKey(name: '__typename') String typename,
  }) = _OnetimePlan;

  factory OnetimePlan.fromJson(Map<String, dynamic> json) => _$OnetimePlanFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer {
  factory Viewer({
    @required String name,
    @required String icon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}
