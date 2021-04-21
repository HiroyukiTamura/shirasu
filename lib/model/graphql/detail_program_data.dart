// ignore_for_file: always_put_required_named_parameters_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/mixins/currency_mixin.dart';
import 'package:shirasu/model/graphql/mixins/media_status.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/model/graphql/mixins/product_type.dart';
import 'package:shirasu/model/graphql/mixins/video_type.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/extension.dart';
import 'package:shirasu/model/graphql/channel_data.dart';

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

/// if [previewPrgItem] == null then [previewTime] == 0
@freezed
abstract class ProgramDetail
    with ViewerPlanTypeMixin
    implements _$ProgramDetail, BaseProgram {
  @Assert('typename == "Program"')
  @Assert('0 <= totalPlayTime')
  @Assert('0 <= mainTime')
  @Assert('0 <= previewTime')
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

    /// use [viewerPlanTypeStrict]
    @protected String viewerPlanType,
    bool isExtensionChargedToSubscribers,
    DateTime archivedAt,
    @required String releaseState,
    @required bool shouldArchive,
    @required
    @protected
    @JsonKey(name: 'extensions')
        List<Extension> rawExtensions,
    @required DetailPrgChannel channel,
    @required Handouts handouts,
    @required VideoHandouts videos,
    @required
    @protected
    @JsonKey(name: 'onetimePlans')
        List<OnetimePlan> rawOnetimePlans,
    @required Reviews reviews,

    ///todo impalement
    dynamic myReview,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ProgramDetail;

  factory ProgramDetail.fromJson(Map<String, dynamic> json) =>
      _$ProgramDetailFromJson(json);

  const ProgramDetail._();

  UnmodifiableListView<String> get tags =>
      IteratableX(rawTags).toUnmodifiable();

  UnmodifiableListView<Extension> get extensions =>
      IteratableX(rawExtensions).toUnmodifiable();

  UnmodifiableListView<OnetimePlan> get onetimePlans =>
      IteratableX(rawOnetimePlans).toUnmodifiable();

  OnetimePlan get onetimePlanMain => onetimePlans.firstOrNullWhere(
        (it) => it.productTypeStrict == ProductType.PROGRAM,
      );

  bool get canPreview => previewTime != 0 && previewPrgItem != null;

  bool get isPurchased => viewerPlanTypeStrict != null;

  DetailPrgItem get itemToPlay {
    if (archivedAt?.isBefore(DateTime.now()) != true) return nowLivePrgItem;

    final lastExtensionIndex =
        extensions.lastIndexWhere((it) => isExtensionAvailable(it.id));
    if (lastExtensionIndex != -1)
      return _lastArchivedExtensionPrgItem(lastExtensionIndex);

    final isMainVideoAvailable =
        onetimePlanMain?.viewerPurchasedPlan?.isActive == true ||
            (onetimePlanMain?.parentPlanTypeStrict ==
                    const PlanType.subscription() &&
                viewerPlanTypeStrict == const PlanType.subscription());
    return isMainVideoAvailable ? mainPrgItem : null;
  }

  DetailPrgItem _lastArchivedExtensionPrgItem(int extensionIndex) {
    final item = videos.items.firstOrNullWhere(
        (it) => it.isExtension && it.extensionIndex == extensionIndex);
    if (item == null) return null;
    if (item.videoTypeStrict == const VideoType.archived()) return item;
    // if the item is not archived yet, return most near item
    return videos.items.take(extensionIndex + 1).lastOrNullWhere(
        (it) => it.videoTypeStrict == const VideoType.archived());
  }

  DetailPrgItem get nowLivePrgItem => videos.items.firstOrNullWhere((it) =>
      it.videoTypeStrict == const VideoType.live() &&
      it.mediaStatusStrict != MediaStatus.ENDED);

  DetailPrgItem get previewPrgItem => videos.items.firstOrNullWhere(
      (it) => it.isFree && it.videoTypeStrict == const VideoType.archived());

  DetailPrgItem get mainPrgItem => videos.items.firstOrNullWhere(
      (it) => it.isMain && it.videoTypeStrict == const VideoType.archived());

  bool get _isAllExtensionAvailableAsSubscriber =>
      viewerPlanTypeStrict == const PlanType.subscription() &&
      isExtensionChargedToSubscribers != true;

  /// if [extensionId] is invalid, returns false
  bool isExtensionAvailable(String extensionId) =>
      extensions
              .firstOrNullWhere((it) => it.id == extensionId)
              ?.oneTimePlan
              ?.viewerPurchasedPlan
              ?.isActive ==
          true ||
      _isAllExtensionAvailableAsSubscriber;

  bool get isInVideoArchiving =>
      videos.items
          .where((it) =>
              it.videoTypeStrict == const VideoType.live() &&
              it.mediaStatusStrict == MediaStatus.ENDED)
          .isNotEmpty &&
      archivedAt == null &&
      shouldArchive;
}

@freezed
abstract class DetailPrgChannel with _$DetailPrgChannel implements BaseChannel {
  @Assert('typename == "Channel"')
  const factory DetailPrgChannel({
    @required String id,
    @required String tenantId,
    @required String name,
    @required String textOnPurchaseScreen,
    @required @JsonKey(name: '__typename') String typename,
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
    @required @JsonKey(name: '__typename') String typename,
  }) = _VideoHandouts;

  factory VideoHandouts.fromJson(Map<String, dynamic> json) =>
      _$VideoHandoutsFromJson(json);

  const VideoHandouts._();

  UnmodifiableListView<DetailPrgItem> get items =>
      IteratableX(rawItems).toUnmodifiable();
}

@freezed
abstract class Handouts with _$Handouts implements BaseHandouts {
  @Assert('typename == "ModelHandoutConnection"')
  const factory Handouts({
    @required @JsonKey(name: 'items') @protected List<Handout> rawItems,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Handouts;

  factory Handouts.fromJson(Map<String, dynamic> json) =>
      _$HandoutsFromJson(json);

  const Handouts._();

  UnmodifiableListView<Handout> get items =>
      IteratableX(rawItems).toUnmodifiable();
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
    @required @JsonKey(name: '__typename') String typename,
  }) = _Handout;

  factory Handout.fromJson(Map<String, dynamic> json) =>
      _$HandoutFromJson(json);
}

@freezed
abstract class DetailPrgItem
    with _$DetailPrgItem, VideoTypeMixin, MediaStatusMixin
    implements BaseVideo {
  @Assert('typename == "Video"')
  const factory DetailPrgItem({
    @required String id,
    @Deprecated('use [videoTypeStrict]') @required String videoType,
    String mediaStatus,
    String liveUrl,
    String archiveUrl,
    @required @JsonKey(name: '__typename') String typename,
  }) = _DetailPrgItem;

  factory DetailPrgItem.fromJson(Map<String, dynamic> json) =>
      _$DetailPrgItemFromJson(json);

  const DetailPrgItem._();

  bool get isFree => id.endsWith(':free');

  bool get isExtension => RegExp(r':ext\.\d+$').hasMatch(id);

  bool get isMain => id.endsWith(':main');

  /// must ensure [isExtension] == true
  int get extensionIndex {
    assert(isExtension);
    return int.parse(RegExp(r'\d+$').stringMatch(id));
  }

  String get urlAvailable => videoTypeStrict.when(
        archived: () => archiveUrl,
        live: () => liveUrl,
      );
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
    PurchasedPlan viewerPurchasedPlan,
    @required @JsonKey(name: '__typename') String typename,
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
    @required @JsonKey(name: '__typename') String typename,
  }) = _Extension;

  factory Extension.fromJson(Map<String, dynamic> json) =>
      _$ExtensionFromJson(json);
}

@freezed
abstract class Reviews with _$Reviews implements BaseReviewConnection {
  @Assert('typename == "ReviewConnection"')
  const factory Reviews({
    @protected @required @JsonKey(name: 'items') List<ReviewsItem> rawItems,
    String nextToken,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Reviews;

  factory Reviews.fromJson(Map<String, dynamic> json) =>
      _$ReviewsFromJson(json);

  const Reviews._();
}

@freezed
abstract class ReviewsItem with _$ReviewsItem implements BaseReview {
  @Assert('typename == "Review"')
  const factory ReviewsItem({
    @required String id,
    @required String body,
    @required DateTime createdAt,
    @required Reviewer user,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ReviewsItem;

  factory ReviewsItem.fromJson(Map<String, dynamic> json) =>
      _$ReviewsItemFromJson(json);
}

@freezed
abstract class Reviewer with _$Reviewer implements BaseUser {
  @Assert('typename == "User"')
  const factory Reviewer({
    @required String id,
    @required String name,
    @required String icon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Reviewer;

  factory Reviewer.fromJson(Map<String, dynamic> json) =>
      _$ReviewerFromJson(json);
}

@freezed
abstract class Viewer with _$Viewer implements BaseViewer {
  @Assert('typename == "Viewer"')
  const factory Viewer({
    @required String name,
    @required String icon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _Viewer;

  factory Viewer.fromJson(Map<String, dynamic> json) => _$ViewerFromJson(json);
}
