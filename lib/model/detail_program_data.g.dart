// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_program_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProgramDetailData _$_$_ProgramDetailDataFromJson(Map<String, dynamic> json) {
  return _$_ProgramDetailData(
    viewer: json['viewer'] == null
        ? null
        : Viewer.fromJson(json['viewer'] as Map<String, dynamic>),
    program: json['program'] == null
        ? null
        : ProgramDetail.fromJson(json['program'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProgramDetailDataToJson(
        _$_ProgramDetailData instance) =>
    <String, dynamic>{
      'viewer': instance.viewer,
      'program': instance.program,
    };

_$_ProgramDetail _$_$_ProgramDetailFromJson(Map<String, dynamic> json) {
  return _$_ProgramDetail(
    id: json['id'] as String,
    channelId: json['channelId'] as String,
    tenantId: json['tenantId'] as String,
    adminComment: json['adminComment'] as String,
    adminCommentDisappearAt: json['adminCommentDisappearAt'] as int,
    broadcastAt: json['broadcastAt'] == null
        ? null
        : DateTime.parse(json['broadcastAt'] as String),
    detail: json['detail'] as String,
    mainTime: json['mainTime'] as int,
    previewTime: json['previewTime'] as int,
    release: json['release'] as bool,
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    title: json['title'] as String,
    totalPlayTime: json['totalPlayTime'] as int,
    viewerPlanType: json['viewerPlanType'] as String,
    isExtensionChargedToSubscribers:
        json['isExtensionChargedToSubscribers'] as bool,
    archivedAt: json['archivedAt'] as int,
    releaseState: json['releaseState'] as String,
    shouldArchive: json['shouldArchive'] as bool,
    extensions: json['extensions'] as List,
    typename: json['__typename'] as String,
    channel: json['channel'] == null
        ? null
        : DetailPrgChannel.fromJson(json['channel'] as Map<String, dynamic>),
    handouts: json['handouts'] == null
        ? null
        : Handouts.fromJson(json['handouts'] as Map<String, dynamic>),
    videos: json['videos'] == null
        ? null
        : Handouts.fromJson(json['videos'] as Map<String, dynamic>),
    onetimePlans: (json['onetimePlans'] as List)
        ?.map((e) =>
            e == null ? null : OnetimePlan.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ProgramDetailToJson(_$_ProgramDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'tenantId': instance.tenantId,
      'adminComment': instance.adminComment,
      'adminCommentDisappearAt': instance.adminCommentDisappearAt,
      'broadcastAt': instance.broadcastAt?.toIso8601String(),
      'detail': instance.detail,
      'mainTime': instance.mainTime,
      'previewTime': instance.previewTime,
      'release': instance.release,
      'tags': instance.tags,
      'title': instance.title,
      'totalPlayTime': instance.totalPlayTime,
      'viewerPlanType': instance.viewerPlanType,
      'isExtensionChargedToSubscribers':
          instance.isExtensionChargedToSubscribers,
      'archivedAt': instance.archivedAt,
      'releaseState': instance.releaseState,
      'shouldArchive': instance.shouldArchive,
      'extensions': instance.extensions,
      '__typename': instance.typename,
      'channel': instance.channel,
      'handouts': instance.handouts,
      'videos': instance.videos,
      'onetimePlans': instance.onetimePlans,
    };

_$_DetailPrgChannel _$_$_DetailPrgChannelFromJson(Map<String, dynamic> json) {
  return _$_DetailPrgChannel(
    id: json['id'] as String,
    tenantId: json['tenantId'] as String,
    name: json['name'] as String,
    icon: json['icon'],
    textOnPurchaseScreen: json['textOnPurchaseScreen'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_DetailPrgChannelToJson(
        _$_DetailPrgChannel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'name': instance.name,
      'icon': instance.icon,
      'textOnPurchaseScreen': instance.textOnPurchaseScreen,
      '__typename': instance.typename,
    };

_$_Handouts _$_$_HandoutsFromJson(Map<String, dynamic> json) {
  return _$_Handouts(
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : DetailPrgItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    nextToken: json['nextToken'],
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_HandoutsToJson(_$_Handouts instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextToken': instance.nextToken,
      '__typename': instance.typename,
    };

_$_DetailPrgItem _$_$_DetailPrgItemFromJson(Map<String, dynamic> json) {
  return _$_DetailPrgItem(
    id: json['id'] as String,
    videoType: json['videoType'] as String,
    mediaStatus: json['mediaStatus'] as String,
    liveUrl: json['liveUrl'] as String,
    archiveUrl: json['archiveUrl'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_DetailPrgItemToJson(_$_DetailPrgItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'videoType': instance.videoType,
      'mediaStatus': instance.mediaStatus,
      'liveUrl': instance.liveUrl,
      'archiveUrl': instance.archiveUrl,
      '__typename': instance.typename,
    };

_$_OnetimePlan _$_$_OnetimePlanFromJson(Map<String, dynamic> json) {
  return _$_OnetimePlan(
    id: json['id'] as String,
    parentPlanType: json['parentPlanType'] as String,
    parentPlanId: json['parentPlanId'] as String,
    productType: json['productType'] as String,
    productId: json['productId'] as String,
    name: json['name'] as String,
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    isPurchasable: json['isPurchasable'] as bool,
    viewerPurchasedPlan: json['viewerPurchasedPlan'],
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_OnetimePlanToJson(_$_OnetimePlan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentPlanType': instance.parentPlanType,
      'parentPlanId': instance.parentPlanId,
      'productType': instance.productType,
      'productId': instance.productId,
      'name': instance.name,
      'amount': instance.amount,
      'currency': instance.currency,
      'isPurchasable': instance.isPurchasable,
      'viewerPurchasedPlan': instance.viewerPurchasedPlan,
      '__typename': instance.typename,
    };

_$_Viewer _$_$_ViewerFromJson(Map<String, dynamic> json) {
  return _$_Viewer(
    name: json['name'] as String,
    icon: json['icon'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ViewerToJson(_$_Viewer instance) => <String, dynamic>{
      'name': instance.name,
      'icon': instance.icon,
      '__typename': instance.typename,
    };
