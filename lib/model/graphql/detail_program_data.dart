import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/mixins/currency_mixin.dart';
import 'package:shirasu/model/graphql/mixins/media_status.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/model/graphql/mixins/product_type.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:dartx/dartx.dart';
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
  @Assert('typename == "Program"')
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
    @required @JsonKey(name: 'tags') @protected List<String> rawTags,
    @required String title,
    @required int totalPlayTime,
    @Deprecated('use [viewerPlanType]') String viewerPlanType,
    bool isExtensionChargedToSubscribers,
    DateTime archivedAt,
    @required String releaseState,
    @required bool shouldArchive,
    @required @protected @JsonKey(name: 'extensions') List<Extension> rawExtensions,
    @required DetailPrgChannel channel,
    @required Handouts handouts,
    @required VideoHandouts videos,
    @required @protected @JsonKey(name: 'onetimePlans') List<OnetimePlan> rawOnetimePlans,
    @required
    @JsonKey(name: '__typename')
    String typename,
  }) = _ProgramDetail;

  factory ProgramDetail.fromJson(Map<String, dynamic> json) =>
      _$ProgramDetailFromJson(json);

  const ProgramDetail._();

  UnmodifiableListView<String> get tags => IteratableX(rawTags).toUnmodifiable();

  UnmodifiableListView<Extension> get extensions => IteratableX(rawExtensions).toUnmodifiable();

  UnmodifiableListView<OnetimePlan> get onetimePlans => IteratableX(rawOnetimePlans).toUnmodifiable();

  OnetimePlan get onetimePlanMain => onetimePlans.firstOrNullWhere(
        (it) => it.productTypeStrict == ProductType.PROGRAM,
      );

  DetailPrgItem get lastArchivedExtensionPrgItem => videos.items
      .where((it) => it.isExtension && it.videoTypeStrict == VideoType.ARCHIVED)
      .sortedBy((it) => it.extensionIndex)
      .lastOrNull;

  DetailPrgItem get nowLivePrgItem => videos.items.firstOrNullWhere((it) =>
      it.videoTypeStrict == VideoType.LIVE &&
      it.mediaStatusStrict != MediaStatus.ENDED);

  DetailPrgItem get previewPrgItem => videos.items.firstOrNullWhere(
      (it) => it.isFree && it.videoTypeStrict == VideoType.ARCHIVED);

  // todo detect logic for one time plan user who don't purchased extension
  bool get isAllExtensionAvailable =>
      viewerPlanTypeStrict == PlanType.SUBSCRIPTION && isExtensionChargedToSubscribers != true;
}

@freezed
abstract class DetailPrgChannel with _$DetailPrgChannel implements BaseChannel {
  @Assert('typename == "Channel"')
  const factory DetailPrgChannel({
    @required String id,
    @required String tenantId,
    @required String name,
    dynamic icon,
    @required String textOnPurchaseScreen,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _DetailPrgChannel;

  factory DetailPrgChannel.fromJson(Map<String, dynamic> json) =>
      _$DetailPrgChannelFromJson(json);
}

@freezed
abstract class VideoHandouts
    with _$VideoHandouts
    implements BaseModelHandoutConnection {
  @Assert('typename == "ModelVideoConnection"')
  const factory VideoHandouts({
    @required @JsonKey(name: 'items') @protected List<DetailPrgItem> rawItems,
    String nextToken,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _VideoHandouts;

  factory VideoHandouts.fromJson(Map<String, dynamic> json) =>
      _$VideoHandoutsFromJson(json);

  const VideoHandouts._();

  UnmodifiableListView<DetailPrgItem> get items => IteratableX(rawItems).toUnmodifiable();
}

@freezed
abstract class Handouts with _$Handouts implements BaseHandouts {
  @Assert('typename == "ModelHandoutConnection"')
  const factory Handouts({
    @required @JsonKey(name: 'items') @protected List<Handout> rawItems,
    String nextToken,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _Handouts;

  factory Handouts.fromJson(Map<String, dynamic> json) =>
      _$HandoutsFromJson(json);

  const Handouts._();

  UnmodifiableListView<Handout> get items => IteratableX(rawItems).toUnmodifiable();
}

@freezed
abstract class Handout with _$Handout implements BaseHandout {
  @Assert('typename == "Handout"')
  const factory Handout({
    @required String id,
    @required String programId,
    String extensionId,
    @required String name,
    @required DateTime createdAt,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _Handout;

  factory Handout.fromJson(Map<String, dynamic> json) =>
      _$HandoutFromJson(json);
}

/// use [videoTypeStrict] instead of [videoType]
@freezed
abstract class DetailPrgItem
    with _$DetailPrgItem, VideoTypeMixin, MediaStatusMixin
    implements BaseVideo {
  @Assert('typename == "Video"')
  const factory DetailPrgItem({
    @required String id,
    @visibleForOverriding
    @required String videoType,
    String mediaStatus,
    String liveUrl,
    String archiveUrl,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _DetailPrgItem;

  factory DetailPrgItem.fromJson(Map<String, dynamic> json) =>
      _$DetailPrgItemFromJson(json);

  const DetailPrgItem._();

  bool get isFree => id.endsWith(':free');

  bool get isExtension => RegExp(r':ext\.\d+$').hasMatch(id);

  /// must ensure [isExtension] == true
  int get extensionIndex {
    assert(isExtension);
    return int.parse(RegExp(r'\d+$').stringMatch(id));
  }

  // todo convert to freezed class
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
    with ProductTypeMixin, ParentPlanTypeMixin, AmountMixin
    implements _$OnetimePlan, BaseOneTimePlan {
  @Assert('typename == "OneTimePlan"')
  const factory OnetimePlan({
    @required String id,
    @visibleForOverriding String parentPlanType,
    String parentPlanId,
    @visibleForOverriding @required String productType,
    @required String productId,
    @required String name,
    @required int amount,
    @required String currency,
    @required bool isPurchasable,
    String viewerPurchasedPlan,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _OnetimePlan;

  factory OnetimePlan.fromJson(Map<String, dynamic> json) =>
      _$OnetimePlanFromJson(json);

  const OnetimePlan._();
}

@freezed
abstract class Extension with _$Extension implements BaseExtension {
  @Assert('typename == "LiveExtension"')
  const factory Extension({
    @required String id,
    @required int extensionTime,
    @required String oneTimePlanId,
    @required OnetimePlan oneTimePlan,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _Extension;

  factory Extension.fromJson(Map<String, dynamic> json) =>
      _$ExtensionFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer implements BaseViewer {
  @Assert('typename == "Viewer"')
  const factory Viewer({
    @required String name,
    @required String icon,
    @required
    @JsonKey(name: '__typename')
        String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}
