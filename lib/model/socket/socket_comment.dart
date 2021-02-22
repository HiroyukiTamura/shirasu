import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/mixins/media_status.dart';

part 'socket_comment.freezed.dart';

part 'socket_comment.g.dart';

@freezed
abstract class SocketComment with _$SocketComment {
  const factory SocketComment({
    @required String id,
    @required @protected @JsonKey(name: 'type') String rawType,
    @required Payload payload,
  }) = _SocketComment;

  factory SocketComment.fromJson(Map<String, dynamic> json) =>
      _$SocketCommentFromJson(json);

  const SocketComment._();
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({
    @required ProgramUpdateWrapper data,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);
}

@freezed
abstract class ProgramUpdateWrapper with _$ProgramUpdateWrapper {
  const factory ProgramUpdateWrapper({
    @required ProgramUpdate updates,
  }) = _ProgramUpdateWrapper;

  factory ProgramUpdateWrapper.fromJson(Map<String, dynamic> json) => _$ProgramUpdateWrapperFromJson(json);
}

@freezed
abstract class ProgramUpdate with _$ProgramUpdate {
  @Assert("typename == 'ProgramUpdate'")
  const factory ProgramUpdate({
    @required String programId,
    @required String updateType,
    @required UseProgramProgramData program,
    @required CommentWithUser comment,
    @required SocketHandout handout,
    @required SocketVideo video,
    @required dynamic totalPlayTime,
    @required @JsonKey(name: '__typename') String typename,
  }) = _ProgramUpdate;

  factory ProgramUpdate.fromJson(Map<String, dynamic> json) =>
      _$ProgramUpdateFromJson(json);
}

@freezed
abstract class CommentWithUser with _$CommentWithUser {
  @Assert("typename == 'CommentWithUser'")
  const factory CommentWithUser({
    @required String id,
    @required String tenantId,
    @required String programId,
    @required String text,
    @required int commentTime,
    @required String userId,
    @required String userName,
    @required String userIcon,
    @required @JsonKey(name: '__typename') String typename,
  }) = _CommentWithUser;

  factory CommentWithUser.fromJson(Map<String, dynamic> json) =>
      _$CommentWithUserFromJson(json);
}

@freezed
abstract class UseProgramProgramData with _$UseProgramProgramData {
  const factory UseProgramProgramData({
    @required String id,
    @required String channelId,
    @required String tenantId,
    DateTime broadcastAt,
    @required String title,
    @required String detail,
    @required int mainTime,
    @required int previewTime,
    @required bool release,
    String adminComment,
    DateTime adminCommentDisappearAt,
    @required List<String> tags,//todo
    bool isExtensionChargedToSubscribers,
    DateTime archivedAt,
    @required String releaseState,
    @required bool shouldArchive,
    @required @JsonKey(name: '__typename') String typename,
  }) = _UseProgramProgramData;

  factory UseProgramProgramData.fromJson(Map<String, dynamic> json) =>
      _$UseProgramProgramDataFromJson(json);
}

@freezed
abstract class SocketHandout with _$SocketHandout {
  const factory SocketHandout({
    @required String id,
    @required String name,
    @required DateTime createdAt,
    @required @JsonKey(name: '__typename') String typename,
  }) = _SocketHandout;

  factory SocketHandout.fromJson(Map<String, dynamic> json) =>
      _$SocketHandoutFromJson(json);
}

@freezed
abstract class SocketVideo with _$SocketVideo {
  const factory SocketVideo({
    @required String id,
    @required MediaStatus mediaStatus,
    String liveUrl,
    String archiveUrl,
    @required @JsonKey(name: '__typename') String typename,
  }) = _SocketVideo;

  factory SocketVideo.fromJson(Map<String, dynamic> json) =>
      _$SocketVideoFromJson(json);
}

@freezed
abstract class SocketMsgType with _$SocketMsgType {
  const factory SocketMsgType.connectionInit() = _ConnectionInit;

  const factory SocketMsgType.connectionAck() = _ConnectionAck;

  const factory SocketMsgType.ka() = _Ka;

  const factory SocketMsgType.startAck() = _StartAck;

  const factory SocketMsgType.data() = _Data;

  factory SocketMsgType.parse(String string) {
    switch (string) {
      case 'connection_init':
        return const SocketMsgType.connectionInit();
      case 'connection_ack':
        return const SocketMsgType.connectionAck();
      case 'ka':
        return const SocketMsgType.ka();
      case 'start_ack':
        return const SocketMsgType.startAck();
      case 'data':
        return const SocketMsgType.data();
      default:
        throw ArgumentError.value(string);
    }
  }
}
