import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/mixins/currency_mixin.dart';
import 'package:shirasu/model/mixins/media_status.dart';
import 'package:shirasu/model/mixins/plan_type.dart';
import 'package:shirasu/model/mixins/product_type.dart';
import 'package:shirasu/model/mixins/video_type.dart';
import 'package:shirasu/extension.dart';

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
abstract class ProgramDetail
    with ViewerPlanTypeMixin
    implements _$ProgramDetail, BaseProgram {
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
    @visibleForTesting String viewerPlanType,
    bool isExtensionChargedToSubscribers,
    DateTime archivedAt,
    @required String releaseState,
    @required bool shouldArchive,
    @required List<Extension> extensions,
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

  const ProgramDetail._();

  OnetimePlan get onetimePlaneMain {
    return onetimePlans.firstWhereOrNull(
            (it) => it.productTypeStrict == ProductType.PROGRAM);
  }
}

@freezed
abstract class DetailPrgChannel with _$DetailPrgChannel implements BaseChannel {
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
abstract class VideoHandouts
    with _$VideoHandouts
    implements BaseModelHandoutConnection {
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
abstract class Handouts with _$Handouts implements BaseHandouts {
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
abstract class Handout with _$Handout implements BaseHandout {
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
    with _$DetailPrgItem, VideoTypeMixin, MediaStatusMixin
    implements BaseVideo {
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

  bool get isFree => id.endsWith(':free');

  // todo converting VideoType
  String get urlAvailable {
    switch (videoTypeStrict) {
      case VideoType.LIVE:
        return liveUrl;
      case VideoType.ARCHIVED:
        return archiveUrl;
      default:
        throw UnsupportedError('unknown VideoType: $videoTypeStrict');
    }
  }
}

@freezed
abstract class OnetimePlan
    with ProductTypeMixin, ParentPlanTypeMixin, CurrencyMixin, _$OnetimePlan
    implements BaseOneTimePlan {
  const factory OnetimePlan({
    @required String id,
    @visibleForTesting String parentPlanType,
    String parentPlanId,
    @visibleForTesting @required String productType,
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
abstract class Extension with _$Extension implements BaseExtension {
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
abstract class Viewer with _$Viewer implements BaseViewer {
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
