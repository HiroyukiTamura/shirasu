import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/model/media_status.dart';
import 'package:shirasu/model/video_type.dart';

part 'detail_program_data.freezed.dart';

part 'detail_program_data.g.dart';

@freezed
abstract class ProgramDetailData with _$ProgramDetailData {
  const factory ProgramDetailData({
    @required Viewer viewer,
    @required ProgramDetail program,
  }) = _ProgramDetailData;

  factory ProgramDetailData.fromJson(Map<String, dynamic> json) =>
      _$ProgramDetailDataFromJson(json);
}

@freezed
abstract class ProgramDetail with _$ProgramDetail {
  @Implements(BaseProgram)
  const factory ProgramDetail({
    @required String id,
    @required String channelId,
    @required String tenantId,
    String adminComment,
    DateTime adminCommentDisappearAt,
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
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Program"')
        String typename,
    @required DetailPrgChannel channel,
    @required Handouts handouts,
    @required VideoHandouts videos,
    @required List<OnetimePlan> onetimePlans,
  }) = _ProgramDetail;

  factory ProgramDetail.fromJson(Map<String, dynamic> json) =>
      _$ProgramDetailFromJson(json);
}

@freezed
abstract class DetailPrgChannel with _$DetailPrgChannel {
  @Implements(BaseChannel)
  const factory DetailPrgChannel({
    @required String id,
    @required String tenantId,
    @required String name,
    dynamic icon,
    @required String textOnPurchaseScreen,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Channel"')
        String typename,
  }) = _DetailPrgChannel;

  factory DetailPrgChannel.fromJson(Map<String, dynamic> json) =>
      _$DetailPrgChannelFromJson(json);
}

@freezed
abstract class VideoHandouts with _$VideoHandouts {
  @Implements(BaseModelHandoutConnection)
  const factory VideoHandouts({
    @required List<DetailPrgItem> items,
    String nextToken,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "ModelHandoutConnection"')
        String typename,
  }) = _VideoHandouts;

  factory VideoHandouts.fromJson(Map<String, dynamic> json) =>
      _$VideoHandoutsFromJson(json);
}

@freezed
abstract class Handouts with _$Handouts {
  @Implements(BaseHandouts)
  const factory Handouts({
    @required List<Handout> items,
    String nextToken,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Handouts"')
        String typename,
  }) = _Handouts;

  factory Handouts.fromJson(Map<String, dynamic> json) =>
      _$HandoutsFromJson(json);
}

@freezed
abstract class Handout with _$Handout {
  @Implements(BaseHandout)
  const factory Handout({
    @required String id,
    @required String programId,
    String extensionId,
    @required String name,
    @required DateTime createdAt,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Handout"')
        String typename,
  }) = _Handout;

  factory Handout.fromJson(Map<String, dynamic> json) =>
      _$HandoutFromJson(json);
}

@freezed
abstract class DetailPrgItem
    with _$DetailPrgItem, VideoTypeGetter, MediaStatusGetter {
  @Implements(BaseVideo)
  const factory DetailPrgItem({
    @required String id,
    @required String videoType,
    String mediaStatus,
    String liveUrl,
    String archiveUrl,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Video"')
        String typename,
  }) = _DetailPrgItem;

  factory DetailPrgItem.fromJson(Map<String, dynamic> json) =>
      _$DetailPrgItemFromJson(json);

  const DetailPrgItem._();

  @override
  VideoType get videoTypeStrict => VideoTypeGetter.parse(videoType);

  @override
  MediaStatus get mediaStatusStrict => MediaStatusGetter.parse(mediaStatus);

  String get urlAvailable {
    switch (videoTypeStrict) {
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
  @Implements(BaseOneTimePlan)
  const factory OnetimePlan({
    @required String id,
    @required String parentPlanType,
    @required String parentPlanId,
    @required String productType,
    @required String productId,
    @required String name,
    @required int amount,
    @required String currency,
    @required bool isPurchasable,
    String viewerPurchasedPlan,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "OneTimePlan"')
        String typename,
  }) = _OnetimePlan;

  factory OnetimePlan.fromJson(Map<String, dynamic> json) =>
      _$OnetimePlanFromJson(json);
}

@freezed
abstract class Extension with _$Extension {
  @Implements(BaseExtension)
  const factory Extension({
    @required String id,
    @required int extensionTime,
    @required String oneTimePlanId,
    @required OnetimePlan oneTimePlan,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "LiveExtension"')
        String typename,
  }) = _Extension;

  factory Extension.fromJson(Map<String, dynamic> json) =>
      _$ExtensionFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer {
  @Implements(BaseViewer)
  const factory Viewer({
    @required String name,
    @required String icon,
    @required
    @JsonKey(name: '__typename')
    @Assert('typename == "Viewer"')
        String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}
