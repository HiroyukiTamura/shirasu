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
class _$_ProgramDetailData extends _ProgramDetailData {
  _$_ProgramDetailData({@required this.viewer, @required this.program})
      : assert(viewer != null),
        assert(program != null),
        super._();

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

  @override
  _$ProgramDetailDataCopyWith<_ProgramDetailData> get copyWith =>
      __$ProgramDetailDataCopyWithImpl<_ProgramDetailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramDetailDataToJson(this);
  }
}

abstract class _ProgramDetailData extends ProgramDetailData {
  _ProgramDetailData._() : super._();
  factory _ProgramDetailData(
      {@required Viewer viewer,
      @required ProgramDetail program}) = _$_ProgramDetailData;

  factory _ProgramDetailData.fromJson(Map<String, dynamic> json) =
      _$_ProgramDetailData.fromJson;

  @override
  Viewer get viewer;
  @override
  ProgramDetail get program;
  @override
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
      {@required String id,
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
      @required List<OnetimePlan> onetimePlans}) {
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
      tags: tags,
      title: title,
      totalPlayTime: totalPlayTime,
      viewerPlanType: viewerPlanType,
      isExtensionChargedToSubscribers: isExtensionChargedToSubscribers,
      archivedAt: archivedAt,
      releaseState: releaseState,
      shouldArchive: shouldArchive,
      extensions: extensions,
      typename: typename,
      channel: channel,
      handouts: handouts,
      videos: videos,
      onetimePlans: onetimePlans,
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
  int get adminCommentDisappearAt;
  DateTime get broadcastAt;
  String get detail;
  int get mainTime;
  int get previewTime;
  bool get release;
  List<String> get tags;
  String get title;
  int get totalPlayTime;
  String get viewerPlanType;
  bool get isExtensionChargedToSubscribers;
  DateTime get archivedAt;
  String get releaseState;
  bool get shouldArchive;
  List<dynamic> get extensions;
  @JsonKey(name: '__typename')
  String get typename;
  DetailPrgChannel get channel;
  Handouts get handouts;
  Handouts get videos;
  List<OnetimePlan> get onetimePlans;

  Map<String, dynamic> toJson();
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
      int adminCommentDisappearAt,
      DateTime broadcastAt,
      String detail,
      int mainTime,
      int previewTime,
      bool release,
      List<String> tags,
      String title,
      int totalPlayTime,
      String viewerPlanType,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      String releaseState,
      bool shouldArchive,
      List<dynamic> extensions,
      @JsonKey(name: '__typename') String typename,
      DetailPrgChannel channel,
      Handouts handouts,
      Handouts videos,
      List<OnetimePlan> onetimePlans});

  $DetailPrgChannelCopyWith<$Res> get channel;
  $HandoutsCopyWith<$Res> get handouts;
  $HandoutsCopyWith<$Res> get videos;
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
    Object tags = freezed,
    Object title = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object isExtensionChargedToSubscribers = freezed,
    Object archivedAt = freezed,
    Object releaseState = freezed,
    Object shouldArchive = freezed,
    Object extensions = freezed,
    Object typename = freezed,
    Object channel = freezed,
    Object handouts = freezed,
    Object videos = freezed,
    Object onetimePlans = freezed,
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
          : adminCommentDisappearAt as int,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      detail: detail == freezed ? _value.detail : detail as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      previewTime:
          previewTime == freezed ? _value.previewTime : previewTime as int,
      release: release == freezed ? _value.release : release as bool,
      tags: tags == freezed ? _value.tags : tags as List<String>,
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
      extensions: extensions == freezed
          ? _value.extensions
          : extensions as List<dynamic>,
      typename: typename == freezed ? _value.typename : typename as String,
      channel:
          channel == freezed ? _value.channel : channel as DetailPrgChannel,
      handouts: handouts == freezed ? _value.handouts : handouts as Handouts,
      videos: videos == freezed ? _value.videos : videos as Handouts,
      onetimePlans: onetimePlans == freezed
          ? _value.onetimePlans
          : onetimePlans as List<OnetimePlan>,
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
  $HandoutsCopyWith<$Res> get videos {
    if (_value.videos == null) {
      return null;
    }
    return $HandoutsCopyWith<$Res>(_value.videos, (value) {
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
      int adminCommentDisappearAt,
      DateTime broadcastAt,
      String detail,
      int mainTime,
      int previewTime,
      bool release,
      List<String> tags,
      String title,
      int totalPlayTime,
      String viewerPlanType,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      String releaseState,
      bool shouldArchive,
      List<dynamic> extensions,
      @JsonKey(name: '__typename') String typename,
      DetailPrgChannel channel,
      Handouts handouts,
      Handouts videos,
      List<OnetimePlan> onetimePlans});

  @override
  $DetailPrgChannelCopyWith<$Res> get channel;
  @override
  $HandoutsCopyWith<$Res> get handouts;
  @override
  $HandoutsCopyWith<$Res> get videos;
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
    Object tags = freezed,
    Object title = freezed,
    Object totalPlayTime = freezed,
    Object viewerPlanType = freezed,
    Object isExtensionChargedToSubscribers = freezed,
    Object archivedAt = freezed,
    Object releaseState = freezed,
    Object shouldArchive = freezed,
    Object extensions = freezed,
    Object typename = freezed,
    Object channel = freezed,
    Object handouts = freezed,
    Object videos = freezed,
    Object onetimePlans = freezed,
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
          : adminCommentDisappearAt as int,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      detail: detail == freezed ? _value.detail : detail as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      previewTime:
          previewTime == freezed ? _value.previewTime : previewTime as int,
      release: release == freezed ? _value.release : release as bool,
      tags: tags == freezed ? _value.tags : tags as List<String>,
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
      extensions: extensions == freezed
          ? _value.extensions
          : extensions as List<dynamic>,
      typename: typename == freezed ? _value.typename : typename as String,
      channel:
          channel == freezed ? _value.channel : channel as DetailPrgChannel,
      handouts: handouts == freezed ? _value.handouts : handouts as Handouts,
      videos: videos == freezed ? _value.videos : videos as Handouts,
      onetimePlans: onetimePlans == freezed
          ? _value.onetimePlans
          : onetimePlans as List<OnetimePlan>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramDetail implements _ProgramDetail {
  _$_ProgramDetail(
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
      @required this.tags,
      @required this.title,
      @required this.totalPlayTime,
      this.viewerPlanType,
      this.isExtensionChargedToSubscribers,
      this.archivedAt,
      @required this.releaseState,
      @required this.shouldArchive,
      @required this.extensions,
      @required @JsonKey(name: '__typename') this.typename,
      @required this.channel,
      @required this.handouts,
      @required this.videos,
      @required this.onetimePlans})
      : assert(id != null),
        assert(channelId != null),
        assert(tenantId != null),
        assert(broadcastAt != null),
        assert(detail != null),
        assert(mainTime != null),
        assert(previewTime != null),
        assert(release != null),
        assert(tags != null),
        assert(title != null),
        assert(totalPlayTime != null),
        assert(releaseState != null),
        assert(shouldArchive != null),
        assert(extensions != null),
        assert(typename != null),
        assert(channel != null),
        assert(handouts != null),
        assert(videos != null),
        assert(onetimePlans != null);

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
  final int adminCommentDisappearAt;
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
  final List<String> tags;
  @override
  final String title;
  @override
  final int totalPlayTime;
  @override
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
  final List<dynamic> extensions;
  @override
  @JsonKey(name: '__typename')
  final String typename;
  @override
  final DetailPrgChannel channel;
  @override
  final Handouts handouts;
  @override
  final Handouts videos;
  @override
  final List<OnetimePlan> onetimePlans;

  @override
  String toString() {
    return 'ProgramDetail(id: $id, channelId: $channelId, tenantId: $tenantId, adminComment: $adminComment, adminCommentDisappearAt: $adminCommentDisappearAt, broadcastAt: $broadcastAt, detail: $detail, mainTime: $mainTime, previewTime: $previewTime, release: $release, tags: $tags, title: $title, totalPlayTime: $totalPlayTime, viewerPlanType: $viewerPlanType, isExtensionChargedToSubscribers: $isExtensionChargedToSubscribers, archivedAt: $archivedAt, releaseState: $releaseState, shouldArchive: $shouldArchive, extensions: $extensions, typename: $typename, channel: $channel, handouts: $handouts, videos: $videos, onetimePlans: $onetimePlans)';
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
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
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
            (identical(other.extensions, extensions) || const DeepCollectionEquality().equals(other.extensions, extensions)) &&
            (identical(other.typename, typename) || const DeepCollectionEquality().equals(other.typename, typename)) &&
            (identical(other.channel, channel) || const DeepCollectionEquality().equals(other.channel, channel)) &&
            (identical(other.handouts, handouts) || const DeepCollectionEquality().equals(other.handouts, handouts)) &&
            (identical(other.videos, videos) || const DeepCollectionEquality().equals(other.videos, videos)) &&
            (identical(other.onetimePlans, onetimePlans) || const DeepCollectionEquality().equals(other.onetimePlans, onetimePlans)));
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
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(totalPlayTime) ^
      const DeepCollectionEquality().hash(viewerPlanType) ^
      const DeepCollectionEquality().hash(isExtensionChargedToSubscribers) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      const DeepCollectionEquality().hash(releaseState) ^
      const DeepCollectionEquality().hash(shouldArchive) ^
      const DeepCollectionEquality().hash(extensions) ^
      const DeepCollectionEquality().hash(typename) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(handouts) ^
      const DeepCollectionEquality().hash(videos) ^
      const DeepCollectionEquality().hash(onetimePlans);

  @override
  _$ProgramDetailCopyWith<_ProgramDetail> get copyWith =>
      __$ProgramDetailCopyWithImpl<_ProgramDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramDetailToJson(this);
  }
}

abstract class _ProgramDetail implements ProgramDetail {
  factory _ProgramDetail(
      {@required String id,
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
      @required List<OnetimePlan> onetimePlans}) = _$_ProgramDetail;

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
  int get adminCommentDisappearAt;
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
  List<String> get tags;
  @override
  String get title;
  @override
  int get totalPlayTime;
  @override
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
  List<dynamic> get extensions;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  DetailPrgChannel get channel;
  @override
  Handouts get handouts;
  @override
  Handouts get videos;
  @override
  List<OnetimePlan> get onetimePlans;
  @override
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
  _$_DetailPrgChannel(
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
        assert(typename != null);

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

  @override
  _$DetailPrgChannelCopyWith<_DetailPrgChannel> get copyWith =>
      __$DetailPrgChannelCopyWithImpl<_DetailPrgChannel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailPrgChannelToJson(this);
  }
}

abstract class _DetailPrgChannel implements DetailPrgChannel {
  factory _DetailPrgChannel(
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
  _$DetailPrgChannelCopyWith<_DetailPrgChannel> get copyWith;
}

Handouts _$HandoutsFromJson(Map<String, dynamic> json) {
  return _Handouts.fromJson(json);
}

/// @nodoc
class _$HandoutsTearOff {
  const _$HandoutsTearOff();

// ignore: unused_element
  _Handouts call(
      {@required List<DetailPrgItem> items,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) {
    return _Handouts(
      items: items,
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
  List<DetailPrgItem> get items;
  String get nextToken;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $HandoutsCopyWith<Handouts> get copyWith;
}

/// @nodoc
abstract class $HandoutsCopyWith<$Res> {
  factory $HandoutsCopyWith(Handouts value, $Res Function(Handouts) then) =
      _$HandoutsCopyWithImpl<$Res>;
  $Res call(
      {List<DetailPrgItem> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<DetailPrgItem>,
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
      {List<DetailPrgItem> items,
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
    Object items = freezed,
    Object nextToken = freezed,
    Object typename = freezed,
  }) {
    return _then(_Handouts(
      items: items == freezed ? _value.items : items as List<DetailPrgItem>,
      nextToken: nextToken == freezed ? _value.nextToken : nextToken as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Handouts implements _Handouts {
  _$_Handouts(
      {@required this.items,
      this.nextToken,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(items != null),
        assert(typename != null);

  factory _$_Handouts.fromJson(Map<String, dynamic> json) =>
      _$_$_HandoutsFromJson(json);

  @override
  final List<DetailPrgItem> items;
  @override
  final String nextToken;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'Handouts(items: $items, nextToken: $nextToken, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Handouts &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
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
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(nextToken) ^
      const DeepCollectionEquality().hash(typename);

  @override
  _$HandoutsCopyWith<_Handouts> get copyWith =>
      __$HandoutsCopyWithImpl<_Handouts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HandoutsToJson(this);
  }
}

abstract class _Handouts implements Handouts {
  factory _Handouts(
      {@required List<DetailPrgItem> items,
      String nextToken,
      @required @JsonKey(name: '__typename') String typename}) = _$_Handouts;

  factory _Handouts.fromJson(Map<String, dynamic> json) = _$_Handouts.fromJson;

  @override
  List<DetailPrgItem> get items;
  @override
  String get nextToken;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$HandoutsCopyWith<_Handouts> get copyWith;
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
      @required String videoType,
      @required String mediaStatus,
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
  String get videoType;
  String get mediaStatus;
  String get liveUrl;
  String get archiveUrl;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $DetailPrgItemCopyWith<DetailPrgItem> get copyWith;
}

/// @nodoc
abstract class $DetailPrgItemCopyWith<$Res> {
  factory $DetailPrgItemCopyWith(
          DetailPrgItem value, $Res Function(DetailPrgItem) then) =
      _$DetailPrgItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String videoType,
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
      String videoType,
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
  _$_DetailPrgItem(
      {@required this.id,
      @required this.videoType,
      @required this.mediaStatus,
      this.liveUrl,
      this.archiveUrl,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(videoType != null),
        assert(mediaStatus != null),
        assert(typename != null),
        super._();

  factory _$_DetailPrgItem.fromJson(Map<String, dynamic> json) =>
      _$_$_DetailPrgItemFromJson(json);

  @override
  final String id;
  @override
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

  @override
  _$DetailPrgItemCopyWith<_DetailPrgItem> get copyWith =>
      __$DetailPrgItemCopyWithImpl<_DetailPrgItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DetailPrgItemToJson(this);
  }
}

abstract class _DetailPrgItem extends DetailPrgItem {
  _DetailPrgItem._() : super._();
  factory _DetailPrgItem(
          {@required String id,
          @required String videoType,
          @required String mediaStatus,
          String liveUrl,
          String archiveUrl,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_DetailPrgItem;

  factory _DetailPrgItem.fromJson(Map<String, dynamic> json) =
      _$_DetailPrgItem.fromJson;

  @override
  String get id;
  @override
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
      @required String parentPlanType,
      @required String parentPlanId,
      @required String productType,
      @required String productId,
      @required String name,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      dynamic viewerPurchasedPlan,
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
  String get parentPlanType;
  String get parentPlanId;
  String get productType;
  String get productId;
  String get name;
  int get amount;
  String get currency;
  bool get isPurchasable;
  dynamic get viewerPurchasedPlan;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  $OnetimePlanCopyWith<OnetimePlan> get copyWith;
}

/// @nodoc
abstract class $OnetimePlanCopyWith<$Res> {
  factory $OnetimePlanCopyWith(
          OnetimePlan value, $Res Function(OnetimePlan) then) =
      _$OnetimePlanCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String parentPlanType,
      String parentPlanId,
      String productType,
      String productId,
      String name,
      int amount,
      String currency,
      bool isPurchasable,
      dynamic viewerPurchasedPlan,
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
          : viewerPurchasedPlan as dynamic,
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
      String parentPlanType,
      String parentPlanId,
      String productType,
      String productId,
      String name,
      int amount,
      String currency,
      bool isPurchasable,
      dynamic viewerPurchasedPlan,
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
          : viewerPurchasedPlan as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_OnetimePlan implements _OnetimePlan {
  _$_OnetimePlan(
      {@required this.id,
      @required this.parentPlanType,
      @required this.parentPlanId,
      @required this.productType,
      @required this.productId,
      @required this.name,
      @required this.amount,
      @required this.currency,
      @required this.isPurchasable,
      this.viewerPurchasedPlan,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(parentPlanType != null),
        assert(parentPlanId != null),
        assert(productType != null),
        assert(productId != null),
        assert(name != null),
        assert(amount != null),
        assert(currency != null),
        assert(isPurchasable != null),
        assert(typename != null);

  factory _$_OnetimePlan.fromJson(Map<String, dynamic> json) =>
      _$_$_OnetimePlanFromJson(json);

  @override
  final String id;
  @override
  final String parentPlanType;
  @override
  final String parentPlanId;
  @override
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
  final dynamic viewerPurchasedPlan;
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

  @override
  _$OnetimePlanCopyWith<_OnetimePlan> get copyWith =>
      __$OnetimePlanCopyWithImpl<_OnetimePlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OnetimePlanToJson(this);
  }
}

abstract class _OnetimePlan implements OnetimePlan {
  factory _OnetimePlan(
      {@required String id,
      @required String parentPlanType,
      @required String parentPlanId,
      @required String productType,
      @required String productId,
      @required String name,
      @required int amount,
      @required String currency,
      @required bool isPurchasable,
      dynamic viewerPurchasedPlan,
      @required @JsonKey(name: '__typename') String typename}) = _$_OnetimePlan;

  factory _OnetimePlan.fromJson(Map<String, dynamic> json) =
      _$_OnetimePlan.fromJson;

  @override
  String get id;
  @override
  String get parentPlanType;
  @override
  String get parentPlanId;
  @override
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
  dynamic get viewerPurchasedPlan;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  _$OnetimePlanCopyWith<_OnetimePlan> get copyWith;
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
  _$_Viewer(
      {@required this.name,
      @required this.icon,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(name != null),
        assert(icon != null),
        assert(typename != null);

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

  @override
  _$ViewerCopyWith<_Viewer> get copyWith =>
      __$ViewerCopyWithImpl<_Viewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ViewerToJson(this);
  }
}

abstract class _Viewer implements Viewer {
  factory _Viewer(
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
  _$ViewerCopyWith<_Viewer> get copyWith;
}
