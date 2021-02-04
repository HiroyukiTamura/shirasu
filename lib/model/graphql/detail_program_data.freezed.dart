// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_program_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProgramDetailData _$ProgramDetailDataFromJson(Map<String, dynamic> json) {
  return _ProgramDetailData.fromJson(json);
}

/// @nodoc
class _$ProgramDetailDataTearOff {
  const _$ProgramDetailDataTearOff();

// ignore: unused_element
  _ProgramDetailData call(
      {@required Viewer viewer, @required ProgramDetail program}) {
    return _ProgramDetailData(
      viewer: viewer,
      program: program,
    );
  }

// ignore: unused_element
  ProgramDetailData fromJson(Map<String, Object> json) {
    return ProgramDetailData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProgramDetailData = _$ProgramDetailDataTearOff();

/// @nodoc
mixin _$ProgramDetailData {
  Viewer get viewer;
  ProgramDetail get program;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramDetailDataCopyWith<ProgramDetailData> get copyWith;
}

/// @nodoc
abstract class $ProgramDetailDataCopyWith<$Res> {
  factory $ProgramDetailDataCopyWith(
          ProgramDetailData value, $Res Function(ProgramDetailData) then) =
      _$ProgramDetailDataCopyWithImpl<$Res>;
  $Res call({Viewer viewer, ProgramDetail program});

  $ViewerCopyWith<$Res> get viewer;
  $ProgramDetailCopyWith<$Res> get program;
}

/// @nodoc
class _$ProgramDetailDataCopyWithImpl<$Res>
    implements $ProgramDetailDataCopyWith<$Res> {
  _$ProgramDetailDataCopyWithImpl(this._value, this._then);

  final ProgramDetailData _value;
  // ignore: unused_field
  final $Res Function(ProgramDetailData) _then;

  @override
  $Res call({
    Object viewer = freezed,
    Object program = freezed,
  }) {
    return _then(_value.copyWith(
      viewer: viewer == freezed ? _value.viewer : viewer as Viewer,
      program: program == freezed ? _value.program : program as ProgramDetail,
    ));
  }

  @override
  $ViewerCopyWith<$Res> get viewer {
    if (_value.viewer == null) {
      return null;
    }
    return $ViewerCopyWith<$Res>(_value.viewer, (value) {
      return _then(_value.copyWith(viewer: value));
    });
  }

  @override
  $ProgramDetailCopyWith<$Res> get program {
    if (_value.program == null) {
      return null;
    }
    return $ProgramDetailCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }
}

/// @nodoc
abstract class _$ProgramDetailDataCopyWith<$Res>
    implements $ProgramDetailDataCopyWith<$Res> {
  factory _$ProgramDetailDataCopyWith(
          _ProgramDetailData value, $Res Function(_ProgramDetailData) then) =
      __$ProgramDetailDataCopyWithImpl<$Res>;
  @override
  $Res call({Viewer viewer, ProgramDetail program});

  @override
  $ViewerCopyWith<$Res> get viewer;
  @override
  $ProgramDetailCopyWith<$Res> get program;
}

/// @nodoc
class __$ProgramDetailDataCopyWithImpl<$Res>
    extends _$ProgramDetailDataCopyWithImpl<$Res>
    implements _$ProgramDetailDataCopyWith<$Res> {
  __$ProgramDetailDataCopyWithImpl(
      _ProgramDetailData _value, $Res Function(_ProgramDetailData) _then)
      : super(_value, (v) => _then(v as _ProgramDetailData));

  @override
  _ProgramDetailData get _value => super._value as _ProgramDetailData;

  @override
  $Res call({
    Object viewer = freezed,
    Object program = freezed,
  }) {
    return _then(_ProgramDetailData(
      viewer: viewer == freezed ? _value.viewer : viewer as Viewer,
      program: program == freezed ? _value.program : program as ProgramDetail,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramDetailData implements _ProgramDetailData {
  const _$_ProgramDetailData({@required this.viewer, @required this.program})
      : assert(viewer != null),
        assert(program != null);

  factory _$_ProgramDetailData.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramDetailDataFromJson(json);

  @override
  final Viewer viewer;
  @override
  final ProgramDetail program;

  @override
  String toString() {
    return 'ProgramDetailData(viewer: $viewer, program: $program)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramDetailData &&
            (identical(other.viewer, viewer) ||
                const DeepCollectionEquality().equals(other.viewer, viewer)) &&
            (identical(other.program, program) ||
                const DeepCollectionEquality().equals(other.program, program)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(viewer) ^
      const DeepCollectionEquality().hash(program);

  @JsonKey(ignore: true)
  @override
  _$ProgramDetailDataCopyWith<_ProgramDetailData> get copyWith =>
      __$ProgramDetailDataCopyWithImpl<_ProgramDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramDetailDataToJson(this);
  }
}

abstract class _ProgramDetailData implements ProgramDetailData {
  const factory _ProgramDetailData(
      {@required Viewer viewer,
      @required ProgramDetail program}) = _$_ProgramDetailData;

  factory _ProgramDetailData.fromJson(Map<String, dynamic> json) =
      _$_ProgramDetailData.fromJson;

  @override
  Viewer get viewer;
  @override
  ProgramDetail get program;
  @override
  @JsonKey(ignore: true)
  _$ProgramDetailDataCopyWith<_ProgramDetailData> get copyWith;
}

ProgramDetail _$ProgramDetailFromJson(Map<String, dynamic> json) {
  return _ProgramDetail.fromJson(json);
}

/// @nodoc
class _$ProgramDetailTearOff {
  const _$ProgramDetailTearOff();

// ignore: unused_element
  _ProgramDetail call(
      {@required
          String id,
      @required
          String channelId,
      @required
          String tenantId,
      String adminComment,
      DateTime adminCommentDisappearAt,
      @required
          DateTime broadcastAt,
      @required
          String detail,
      @required
          int mainTime,
      @required
          int previewTime,
      @required
          bool release,
      @required
      @JsonKey(name: 'tags')
      @protected
          List<String> rawTags,
      @required
          String title,
      @required
          int totalPlayTime,
      @Deprecated('use [viewerPlanType]')
          String viewerPlanType,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      @required
          String releaseState,
      @required
          bool shouldArchive,
      @required
      @protected
      @JsonKey(name: 'extensions')
          List<Extension> rawExtensions,
      @required
          DetailPrgChannel channel,
      @required
          Handouts handouts,
      @required
          VideoHandouts videos,
      @required
      @protected
      @JsonKey(name: 'onetimePlans')
          List<OnetimePlan> rawOnetimePlans,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _ProgramDetail(
      id: id,
      channelId: channelId,
      tenantId: tenantId,
      adminComment: adminComment,
      adminCommentDisappearAt: adminCommentDisappearAt,
      broadcastAt: broadcastAt,
      detail: detail,
      mainTime: mainTime,
      previewTime: previewTime,
      release: release,
      rawTags: rawTags,
      title: title,
      totalPlayTime: totalPlayTime,
      viewerPlanType: viewerPlanType,
      isExtensionChargedToSubscribers: isExtensionChargedToSubscribers,
      archivedAt: archivedAt,
      releaseState: releaseState,
      shouldArchive: shouldArchive,
      rawExtensions: rawExtensions,
      channel: channel,
      handouts: handouts,
      videos: videos,
      rawOnetimePlans: rawOnetimePlans,
      typename: typename,
    );
  }

// ignore: unused_element
  ProgramDetail fromJson(Map<String, Object> json) {
    return ProgramDetail.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProgramDetail = _$ProgramDetailTearOff();

/// @nodoc
mixin _$ProgramDetail {
  String get id;
  String get channelId;
  String get tenantId;
  String get adminComment;
  DateTime get adminCommentDisappearAt;
  DateTime get broadcastAt;
  String get detail;
  int get mainTime;
  int get previewTime;
  bool get release;
  @JsonKey(name: 'tags')
  @protected
  List<String> get rawTags;
  String get title;
  int get totalPlayTime;
  @Deprecated('use [viewerPlanType]')
  String get viewerPlanType;
  bool get isExtensionChargedToSubscribers;
  DateTime get archivedAt;
  String get releaseState;
  bool get shouldArchive;
  @protected
  @JsonKey(name: 'extensions')
  List<Extension> get rawExtensions;
  DetailPrgChannel get channel;
  Handouts get handouts;
  VideoHandouts get videos;
  @protected
  @JsonKey(name: 'onetimePlans')
  List<OnetimePlan> get rawOnetimePlans;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramDetailCopyWith<ProgramDetail> get copyWith;
}

/// @nodoc
abstract class $ProgramDetailCopyWith<$Res> {
  factory $ProgramDetailCopyWith(
          ProgramDetail value, $Res Function(ProgramDetail) then) =
      _$ProgramDetailCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String channelId,
      String tenantId,
      String adminComment,
      DateTime adminCommentDisappearAt,
      DateTime broadcastAt,
      String detail,
      int mainTime,
      int previewTime,
      bool release,
      @JsonKey(name: 'tags')
      @protected
          List<String> rawTags,
      String title,
      int totalPlayTime,
      @Deprecated('use [viewerPlanType]')
          String viewerPlanType,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      String releaseState,
      bool shouldArchive,
      @protected
      @JsonKey(name: 'extensions')
          List<Extension> rawExtensions,
      DetailPrgChannel channel,
      Handouts handouts,
      VideoHandouts videos,
      @protected
      @JsonKey(name: 'onetimePlans')
          List<OnetimePlan> rawOnetimePlans,
      @JsonKey(name: '__typename')
          String typename});

  $DetailPrgChannelCopyWith<$Res> get channel;
  $HandoutsCopyWith<$Res> get handouts;
  $VideoHandoutsCopyWith<$Res> get videos;
}

/// @nodoc
class _$ProgramDetailCopyWithImpl<$Res>
    implements $ProgramDetailCopyWith<$Res> {
  _$ProgramDetailCopyWithImpl(this._value, this._then);

  final ProgramDetail _value;
  // ignore: unused_field
  final $Res Function(ProgramDetail) _then;

  @override
  $Res call({
    Object id = freezed,
    Object channelId = freezed,
    Object tenantId = freezed,
    Object adminComment = freezed,
    Object adminCommentDisappearAt = freezed,
    Object broadcastAt = freezed,
    Object detail = freezed,
    Object mainTime = freezed,
    Object previewTime = freezed,
    Object release = freezed,
    Object rawTags = freezed,
    Object title = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object isExtensionChargedToSubscribers = freezed,
    Object archivedAt = freezed,
    Object releaseState = freezed,
    Object shouldArchive = freezed,
    Object rawExtensions = freezed,
    Object channel = freezed,
    Object handouts = freezed,
    Object videos = freezed,
    Object rawOnetimePlans = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      adminComment: adminComment == freezed
          ? _value.adminComment
          : adminComment as String,
      adminCommentDisappearAt: adminCommentDisappearAt == freezed
          ? _value.adminCommentDisappearAt
          : adminCommentDisappearAt as DateTime,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      detail: detail == freezed ? _value.detail : detail as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      previewTime:
          previewTime == freezed ? _value.previewTime : previewTime as int,
      release: release == freezed ? _value.release : release as bool,
      rawTags: rawTags == freezed ? _value.rawTags : rawTags as List<String>,
      title: title == freezed ? _value.title : title as String,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as int,
      viewerPlanType: viewerPlanType == freezed
          ? _value.viewerPlanType
          : viewerPlanType as String,
      isExtensionChargedToSubscribers:
          isExtensionChargedToSubscribers == freezed
              ? _value.isExtensionChargedToSubscribers
              : isExtensionChargedToSubscribers as bool,
      archivedAt:
          archivedAt == freezed ? _value.archivedAt : archivedAt as DateTime,
      releaseState: releaseState == freezed
          ? _value.releaseState
          : releaseState as String,
      shouldArchive: shouldArchive == freezed
          ? _value.shouldArchive
          : shouldArchive as bool,
      rawExtensions: rawExtensions == freezed
          ? _value.rawExtensions
          : rawExtensions as List<Extension>,
      channel:
          channel == freezed ? _value.channel : channel as DetailPrgChannel,
      handouts: handouts == freezed ? _value.handouts : handouts as Handouts,
      videos: videos == freezed ? _value.videos : videos as VideoHandouts,
      rawOnetimePlans: rawOnetimePlans == freezed
          ? _value.rawOnetimePlans
          : rawOnetimePlans as List<OnetimePlan>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $DetailPrgChannelCopyWith<$Res> get channel {
    if (_value.channel == null) {
      return null;
    }
    return $DetailPrgChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value));
    });
  }

  @override
  $HandoutsCopyWith<$Res> get handouts {
    if (_value.handouts == null) {
      return null;
    }
    return $HandoutsCopyWith<$Res>(_value.handouts, (value) {
      return _then(_value.copyWith(handouts: value));
    });
  }

  @override
  $VideoHandoutsCopyWith<$Res> get videos {
    if (_value.videos == null) {
      return null;
    }
    return $VideoHandoutsCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value));
    });
  }
}

/// @nodoc
abstract class _$ProgramDetailCopyWith<$Res>
    implements $ProgramDetailCopyWith<$Res> {
  factory _$ProgramDetailCopyWith(
          _ProgramDetail value, $Res Function(_ProgramDetail) then) =
      __$ProgramDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String channelId,
      String tenantId,
      String adminComment,
      DateTime adminCommentDisappearAt,
      DateTime broadcastAt,
      String detail,
      int mainTime,
      int previewTime,
      bool release,
      @JsonKey(name: 'tags')
      @protected
          List<String> rawTags,
      String title,
      int totalPlayTime,
      @Deprecated('use [viewerPlanType]')
          String viewerPlanType,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      String releaseState,
      bool shouldArchive,
      @protected
      @JsonKey(name: 'extensions')
          List<Extension> rawExtensions,
      DetailPrgChannel channel,
      Handouts handouts,
      VideoHandouts videos,
      @protected
      @JsonKey(name: 'onetimePlans')
          List<OnetimePlan> rawOnetimePlans,
      @JsonKey(name: '__typename')
          String typename});

  @override
  $DetailPrgChannelCopyWith<$Res> get channel;
  @override
  $HandoutsCopyWith<$Res> get handouts;
  @override
  $VideoHandoutsCopyWith<$Res> get videos;
}

/// @nodoc
class __$ProgramDetailCopyWithImpl<$Res>
    extends _$ProgramDetailCopyWithImpl<$Res>
    implements _$ProgramDetailCopyWith<$Res> {
  __$ProgramDetailCopyWithImpl(
      _ProgramDetail _value, $Res Function(_ProgramDetail) _then)
      : super(_value, (v) => _then(v as _ProgramDetail));

  @override
  _ProgramDetail get _value => super._value as _ProgramDetail;

  @override
  $Res call({
    Object id = freezed,
    Object channelId = freezed,
    Object tenantId = freezed,
    Object adminComment = freezed,
    Object adminCommentDisappearAt = freezed,
    Object broadcastAt = freezed,
    Object detail = freezed,
    Object mainTime = freezed,
    Object previewTime = freezed,
    Object release = freezed,
    Object rawTags = freezed,
    Object title = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object isExtensionChargedToSubscribers = freezed,
    Object archivedAt = freezed,
    Object releaseState = freezed,
    Object shouldArchive = freezed,
    Object rawExtensions = freezed,
    Object channel = freezed,
    Object handouts = freezed,
    Object videos = freezed,
    Object rawOnetimePlans = freezed,
    Object typename = freezed,
  }) {
    return _then(_ProgramDetail(
      id: id == freezed ? _value.id : id as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      adminComment: adminComment == freezed
          ? _value.adminComment
          : adminComment as String,
      adminCommentDisappearAt: adminCommentDisappearAt == freezed
          ? _value.adminCommentDisappearAt
          : adminCommentDisappearAt as DateTime,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      detail: detail == freezed ? _value.detail : detail as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      previewTime:
          previewTime == freezed ? _value.previewTime : previewTime as int,
      release: release == freezed ? _value.release : release as bool,
      rawTags: rawTags == freezed ? _value.rawTags : rawTags as List<String>,
      title: title == freezed ? _value.title : title as String,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as int,
      viewerPlanType: viewerPlanType == freezed
          ? _value.viewerPlanType
          : viewerPlanType as String,
      isExtensionChargedToSubscribers:
          isExtensionChargedToSubscribers == freezed
              ? _value.isExtensionChargedToSubscribers
              : isExtensionChargedToSubscribers as bool,
      archivedAt:
          archivedAt == freezed ? _value.archivedAt : archivedAt as DateTime,
      releaseState: releaseState == freezed
          ? _value.releaseState
          : releaseState as String,
      shouldArchive: shouldArchive == freezed
          ? _value.shouldArchive
          : shouldArchive as bool,
      rawExtensions: rawExtensions == freezed
          ? _value.rawExtensions
          : rawExtensions as List<Extension>,
      channel:
          channel == freezed ? _value.channel : channel as DetailPrgChannel,
      handouts: handouts == freezed ? _value.handouts : handouts as Handouts,
      videos: videos == freezed ? _value.videos : videos as VideoHandouts,
      rawOnetimePlans: rawOnetimePlans == freezed
          ? _value.rawOnetimePlans
          : rawOnetimePlans as List<OnetimePlan>,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramDetail extends _ProgramDetail {
  const _$_ProgramDetail(
      {@required this.id,
      @required this.channelId,
      @required this.tenantId,
      this.adminComment,
      this.adminCommentDisappearAt,
      @required this.broadcastAt,
      @required this.detail,
      @required this.mainTime,
      @required this.previewTime,
      @required this.release,
      @required @JsonKey(name: 'tags') @protected this.rawTags,
      @required this.title,
      @required this.totalPlayTime,
      @Deprecated('use [viewerPlanType]') this.viewerPlanType,
      this.isExtensionChargedToSubscribers,
      this.archivedAt,
      @required this.releaseState,
      @required this.shouldArchive,
      @required @protected @JsonKey(name: 'extensions') this.rawExtensions,
      @required this.channel,
      @required this.handouts,
      @required this.videos,
      @required @protected @JsonKey(name: 'onetimePlans') this.rawOnetimePlans,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(channelId != null),
        assert(tenantId != null),
        assert(broadcastAt != null),
        assert(detail != null),
        assert(mainTime != null),
        assert(previewTime != null),
        assert(release != null),
        assert(rawTags != null),
        assert(title != null),
        assert(totalPlayTime != null),
        assert(releaseState != null),
        assert(shouldArchive != null),
        assert(rawExtensions != null),
        assert(channel != null),
        assert(handouts != null),
        assert(videos != null),
        assert(rawOnetimePlans != null),
        assert(typename != null),
        assert(typename == "Program"),
        super._();

  factory _$_ProgramDetail.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramDetailFromJson(json);

  @override
  final String id;
  @override
  final String channelId;
  @override
  final String tenantId;
  @override
  final String adminComment;
  @override
  final DateTime adminCommentDisappearAt;
  @override
  final DateTime broadcastAt;
  @override
  final String detail;
  @override
  final int mainTime;
  @override
  final int previewTime;
  @override
  final bool release;
  @override
  @JsonKey(name: 'tags')
  @protected
  final List<String> rawTags;
  @override
  final String title;
  @override
  final int totalPlayTime;
  @override
  @Deprecated('use [viewerPlanType]')
  final String viewerPlanType;
  @override
  final bool isExtensionChargedToSubscribers;
  @override
  final DateTime archivedAt;
  @override
  final String releaseState;
  @override
  final bool shouldArchive;
  @override
  @protected
  @JsonKey(name: 'extensions')
  final List<Extension> rawExtensions;
  @override
  final DetailPrgChannel channel;
  @override
  final Handouts handouts;
  @override
  final VideoHandouts videos;
  @override
  @protected
  @JsonKey(name: 'onetimePlans')
  final List<OnetimePlan> rawOnetimePlans;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ProgramDetail(id: $id, channelId: $channelId, tenantId: $tenantId, adminComment: $adminComment, adminCommentDisappearAt: $adminCommentDisappearAt, broadcastAt: $broadcastAt, detail: $detail, mainTime: $mainTime, previewTime: $previewTime, release: $release, rawTags: $rawTags, title: $title, totalPlayTime: $totalPlayTime, viewerPlanType: $viewerPlanType, isExtensionChargedToSubscribers: $isExtensionChargedToSubscribers, archivedAt: $archivedAt, releaseState: $releaseState, shouldArchive: $shouldArchive, rawExtensions: $rawExtensions, channel: $channel, handouts: $handouts, videos: $videos, rawOnetimePlans: $rawOnetimePlans, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.adminComment, adminComment) ||
                const DeepCollectionEquality()
                    .equals(other.adminComment, adminComment)) &&
            (identical(other.adminCommentDisappearAt, adminCommentDisappearAt) ||
                const DeepCollectionEquality().equals(
                    other.adminCommentDisappearAt, adminCommentDisappearAt)) &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)) &&
            (identical(other.mainTime, mainTime) ||
                const DeepCollectionEquality()
                    .equals(other.mainTime, mainTime)) &&
            (identical(other.previewTime, previewTime) ||
                const DeepCollectionEquality()
                    .equals(other.previewTime, previewTime)) &&
            (identical(other.release, release) ||
                const DeepCollectionEquality()
                    .equals(other.release, release)) &&
            (identical(other.rawTags, rawTags) ||
                const DeepCollectionEquality()
                    .equals(other.rawTags, rawTags)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.totalPlayTime, totalPlayTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalPlayTime, totalPlayTime)) &&
            (identical(other.viewerPlanType, viewerPlanType) ||
                const DeepCollectionEquality()
                    .equals(other.viewerPlanType, viewerPlanType)) &&
            (identical(other.isExtensionChargedToSubscribers, isExtensionChargedToSubscribers) ||
                const DeepCollectionEquality().equals(
                    other.isExtensionChargedToSubscribers,
                    isExtensionChargedToSubscribers)) &&
            (identical(other.archivedAt, archivedAt) ||
                const DeepCollectionEquality()
                    .equals(other.archivedAt, archivedAt)) &&
            (identical(other.releaseState, releaseState) ||
                const DeepCollectionEquality()
                    .equals(other.releaseState, releaseState)) &&
            (identical(other.shouldArchive, shouldArchive) ||
                const DeepCollectionEquality().equals(other.shouldArchive, shouldArchive)) &&
            (identical(other.rawExtensions, rawExtensions) || const DeepCollectionEquality().equals(other.rawExtensions, rawExtensions)) &&
            (identical(other.channel, channel) || const DeepCollectionEquality().equals(other.channel, channel)) &&
            (identical(other.handouts, handouts) || const DeepCollectionEquality().equals(other.handouts, handouts)) &&
            (identical(other.videos, videos) || const DeepCollectionEquality().equals(other.videos, videos)) &&
            (identical(other.rawOnetimePlans, rawOnetimePlans) || const DeepCollectionEquality().equals(other.rawOnetimePlans, rawOnetimePlans)) &&
            (identical(other.typename, typename) || const DeepCollectionEquality().equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(adminComment) ^
      const DeepCollectionEquality().hash(adminCommentDisappearAt) ^
      const DeepCollectionEquality().hash(broadcastAt) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(mainTime) ^
      const DeepCollectionEquality().hash(previewTime) ^
      const DeepCollectionEquality().hash(release) ^
      const DeepCollectionEquality().hash(rawTags) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(totalPlayTime) ^
      const DeepCollectionEquality().hash(viewerPlanType) ^
      const DeepCollectionEquality().hash(isExtensionChargedToSubscribers) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      const DeepCollectionEquality().hash(releaseState) ^
      const DeepCollectionEquality().hash(shouldArchive) ^
      const DeepCollectionEquality().hash(rawExtensions) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(handouts) ^
      const DeepCollectionEquality().hash(videos) ^
      const DeepCollectionEquality().hash(rawOnetimePlans) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ProgramDetailCopyWith<_ProgramDetail> get copyWith =>
      __$ProgramDetailCopyWithImpl<_ProgramDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramDetailToJson(this);
  }
}

abstract class _ProgramDetail extends ProgramDetail {
  const _ProgramDetail._() : super._();
  const factory _ProgramDetail(
      {@required
          String id,
      @required
          String channelId,
      @required
          String tenantId,
      String adminComment,
      DateTime adminCommentDisappearAt,
      @required
          DateTime broadcastAt,
      @required
          String detail,
      @required
          int mainTime,
      @required
          int previewTime,
      @required
          bool release,
      @required
      @JsonKey(name: 'tags')
      @protected
          List<String> rawTags,
      @required
          String title,
      @required
          int totalPlayTime,
      @Deprecated('use [viewerPlanType]')
          String viewerPlanType,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      @required
          String releaseState,
      @required
          bool shouldArchive,
      @required
      @protected
      @JsonKey(name: 'extensions')
          List<Extension> rawExtensions,
      @required
          DetailPrgChannel channel,
      @required
          Handouts handouts,
      @required
          VideoHandouts videos,
      @required
      @protected
      @JsonKey(name: 'onetimePlans')
          List<OnetimePlan> rawOnetimePlans,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_ProgramDetail;

  factory _ProgramDetail.fromJson(Map<String, dynamic> json) =
      _$_ProgramDetail.fromJson;

  @override
  String get id;
  @override
  String get channelId;
  @override
  String get tenantId;
  @override
  String get adminComment;
  @override
  DateTime get adminCommentDisappearAt;
  @override
  DateTime get broadcastAt;
  @override
  String get detail;
  @override
  int get mainTime;
  @override
  int get previewTime;
  @override
  bool get release;
  @override
  @JsonKey(name: 'tags')
  @protected
  List<String> get rawTags;
  @override
  String get title;
  @override
  int get totalPlayTime;
  @override
  @Deprecated('use [viewerPlanType]')
  String get viewerPlanType;
  @override
  bool get isExtensionChargedToSubscribers;
  @override
  DateTime get archivedAt;
  @override
  String get releaseState;
  @override
  bool get shouldArchive;
  @override
  @protected
  @JsonKey(name: 'extensions')
  List<Extension> get rawExtensions;
  @override
  DetailPrgChannel get channel;
  @override
  Handouts get handouts;
  @override
  VideoHandouts get videos;
  @override
  @protected
  @JsonKey(name: 'onetimePlans')
  List<OnetimePlan> get rawOnetimePlans;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ProgramDetailCopyWith<_ProgramDetail> get copyWith;
}

DetailPrgChannel _$DetailPrgChannelFromJson(Map<String, dynamic> json) {
  return _DetailPrgChannel.fromJson(json);
}

/// @nodoc
class _$DetailPrgChannelTearOff {
  const _$DetailPrgChannelTearOff();

// ignore: unused_element
  _DetailPrgChannel call(
      {@required String id,
      @required String tenantId,
      @required String name,
      dynamic icon,
      @required String textOnPurchaseScreen,
      @required @JsonKey(name: '__typename') String typename}) {
    return _DetailPrgChannel(
      id: id,
      tenantId: tenantId,
      name: name,
      icon: icon,
      textOnPurchaseScreen: textOnPurchaseScreen,
      typename: typename,
    );
  }

// ignore: unused_element
  DetailPrgChannel fromJson(Map<String, Object> json) {
    return DetailPrgChannel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailPrgChannel = _$DetailPrgChannelTearOff();

/// @nodoc
mixin _$DetailPrgChannel {
  String get id;
  String get tenantId;
  String get name;
  dynamic get icon;
  String get textOnPurchaseScreen;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DetailPrgChannelCopyWith<DetailPrgChannel> get copyWith;
}

/// @nodoc
abstract class $DetailPrgChannelCopyWith<$Res> {
  factory $DetailPrgChannelCopyWith(
          DetailPrgChannel value, $Res Function(DetailPrgChannel) then) =
      _$DetailPrgChannelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String tenantId,
      String name,
      dynamic icon,
      String textOnPurchaseScreen,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$DetailPrgChannelCopyWithImpl<$Res>
    implements $DetailPrgChannelCopyWith<$Res> {
  _$DetailPrgChannelCopyWithImpl(this._value, this._then);

  final DetailPrgChannel _value;
  // ignore: unused_field
  final $Res Function(DetailPrgChannel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object textOnPurchaseScreen = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as dynamic,
      textOnPurchaseScreen: textOnPurchaseScreen == freezed
          ? _value.textOnPurchaseScreen
          : textOnPurchaseScreen as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailPrgChannelCopyWith<$Res>
    implements $DetailPrgChannelCopyWith<$Res> {
  factory _$DetailPrgChannelCopyWith(
          _DetailPrgChannel value, $Res Function(_DetailPrgChannel) then) =
      __$DetailPrgChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String tenantId,
      String name,
      dynamic icon,
      String textOnPurchaseScreen,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$DetailPrgChannelCopyWithImpl<$Res>
    extends _$DetailPrgChannelCopyWithImpl<$Res>
    implements _$DetailPrgChannelCopyWith<$Res> {
  __$DetailPrgChannelCopyWithImpl(
      _DetailPrgChannel _value, $Res Function(_DetailPrgChannel) _then)
      : super(_value, (v) => _then(v as _DetailPrgChannel));

  @override
  _DetailPrgChannel get _value => super._value as _DetailPrgChannel;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object name = freezed,
    Object icon = freezed,
    Object textOnPurchaseScreen = freezed,
    Object typename = freezed,
  }) {
    return _then(_DetailPrgChannel(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as dynamic,
      textOnPurchaseScreen: textOnPurchaseScreen == freezed
          ? _value.textOnPurchaseScreen
          : textOnPurchaseScreen as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailPrgChannel implements _DetailPrgChannel {
  const _$_DetailPrgChannel(
      {@required this.id,
      @required this.tenantId,
      @required this.name,
      this.icon,
      @required this.textOnPurchaseScreen,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(tenantId != null),
        assert(name != null),
        assert(textOnPurchaseScreen != null),
        assert(typename != null),
        assert(typename == "Channel");

  factory _$_DetailPrgChannel.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailPrgChannelFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String name;
  @override
  final dynamic icon;
  @override
  final String textOnPurchaseScreen;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'DetailPrgChannel(id: $id, tenantId: $tenantId, name: $name, icon: $icon, textOnPurchaseScreen: $textOnPurchaseScreen, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailPrgChannel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.textOnPurchaseScreen, textOnPurchaseScreen) ||
                const DeepCollectionEquality().equals(
                    other.textOnPurchaseScreen, textOnPurchaseScreen)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(textOnPurchaseScreen) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$DetailPrgChannelCopyWith<_DetailPrgChannel> get copyWith =>
      __$DetailPrgChannelCopyWithImpl<_DetailPrgChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailPrgChannelToJson(this);
  }
}

abstract class _DetailPrgChannel implements DetailPrgChannel {
  const factory _DetailPrgChannel(
          {@required String id,
          @required String tenantId,
          @required String name,
          dynamic icon,
          @required String textOnPurchaseScreen,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_DetailPrgChannel;

  factory _DetailPrgChannel.fromJson(Map<String, dynamic> json) =
      _$_DetailPrgChannel.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get name;
  @override
  dynamic get icon;
  @override
  String get textOnPurchaseScreen;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$DetailPrgChannelCopyWith<_DetailPrgChannel> get copyWith;
}

VideoHandouts _$VideoHandoutsFromJson(Map<String, dynamic> json) {
  return _VideoHandouts.fromJson(json);
}

/// @nodoc
class _$VideoHandoutsTearOff {
  const _$VideoHandoutsTearOff();

// ignore: unused_element
  _VideoHandouts call(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<DetailPrgItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) {
    return _VideoHandouts(
      rawItems: rawItems,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  VideoHandouts fromJson(Map<String, Object> json) {
    return VideoHandouts.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $VideoHandouts = _$VideoHandoutsTearOff();

/// @nodoc
mixin _$VideoHandouts {
  @JsonKey(name: 'items')
  @protected
  List<DetailPrgItem> get rawItems;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $VideoHandoutsCopyWith<VideoHandouts> get copyWith;
}

/// @nodoc
abstract class $VideoHandoutsCopyWith<$Res> {
  factory $VideoHandoutsCopyWith(
          VideoHandouts value, $Res Function(VideoHandouts) then) =
      _$VideoHandoutsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<DetailPrgItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$VideoHandoutsCopyWithImpl<$Res>
    implements $VideoHandoutsCopyWith<$Res> {
  _$VideoHandoutsCopyWithImpl(this._value, this._then);

  final VideoHandouts _value;
  // ignore: unused_field
  final $Res Function(VideoHandouts) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<DetailPrgItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$VideoHandoutsCopyWith<$Res>
    implements $VideoHandoutsCopyWith<$Res> {
  factory _$VideoHandoutsCopyWith(
          _VideoHandouts value, $Res Function(_VideoHandouts) then) =
      __$VideoHandoutsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<DetailPrgItem> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$VideoHandoutsCopyWithImpl<$Res>
    extends _$VideoHandoutsCopyWithImpl<$Res>
    implements _$VideoHandoutsCopyWith<$Res> {
  __$VideoHandoutsCopyWithImpl(
      _VideoHandouts _value, $Res Function(_VideoHandouts) _then)
      : super(_value, (v) => _then(v as _VideoHandouts));

  @override
  _VideoHandouts get _value => super._value as _VideoHandouts;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_VideoHandouts(
      rawItems: rawItems == freezed
          ? _value.rawItems
          : rawItems as List<DetailPrgItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_VideoHandouts extends _VideoHandouts {
  const _$_VideoHandouts(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ModelVideoConnection"),
        super._();

  factory _$_VideoHandouts.fromJson(Map<String, dynamic> json) =>
      _$_$_VideoHandoutsFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<DetailPrgItem> rawItems;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'VideoHandouts(rawItems: $rawItems, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoHandouts &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$VideoHandoutsCopyWith<_VideoHandouts> get copyWith =>
      __$VideoHandoutsCopyWithImpl<_VideoHandouts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VideoHandoutsToJson(this);
  }
}

abstract class _VideoHandouts extends VideoHandouts {
  const _VideoHandouts._() : super._();
  const factory _VideoHandouts(
      {@required
      @JsonKey(name: 'items')
      @protected
          List<DetailPrgItem> rawItems,
      String nextToken,
      @required
      @JsonKey(name: '__typename')
          String typename}) = _$_VideoHandouts;

  factory _VideoHandouts.fromJson(Map<String, dynamic> json) =
      _$_VideoHandouts.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<DetailPrgItem> get rawItems;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$VideoHandoutsCopyWith<_VideoHandouts> get copyWith;
}

Handouts _$HandoutsFromJson(Map<String, dynamic> json) {
  return _Handouts.fromJson(json);
}

/// @nodoc
class _$HandoutsTearOff {
  const _$HandoutsTearOff();

// ignore: unused_element
  _Handouts call(
      {@required @JsonKey(name: 'items') @protected List<Handout> rawItems,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Handouts(
      rawItems: rawItems,
      nextToken: nextToken,
      typename: typename,
    );
  }

// ignore: unused_element
  Handouts fromJson(Map<String, Object> json) {
    return Handouts.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Handouts = _$HandoutsTearOff();

/// @nodoc
mixin _$Handouts {
  @JsonKey(name: 'items')
  @protected
  List<Handout> get rawItems;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HandoutsCopyWith<Handouts> get copyWith;
}

/// @nodoc
abstract class $HandoutsCopyWith<$Res> {
  factory $HandoutsCopyWith(Handouts value, $Res Function(Handouts) then) =
      _$HandoutsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'items') @protected List<Handout> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$HandoutsCopyWithImpl<$Res> implements $HandoutsCopyWith<$Res> {
  _$HandoutsCopyWithImpl(this._value, this._then);

  final Handouts _value;
  // ignore: unused_field
  final $Res Function(Handouts) _then;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      rawItems:
          rawItems == freezed ? _value.rawItems : rawItems as List<Handout>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$HandoutsCopyWith<$Res> implements $HandoutsCopyWith<$Res> {
  factory _$HandoutsCopyWith(_Handouts value, $Res Function(_Handouts) then) =
      __$HandoutsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'items') @protected List<Handout> rawItems,
      String nextToken,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$HandoutsCopyWithImpl<$Res> extends _$HandoutsCopyWithImpl<$Res>
    implements _$HandoutsCopyWith<$Res> {
  __$HandoutsCopyWithImpl(_Handouts _value, $Res Function(_Handouts) _then)
      : super(_value, (v) => _then(v as _Handouts));

  @override
  _Handouts get _value => super._value as _Handouts;

  @override
  $Res call({
    Object rawItems = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Handouts(
      rawItems:
          rawItems == freezed ? _value.rawItems : rawItems as List<Handout>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Handouts extends _Handouts {
  const _$_Handouts(
      {@required @JsonKey(name: 'items') @protected this.rawItems,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(rawItems != null),
        assert(typename != null),
        assert(typename == "ModelHandoutConnection"),
        super._();

  factory _$_Handouts.fromJson(Map<String, dynamic> json) =>
      _$_$_HandoutsFromJson(json);

  @override
  @JsonKey(name: 'items')
  @protected
  final List<Handout> rawItems;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Handouts(rawItems: $rawItems, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Handouts &&
            (identical(other.rawItems, rawItems) ||
                const DeepCollectionEquality()
                    .equals(other.rawItems, rawItems)) &&
            (identical(other.nextToken, nextToken) ||
                const DeepCollectionEquality()
                    .equals(other.nextToken, nextToken)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawItems) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$HandoutsCopyWith<_Handouts> get copyWith =>
      __$HandoutsCopyWithImpl<_Handouts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HandoutsToJson(this);
  }
}

abstract class _Handouts extends Handouts {
  const _Handouts._() : super._();
  const factory _Handouts(
      {@required @JsonKey(name: 'items') @protected List<Handout> rawItems,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) = _$_Handouts;

  factory _Handouts.fromJson(Map<String, dynamic> json) = _$_Handouts.fromJson;

  @override
  @JsonKey(name: 'items')
  @protected
  List<Handout> get rawItems;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$HandoutsCopyWith<_Handouts> get copyWith;
}

Handout _$HandoutFromJson(Map<String, dynamic> json) {
  return _Handout.fromJson(json);
}

/// @nodoc
class _$HandoutTearOff {
  const _$HandoutTearOff();

// ignore: unused_element
  _Handout call(
      {@required String id,
      @required String programId,
      String extensionId,
      @required String name,
      @required DateTime createdAt,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Handout(
      id: id,
      programId: programId,
      extensionId: extensionId,
      name: name,
      createdAt: createdAt,
      typename: typename,
    );
  }

// ignore: unused_element
  Handout fromJson(Map<String, Object> json) {
    return Handout.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Handout = _$HandoutTearOff();

/// @nodoc
mixin _$Handout {
  String get id;
  String get programId;
  String get extensionId;
  String get name;
  DateTime get createdAt;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $HandoutCopyWith<Handout> get copyWith;
}

/// @nodoc
abstract class $HandoutCopyWith<$Res> {
  factory $HandoutCopyWith(Handout value, $Res Function(Handout) then) =
      _$HandoutCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String programId,
      String extensionId,
      String name,
      DateTime createdAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$HandoutCopyWithImpl<$Res> implements $HandoutCopyWith<$Res> {
  _$HandoutCopyWithImpl(this._value, this._then);

  final Handout _value;
  // ignore: unused_field
  final $Res Function(Handout) _then;

  @override
  $Res call({
    Object id = freezed,
    Object programId = freezed,
    Object extensionId = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      programId: programId == freezed ? _value.programId : programId as String,
      extensionId:
          extensionId == freezed ? _value.extensionId : extensionId as String,
      name: name == freezed ? _value.name : name as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$HandoutCopyWith<$Res> implements $HandoutCopyWith<$Res> {
  factory _$HandoutCopyWith(_Handout value, $Res Function(_Handout) then) =
      __$HandoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String programId,
      String extensionId,
      String name,
      DateTime createdAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$HandoutCopyWithImpl<$Res> extends _$HandoutCopyWithImpl<$Res>
    implements _$HandoutCopyWith<$Res> {
  __$HandoutCopyWithImpl(_Handout _value, $Res Function(_Handout) _then)
      : super(_value, (v) => _then(v as _Handout));

  @override
  _Handout get _value => super._value as _Handout;

  @override
  $Res call({
    Object id = freezed,
    Object programId = freezed,
    Object extensionId = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_Handout(
      id: id == freezed ? _value.id : id as String,
      programId: programId == freezed ? _value.programId : programId as String,
      extensionId:
          extensionId == freezed ? _value.extensionId : extensionId as String,
      name: name == freezed ? _value.name : name as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Handout implements _Handout {
  const _$_Handout(
      {@required this.id,
      @required this.programId,
      this.extensionId,
      @required this.name,
      @required this.createdAt,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(programId != null),
        assert(name != null),
        assert(createdAt != null),
        assert(typename != null),
        assert(typename == "Handout");

  factory _$_Handout.fromJson(Map<String, dynamic> json) =>
      _$_$_HandoutFromJson(json);

  @override
  final String id;
  @override
  final String programId;
  @override
  final String extensionId;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Handout(id: $id, programId: $programId, extensionId: $extensionId, name: $name, createdAt: $createdAt, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Handout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)) &&
            (identical(other.extensionId, extensionId) ||
                const DeepCollectionEquality()
                    .equals(other.extensionId, extensionId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(programId) ^
      const DeepCollectionEquality().hash(extensionId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$HandoutCopyWith<_Handout> get copyWith =>
      __$HandoutCopyWithImpl<_Handout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HandoutToJson(this);
  }
}

abstract class _Handout implements Handout {
  const factory _Handout(
      {@required String id,
      @required String programId,
      String extensionId,
      @required String name,
      @required DateTime createdAt,
      @required @JsonKey(name: '__typename') String typename}) = _$_Handout;

  factory _Handout.fromJson(Map<String, dynamic> json) = _$_Handout.fromJson;

  @override
  String get id;
  @override
  String get programId;
  @override
  String get extensionId;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$HandoutCopyWith<_Handout> get copyWith;
}

DetailPrgItem _$DetailPrgItemFromJson(Map<String, dynamic> json) {
  return _DetailPrgItem.fromJson(json);
}

/// @nodoc
class _$DetailPrgItemTearOff {
  const _$DetailPrgItemTearOff();

// ignore: unused_element
  _DetailPrgItem call(
      {@required String id,
      @required @visibleForOverriding String videoType,
      String mediaStatus,
      String liveUrl,
      String archiveUrl,
      @required @JsonKey(name: '__typename') String typename}) {
    return _DetailPrgItem(
      id: id,
      videoType: videoType,
      mediaStatus: mediaStatus,
      liveUrl: liveUrl,
      archiveUrl: archiveUrl,
      typename: typename,
    );
  }

// ignore: unused_element
  DetailPrgItem fromJson(Map<String, Object> json) {
    return DetailPrgItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $DetailPrgItem = _$DetailPrgItemTearOff();

/// @nodoc
mixin _$DetailPrgItem {
  String get id;
  @visibleForOverriding
  String get videoType;
  String get mediaStatus;
  String get liveUrl;
  String get archiveUrl;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $DetailPrgItemCopyWith<DetailPrgItem> get copyWith;
}

/// @nodoc
abstract class $DetailPrgItemCopyWith<$Res> {
  factory $DetailPrgItemCopyWith(
          DetailPrgItem value, $Res Function(DetailPrgItem) then) =
      _$DetailPrgItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @visibleForOverriding String videoType,
      String mediaStatus,
      String liveUrl,
      String archiveUrl,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$DetailPrgItemCopyWithImpl<$Res>
    implements $DetailPrgItemCopyWith<$Res> {
  _$DetailPrgItemCopyWithImpl(this._value, this._then);

  final DetailPrgItem _value;
  // ignore: unused_field
  final $Res Function(DetailPrgItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object videoType = freezed,
    Object mediaStatus = freezed,
    Object liveUrl = freezed,
    Object archiveUrl = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      videoType: videoType == freezed ? _value.videoType : videoType as String,
      mediaStatus:
          mediaStatus == freezed ? _value.mediaStatus : mediaStatus as String,
      liveUrl: liveUrl == freezed ? _value.liveUrl : liveUrl as String,
      archiveUrl:
          archiveUrl == freezed ? _value.archiveUrl : archiveUrl as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailPrgItemCopyWith<$Res>
    implements $DetailPrgItemCopyWith<$Res> {
  factory _$DetailPrgItemCopyWith(
          _DetailPrgItem value, $Res Function(_DetailPrgItem) then) =
      __$DetailPrgItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @visibleForOverriding String videoType,
      String mediaStatus,
      String liveUrl,
      String archiveUrl,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$DetailPrgItemCopyWithImpl<$Res>
    extends _$DetailPrgItemCopyWithImpl<$Res>
    implements _$DetailPrgItemCopyWith<$Res> {
  __$DetailPrgItemCopyWithImpl(
      _DetailPrgItem _value, $Res Function(_DetailPrgItem) _then)
      : super(_value, (v) => _then(v as _DetailPrgItem));

  @override
  _DetailPrgItem get _value => super._value as _DetailPrgItem;

  @override
  $Res call({
    Object id = freezed,
    Object videoType = freezed,
    Object mediaStatus = freezed,
    Object liveUrl = freezed,
    Object archiveUrl = freezed,
    Object typename = freezed,
  }) {
    return _then(_DetailPrgItem(
      id: id == freezed ? _value.id : id as String,
      videoType: videoType == freezed ? _value.videoType : videoType as String,
      mediaStatus:
          mediaStatus == freezed ? _value.mediaStatus : mediaStatus as String,
      liveUrl: liveUrl == freezed ? _value.liveUrl : liveUrl as String,
      archiveUrl:
          archiveUrl == freezed ? _value.archiveUrl : archiveUrl as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_DetailPrgItem extends _DetailPrgItem {
  const _$_DetailPrgItem(
      {@required this.id,
      @required @visibleForOverriding this.videoType,
      this.mediaStatus,
      this.liveUrl,
      this.archiveUrl,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(videoType != null),
        assert(typename != null),
        assert(typename == "Video"),
        super._();

  factory _$_DetailPrgItem.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailPrgItemFromJson(json);

  @override
  final String id;
  @override
  @visibleForOverriding
  final String videoType;
  @override
  final String mediaStatus;
  @override
  final String liveUrl;
  @override
  final String archiveUrl;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'DetailPrgItem(id: $id, videoType: $videoType, mediaStatus: $mediaStatus, liveUrl: $liveUrl, archiveUrl: $archiveUrl, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailPrgItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.videoType, videoType) ||
                const DeepCollectionEquality()
                    .equals(other.videoType, videoType)) &&
            (identical(other.mediaStatus, mediaStatus) ||
                const DeepCollectionEquality()
                    .equals(other.mediaStatus, mediaStatus)) &&
            (identical(other.liveUrl, liveUrl) ||
                const DeepCollectionEquality()
                    .equals(other.liveUrl, liveUrl)) &&
            (identical(other.archiveUrl, archiveUrl) ||
                const DeepCollectionEquality()
                    .equals(other.archiveUrl, archiveUrl)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(videoType) ^
      const DeepCollectionEquality().hash(mediaStatus) ^
      const DeepCollectionEquality().hash(liveUrl) ^
      const DeepCollectionEquality().hash(archiveUrl) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$DetailPrgItemCopyWith<_DetailPrgItem> get copyWith =>
      __$DetailPrgItemCopyWithImpl<_DetailPrgItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailPrgItemToJson(this);
  }
}

abstract class _DetailPrgItem extends DetailPrgItem {
  const _DetailPrgItem._() : super._();
  const factory _DetailPrgItem(
          {@required String id,
          @required @visibleForOverriding String videoType,
          String mediaStatus,
          String liveUrl,
          String archiveUrl,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_DetailPrgItem;

  factory _DetailPrgItem.fromJson(Map<String, dynamic> json) =
      _$_DetailPrgItem.fromJson;

  @override
  String get id;
  @override
  @visibleForOverriding
  String get videoType;
  @override
  String get mediaStatus;
  @override
  String get liveUrl;
  @override
  String get archiveUrl;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$DetailPrgItemCopyWith<_DetailPrgItem> get copyWith;
}

OnetimePlan _$OnetimePlanFromJson(Map<String, dynamic> json) {
  return _OnetimePlan.fromJson(json);
}

/// @nodoc
class _$OnetimePlanTearOff {
  const _$OnetimePlanTearOff();

// ignore: unused_element
  _OnetimePlan call(
      {@required String id,
      @visibleForOverriding String parentPlanType,
      String parentPlanId,
      @required @visibleForOverriding String productType,
      @required String productId,
      @required String name,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      String viewerPurchasedPlan,
      @required @JsonKey(name: '__typename') String typename}) {
    return _OnetimePlan(
      id: id,
      parentPlanType: parentPlanType,
      parentPlanId: parentPlanId,
      productType: productType,
      productId: productId,
      name: name,
      amount: amount,
      currency: currency,
      isPurchasable: isPurchasable,
      viewerPurchasedPlan: viewerPurchasedPlan,
      typename: typename,
    );
  }

// ignore: unused_element
  OnetimePlan fromJson(Map<String, Object> json) {
    return OnetimePlan.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $OnetimePlan = _$OnetimePlanTearOff();

/// @nodoc
mixin _$OnetimePlan {
  String get id;
  @visibleForOverriding
  String get parentPlanType;
  String get parentPlanId;
  @visibleForOverriding
  String get productType;
  String get productId;
  String get name;
  int get amount;
  String get currency;
  bool get isPurchasable;
  String get viewerPurchasedPlan;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $OnetimePlanCopyWith<OnetimePlan> get copyWith;
}

/// @nodoc
abstract class $OnetimePlanCopyWith<$Res> {
  factory $OnetimePlanCopyWith(
          OnetimePlan value, $Res Function(OnetimePlan) then) =
      _$OnetimePlanCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @visibleForOverriding String parentPlanType,
      String parentPlanId,
      @visibleForOverriding String productType,
      String productId,
      String name,
      int amount,
      String currency,
      bool isPurchasable,
      String viewerPurchasedPlan,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$OnetimePlanCopyWithImpl<$Res> implements $OnetimePlanCopyWith<$Res> {
  _$OnetimePlanCopyWithImpl(this._value, this._then);

  final OnetimePlan _value;
  // ignore: unused_field
  final $Res Function(OnetimePlan) _then;

  @override
  $Res call({
    Object id = freezed,
    Object parentPlanType = freezed,
    Object parentPlanId = freezed,
    Object productType = freezed,
    Object productId = freezed,
    Object name = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object isPurchasable = freezed,
    Object viewerPurchasedPlan = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      parentPlanType: parentPlanType == freezed
          ? _value.parentPlanType
          : parentPlanType as String,
      parentPlanId: parentPlanId == freezed
          ? _value.parentPlanId
          : parentPlanId as String,
      productType:
          productType == freezed ? _value.productType : productType as String,
      productId: productId == freezed ? _value.productId : productId as String,
      name: name == freezed ? _value.name : name as String,
      amount: amount == freezed ? _value.amount : amount as int,
      currency: currency == freezed ? _value.currency : currency as String,
      isPurchasable: isPurchasable == freezed
          ? _value.isPurchasable
          : isPurchasable as bool,
      viewerPurchasedPlan: viewerPurchasedPlan == freezed
          ? _value.viewerPurchasedPlan
          : viewerPurchasedPlan as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$OnetimePlanCopyWith<$Res>
    implements $OnetimePlanCopyWith<$Res> {
  factory _$OnetimePlanCopyWith(
          _OnetimePlan value, $Res Function(_OnetimePlan) then) =
      __$OnetimePlanCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @visibleForOverriding String parentPlanType,
      String parentPlanId,
      @visibleForOverriding String productType,
      String productId,
      String name,
      int amount,
      String currency,
      bool isPurchasable,
      String viewerPurchasedPlan,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$OnetimePlanCopyWithImpl<$Res> extends _$OnetimePlanCopyWithImpl<$Res>
    implements _$OnetimePlanCopyWith<$Res> {
  __$OnetimePlanCopyWithImpl(
      _OnetimePlan _value, $Res Function(_OnetimePlan) _then)
      : super(_value, (v) => _then(v as _OnetimePlan));

  @override
  _OnetimePlan get _value => super._value as _OnetimePlan;

  @override
  $Res call({
    Object id = freezed,
    Object parentPlanType = freezed,
    Object parentPlanId = freezed,
    Object productType = freezed,
    Object productId = freezed,
    Object name = freezed,
    Object amount = freezed,
    Object currency = freezed,
    Object isPurchasable = freezed,
    Object viewerPurchasedPlan = freezed,
    Object typename = freezed,
  }) {
    return _then(_OnetimePlan(
      id: id == freezed ? _value.id : id as String,
      parentPlanType: parentPlanType == freezed
          ? _value.parentPlanType
          : parentPlanType as String,
      parentPlanId: parentPlanId == freezed
          ? _value.parentPlanId
          : parentPlanId as String,
      productType:
          productType == freezed ? _value.productType : productType as String,
      productId: productId == freezed ? _value.productId : productId as String,
      name: name == freezed ? _value.name : name as String,
      amount: amount == freezed ? _value.amount : amount as int,
      currency: currency == freezed ? _value.currency : currency as String,
      isPurchasable: isPurchasable == freezed
          ? _value.isPurchasable
          : isPurchasable as bool,
      viewerPurchasedPlan: viewerPurchasedPlan == freezed
          ? _value.viewerPurchasedPlan
          : viewerPurchasedPlan as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OnetimePlan extends _OnetimePlan {
  const _$_OnetimePlan(
      {@required this.id,
      @visibleForOverriding this.parentPlanType,
      this.parentPlanId,
      @required @visibleForOverriding this.productType,
      @required this.productId,
      @required this.name,
      @required this.amount,
      @required this.currency,
      @required this.isPurchasable,
      this.viewerPurchasedPlan,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(productType != null),
        assert(productId != null),
        assert(name != null),
        assert(amount != null),
        assert(currency != null),
        assert(isPurchasable != null),
        assert(typename != null),
        assert(typename == "OneTimePlan"),
        super._();

  factory _$_OnetimePlan.fromJson(Map<String, dynamic> json) =>
      _$_$_OnetimePlanFromJson(json);

  @override
  final String id;
  @override
  @visibleForOverriding
  final String parentPlanType;
  @override
  final String parentPlanId;
  @override
  @visibleForOverriding
  final String productType;
  @override
  final String productId;
  @override
  final String name;
  @override
  final int amount;
  @override
  final String currency;
  @override
  final bool isPurchasable;
  @override
  final String viewerPurchasedPlan;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'OnetimePlan(id: $id, parentPlanType: $parentPlanType, parentPlanId: $parentPlanId, productType: $productType, productId: $productId, name: $name, amount: $amount, currency: $currency, isPurchasable: $isPurchasable, viewerPurchasedPlan: $viewerPurchasedPlan, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnetimePlan &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parentPlanType, parentPlanType) ||
                const DeepCollectionEquality()
                    .equals(other.parentPlanType, parentPlanType)) &&
            (identical(other.parentPlanId, parentPlanId) ||
                const DeepCollectionEquality()
                    .equals(other.parentPlanId, parentPlanId)) &&
            (identical(other.productType, productType) ||
                const DeepCollectionEquality()
                    .equals(other.productType, productType)) &&
            (identical(other.productId, productId) ||
                const DeepCollectionEquality()
                    .equals(other.productId, productId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.currency, currency) ||
                const DeepCollectionEquality()
                    .equals(other.currency, currency)) &&
            (identical(other.isPurchasable, isPurchasable) ||
                const DeepCollectionEquality()
                    .equals(other.isPurchasable, isPurchasable)) &&
            (identical(other.viewerPurchasedPlan, viewerPurchasedPlan) ||
                const DeepCollectionEquality()
                    .equals(other.viewerPurchasedPlan, viewerPurchasedPlan)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parentPlanType) ^
      const DeepCollectionEquality().hash(parentPlanId) ^
      const DeepCollectionEquality().hash(productType) ^
      const DeepCollectionEquality().hash(productId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(currency) ^
      const DeepCollectionEquality().hash(isPurchasable) ^
      const DeepCollectionEquality().hash(viewerPurchasedPlan) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$OnetimePlanCopyWith<_OnetimePlan> get copyWith =>
      __$OnetimePlanCopyWithImpl<_OnetimePlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OnetimePlanToJson(this);
  }
}

abstract class _OnetimePlan extends OnetimePlan {
  const _OnetimePlan._() : super._();
  const factory _OnetimePlan(
      {@required String id,
      @visibleForOverriding String parentPlanType,
      String parentPlanId,
      @required @visibleForOverriding String productType,
      @required String productId,
      @required String name,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      String viewerPurchasedPlan,
      @required @JsonKey(name: '__typename') String typename}) = _$_OnetimePlan;

  factory _OnetimePlan.fromJson(Map<String, dynamic> json) =
      _$_OnetimePlan.fromJson;

  @override
  String get id;
  @override
  @visibleForOverriding
  String get parentPlanType;
  @override
  String get parentPlanId;
  @override
  @visibleForOverriding
  String get productType;
  @override
  String get productId;
  @override
  String get name;
  @override
  int get amount;
  @override
  String get currency;
  @override
  bool get isPurchasable;
  @override
  String get viewerPurchasedPlan;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$OnetimePlanCopyWith<_OnetimePlan> get copyWith;
}

Extension _$ExtensionFromJson(Map<String, dynamic> json) {
  return _Extension.fromJson(json);
}

/// @nodoc
class _$ExtensionTearOff {
  const _$ExtensionTearOff();

// ignore: unused_element
  _Extension call(
      {@required String id,
      @required int extensionTime,
      @required String oneTimePlanId,
      @required OnetimePlan oneTimePlan,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Extension(
      id: id,
      extensionTime: extensionTime,
      oneTimePlanId: oneTimePlanId,
      oneTimePlan: oneTimePlan,
      typename: typename,
    );
  }

// ignore: unused_element
  Extension fromJson(Map<String, Object> json) {
    return Extension.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Extension = _$ExtensionTearOff();

/// @nodoc
mixin _$Extension {
  String get id;
  int get extensionTime;
  String get oneTimePlanId;
  OnetimePlan get oneTimePlan;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ExtensionCopyWith<Extension> get copyWith;
}

/// @nodoc
abstract class $ExtensionCopyWith<$Res> {
  factory $ExtensionCopyWith(Extension value, $Res Function(Extension) then) =
      _$ExtensionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int extensionTime,
      String oneTimePlanId,
      OnetimePlan oneTimePlan,
      @JsonKey(name: '__typename') String typename});

  $OnetimePlanCopyWith<$Res> get oneTimePlan;
}

/// @nodoc
class _$ExtensionCopyWithImpl<$Res> implements $ExtensionCopyWith<$Res> {
  _$ExtensionCopyWithImpl(this._value, this._then);

  final Extension _value;
  // ignore: unused_field
  final $Res Function(Extension) _then;

  @override
  $Res call({
    Object id = freezed,
    Object extensionTime = freezed,
    Object oneTimePlanId = freezed,
    Object oneTimePlan = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      extensionTime: extensionTime == freezed
          ? _value.extensionTime
          : extensionTime as int,
      oneTimePlanId: oneTimePlanId == freezed
          ? _value.oneTimePlanId
          : oneTimePlanId as String,
      oneTimePlan: oneTimePlan == freezed
          ? _value.oneTimePlan
          : oneTimePlan as OnetimePlan,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $OnetimePlanCopyWith<$Res> get oneTimePlan {
    if (_value.oneTimePlan == null) {
      return null;
    }
    return $OnetimePlanCopyWith<$Res>(_value.oneTimePlan, (value) {
      return _then(_value.copyWith(oneTimePlan: value));
    });
  }
}

/// @nodoc
abstract class _$ExtensionCopyWith<$Res> implements $ExtensionCopyWith<$Res> {
  factory _$ExtensionCopyWith(
          _Extension value, $Res Function(_Extension) then) =
      __$ExtensionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int extensionTime,
      String oneTimePlanId,
      OnetimePlan oneTimePlan,
      @JsonKey(name: '__typename') String typename});

  @override
  $OnetimePlanCopyWith<$Res> get oneTimePlan;
}

/// @nodoc
class __$ExtensionCopyWithImpl<$Res> extends _$ExtensionCopyWithImpl<$Res>
    implements _$ExtensionCopyWith<$Res> {
  __$ExtensionCopyWithImpl(_Extension _value, $Res Function(_Extension) _then)
      : super(_value, (v) => _then(v as _Extension));

  @override
  _Extension get _value => super._value as _Extension;

  @override
  $Res call({
    Object id = freezed,
    Object extensionTime = freezed,
    Object oneTimePlanId = freezed,
    Object oneTimePlan = freezed,
    Object typename = freezed,
  }) {
    return _then(_Extension(
      id: id == freezed ? _value.id : id as String,
      extensionTime: extensionTime == freezed
          ? _value.extensionTime
          : extensionTime as int,
      oneTimePlanId: oneTimePlanId == freezed
          ? _value.oneTimePlanId
          : oneTimePlanId as String,
      oneTimePlan: oneTimePlan == freezed
          ? _value.oneTimePlan
          : oneTimePlan as OnetimePlan,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Extension implements _Extension {
  const _$_Extension(
      {@required this.id,
      @required this.extensionTime,
      @required this.oneTimePlanId,
      @required this.oneTimePlan,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(extensionTime != null),
        assert(oneTimePlanId != null),
        assert(oneTimePlan != null),
        assert(typename != null),
        assert(typename == "LiveExtension");

  factory _$_Extension.fromJson(Map<String, dynamic> json) =>
      _$_$_ExtensionFromJson(json);

  @override
  final String id;
  @override
  final int extensionTime;
  @override
  final String oneTimePlanId;
  @override
  final OnetimePlan oneTimePlan;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Extension(id: $id, extensionTime: $extensionTime, oneTimePlanId: $oneTimePlanId, oneTimePlan: $oneTimePlan, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Extension &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.extensionTime, extensionTime) ||
                const DeepCollectionEquality()
                    .equals(other.extensionTime, extensionTime)) &&
            (identical(other.oneTimePlanId, oneTimePlanId) ||
                const DeepCollectionEquality()
                    .equals(other.oneTimePlanId, oneTimePlanId)) &&
            (identical(other.oneTimePlan, oneTimePlan) ||
                const DeepCollectionEquality()
                    .equals(other.oneTimePlan, oneTimePlan)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(extensionTime) ^
      const DeepCollectionEquality().hash(oneTimePlanId) ^
      const DeepCollectionEquality().hash(oneTimePlan) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ExtensionCopyWith<_Extension> get copyWith =>
      __$ExtensionCopyWithImpl<_Extension>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExtensionToJson(this);
  }
}

abstract class _Extension implements Extension {
  const factory _Extension(
      {@required String id,
      @required int extensionTime,
      @required String oneTimePlanId,
      @required OnetimePlan oneTimePlan,
      @required @JsonKey(name: '__typename') String typename}) = _$_Extension;

  factory _Extension.fromJson(Map<String, dynamic> json) =
      _$_Extension.fromJson;

  @override
  String get id;
  @override
  int get extensionTime;
  @override
  String get oneTimePlanId;
  @override
  OnetimePlan get oneTimePlan;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ExtensionCopyWith<_Extension> get copyWith;
}

Viewer _$ViewerFromJson(Map<String, dynamic> json) {
  return _Viewer.fromJson(json);
}

/// @nodoc
class _$ViewerTearOff {
  const _$ViewerTearOff();

// ignore: unused_element
  _Viewer call(
      {@required String name,
      @required String icon,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Viewer(
      name: name,
      icon: icon,
      typename: typename,
    );
  }

// ignore: unused_element
  Viewer fromJson(Map<String, Object> json) {
    return Viewer.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Viewer = _$ViewerTearOff();

/// @nodoc
mixin _$Viewer {
  String get name;
  String get icon;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ViewerCopyWith<Viewer> get copyWith;
}

/// @nodoc
abstract class $ViewerCopyWith<$Res> {
  factory $ViewerCopyWith(Viewer value, $Res Function(Viewer) then) =
      _$ViewerCopyWithImpl<$Res>;
  $Res call(
      {String name, String icon, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$ViewerCopyWithImpl<$Res> implements $ViewerCopyWith<$Res> {
  _$ViewerCopyWithImpl(this._value, this._then);

  final Viewer _value;
  // ignore: unused_field
  final $Res Function(Viewer) _then;

  @override
  $Res call({
    Object name = freezed,
    Object icon = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$ViewerCopyWith<$Res> implements $ViewerCopyWith<$Res> {
  factory _$ViewerCopyWith(_Viewer value, $Res Function(_Viewer) then) =
      __$ViewerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String icon, @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$ViewerCopyWithImpl<$Res> extends _$ViewerCopyWithImpl<$Res>
    implements _$ViewerCopyWith<$Res> {
  __$ViewerCopyWithImpl(_Viewer _value, $Res Function(_Viewer) _then)
      : super(_value, (v) => _then(v as _Viewer));

  @override
  _Viewer get _value => super._value as _Viewer;

  @override
  $Res call({
    Object name = freezed,
    Object icon = freezed,
    Object typename = freezed,
  }) {
    return _then(_Viewer(
      name: name == freezed ? _value.name : name as String,
      icon: icon == freezed ? _value.icon : icon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Viewer implements _Viewer {
  const _$_Viewer(
      {@required this.name,
      @required this.icon,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(name != null),
        assert(icon != null),
        assert(typename != null),
        assert(typename == "Viewer");

  factory _$_Viewer.fromJson(Map<String, dynamic> json) =>
      _$_$_ViewerFromJson(json);

  @override
  final String name;
  @override
  final String icon;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Viewer(name: $name, icon: $icon, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Viewer &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ViewerCopyWith<_Viewer> get copyWith =>
      __$ViewerCopyWithImpl<_Viewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerToJson(this);
  }
}

abstract class _Viewer implements Viewer {
  const factory _Viewer(
      {@required String name,
      @required String icon,
      @required @JsonKey(name: '__typename') String typename}) = _$_Viewer;

  factory _Viewer.fromJson(Map<String, dynamic> json) = _$_Viewer.fromJson;

  @override
  String get name;
  @override
  String get icon;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ViewerCopyWith<_Viewer> get copyWith;
}
