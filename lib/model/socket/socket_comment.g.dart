// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocketComment _$_$_SocketCommentFromJson(Map<String, dynamic> json) {
  return _$_SocketComment(
    id: json['id'] as String,
    rawType: json['type'] as String,
    payload: json['payload'] == null
        ? null
        : Payload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_SocketCommentToJson(_$_SocketComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.rawType,
      'payload': instance.payload,
    };

_$_Payload _$_$_PayloadFromJson(Map<String, dynamic> json) {
  return _$_Payload(
    data: json['data'] == null
        ? null
        : ProgramUpdateWrapper.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_ProgramUpdateWrapper _$_$_ProgramUpdateWrapperFromJson(
    Map<String, dynamic> json) {
  return _$_ProgramUpdateWrapper(
    updates: json['updates'] == null
        ? null
        : ProgramUpdate.fromJson(json['updates'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProgramUpdateWrapperToJson(
        _$_ProgramUpdateWrapper instance) =>
    <String, dynamic>{
      'updates': instance.updates,
    };

_$_ProgramUpdate _$_$_ProgramUpdateFromJson(Map<String, dynamic> json) {
  return _$_ProgramUpdate(
    programId: json['programId'] as String,
    updateType: json['updateType'] as String,
    program: json['program'] == null
        ? null
        : UseProgramProgramData.fromJson(
            json['program'] as Map<String, dynamic>),
    comment: json['comment'] == null
        ? null
        : CommentWithUser.fromJson(json['comment'] as Map<String, dynamic>),
    handout: json['handout'] == null
        ? null
        : SocketHandout.fromJson(json['handout'] as Map<String, dynamic>),
    video: json['video'] == null
        ? null
        : SocketVideo.fromJson(json['video'] as Map<String, dynamic>),
    totalPlayTime: json['totalPlayTime'],
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_ProgramUpdateToJson(_$_ProgramUpdate instance) =>
    <String, dynamic>{
      'programId': instance.programId,
      'updateType': instance.updateType,
      'program': instance.program,
      'comment': instance.comment,
      'handout': instance.handout,
      'video': instance.video,
      'totalPlayTime': instance.totalPlayTime,
      '__typename': instance.typename,
    };

_$_CommentWithUser _$_$_CommentWithUserFromJson(Map<String, dynamic> json) {
  return _$_CommentWithUser(
    id: json['id'] as String,
    tenantId: json['tenantId'] as String,
    programId: json['programId'] as String,
    text: json['text'] as String,
    commentTime: json['commentTime'] as int,
    userId: json['userId'] as String,
    userName: json['userName'] as String,
    userIcon: json['userIcon'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_CommentWithUserToJson(_$_CommentWithUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tenantId': instance.tenantId,
      'programId': instance.programId,
      'text': instance.text,
      'commentTime': instance.commentTime,
      'userId': instance.userId,
      'userName': instance.userName,
      'userIcon': instance.userIcon,
      '__typename': instance.typename,
    };

_$_UseProgramProgramData _$_$_UseProgramProgramDataFromJson(
    Map<String, dynamic> json) {
  return _$_UseProgramProgramData(
    id: json['id'] as String,
    channelId: json['channelId'] as String,
    tenantId: json['tenantId'] as String,
    broadcastAt: json['broadcastAt'] == null
        ? null
        : DateTime.parse(json['broadcastAt'] as String),
    title: json['title'] as String,
    detail: json['detail'] as String,
    mainTime: json['mainTime'] as int,
    previewTime: json['previewTime'] as int,
    release: json['release'] as bool,
    adminComment: json['adminComment'] as String,
    adminCommentDisappearAt: json['adminCommentDisappearAt'] == null
        ? null
        : DateTime.parse(json['adminCommentDisappearAt'] as String),
    tags: (json['tags'] as List)?.map((e) => e as String)?.toList(),
    isExtensionChargedToSubscribers:
        json['isExtensionChargedToSubscribers'] as bool,
    archivedAt: json['archivedAt'] == null
        ? null
        : DateTime.parse(json['archivedAt'] as String),
    releaseState: json['releaseState'] as String,
    shouldArchive: json['shouldArchive'] as bool,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_UseProgramProgramDataToJson(
        _$_UseProgramProgramData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'tenantId': instance.tenantId,
      'broadcastAt': instance.broadcastAt?.toIso8601String(),
      'title': instance.title,
      'detail': instance.detail,
      'mainTime': instance.mainTime,
      'previewTime': instance.previewTime,
      'release': instance.release,
      'adminComment': instance.adminComment,
      'adminCommentDisappearAt':
          instance.adminCommentDisappearAt?.toIso8601String(),
      'tags': instance.tags,
      'isExtensionChargedToSubscribers':
          instance.isExtensionChargedToSubscribers,
      'archivedAt': instance.archivedAt?.toIso8601String(),
      'releaseState': instance.releaseState,
      'shouldArchive': instance.shouldArchive,
      '__typename': instance.typename,
    };

_$_SocketHandout _$_$_SocketHandoutFromJson(Map<String, dynamic> json) {
  return _$_SocketHandout(
    id: json['id'] as String,
    name: json['name'] as String,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_SocketHandoutToJson(_$_SocketHandout instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdAt': instance.createdAt?.toIso8601String(),
      '__typename': instance.typename,
    };

_$_SocketVideo _$_$_SocketVideoFromJson(Map<String, dynamic> json) {
  return _$_SocketVideo(
    id: json['id'] as String,
    mediaStatus:
        _$enumDecodeNullable(_$MediaStatusEnumMap, json['mediaStatus']),
    liveUrl: json['liveUrl'] as String,
    archiveUrl: json['archiveUrl'] as String,
    typename: json['__typename'] as String,
  );
}

Map<String, dynamic> _$_$_SocketVideoToJson(_$_SocketVideo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaStatus': _$MediaStatusEnumMap[instance.mediaStatus],
      'liveUrl': instance.liveUrl,
      'archiveUrl': instance.archiveUrl,
      '__typename': instance.typename,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$MediaStatusEnumMap = {
  MediaStatus.ENDED: 'ENDED',
  MediaStatus.WAITING: 'WAITING',
  MediaStatus.RUNNING: 'RUNNING',
};
