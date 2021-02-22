// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'socket_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
SocketComment _$SocketCommentFromJson(Map<String, dynamic> json) {
  return _SocketComment.fromJson(json);
}

/// @nodoc
class _$SocketCommentTearOff {
  const _$SocketCommentTearOff();

// ignore: unused_element
  _SocketComment call(
      {@required String id,
      @required @protected @JsonKey(name: 'type') String rawType,
      @required Payload payload}) {
    return _SocketComment(
      id: id,
      rawType: rawType,
      payload: payload,
    );
  }

// ignore: unused_element
  SocketComment fromJson(Map<String, Object> json) {
    return SocketComment.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SocketComment = _$SocketCommentTearOff();

/// @nodoc
mixin _$SocketComment {
  String get id;
  @protected
  @JsonKey(name: 'type')
  String get rawType;
  Payload get payload;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SocketCommentCopyWith<SocketComment> get copyWith;
}

/// @nodoc
abstract class $SocketCommentCopyWith<$Res> {
  factory $SocketCommentCopyWith(
          SocketComment value, $Res Function(SocketComment) then) =
      _$SocketCommentCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @protected @JsonKey(name: 'type') String rawType,
      Payload payload});

  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$SocketCommentCopyWithImpl<$Res>
    implements $SocketCommentCopyWith<$Res> {
  _$SocketCommentCopyWithImpl(this._value, this._then);

  final SocketComment _value;
  // ignore: unused_field
  final $Res Function(SocketComment) _then;

  @override
  $Res call({
    Object id = freezed,
    Object rawType = freezed,
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      rawType: rawType == freezed ? _value.rawType : rawType as String,
      payload: payload == freezed ? _value.payload : payload as Payload,
    ));
  }

  @override
  $PayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $PayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$SocketCommentCopyWith<$Res>
    implements $SocketCommentCopyWith<$Res> {
  factory _$SocketCommentCopyWith(
          _SocketComment value, $Res Function(_SocketComment) then) =
      __$SocketCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @protected @JsonKey(name: 'type') String rawType,
      Payload payload});

  @override
  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$SocketCommentCopyWithImpl<$Res>
    extends _$SocketCommentCopyWithImpl<$Res>
    implements _$SocketCommentCopyWith<$Res> {
  __$SocketCommentCopyWithImpl(
      _SocketComment _value, $Res Function(_SocketComment) _then)
      : super(_value, (v) => _then(v as _SocketComment));

  @override
  _SocketComment get _value => super._value as _SocketComment;

  @override
  $Res call({
    Object id = freezed,
    Object rawType = freezed,
    Object payload = freezed,
  }) {
    return _then(_SocketComment(
      id: id == freezed ? _value.id : id as String,
      rawType: rawType == freezed ? _value.rawType : rawType as String,
      payload: payload == freezed ? _value.payload : payload as Payload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SocketComment extends _SocketComment {
  const _$_SocketComment(
      {@required this.id,
      @required @protected @JsonKey(name: 'type') this.rawType,
      @required this.payload})
      : assert(id != null),
        assert(rawType != null),
        assert(payload != null),
        super._();

  factory _$_SocketComment.fromJson(Map<String, dynamic> json) =>
      _$_$_SocketCommentFromJson(json);

  @override
  final String id;
  @override
  @protected
  @JsonKey(name: 'type')
  final String rawType;
  @override
  final Payload payload;

  @override
  String toString() {
    return 'SocketComment(id: $id, rawType: $rawType, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SocketComment &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.rawType, rawType) ||
                const DeepCollectionEquality()
                    .equals(other.rawType, rawType)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(rawType) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$SocketCommentCopyWith<_SocketComment> get copyWith =>
      __$SocketCommentCopyWithImpl<_SocketComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SocketCommentToJson(this);
  }
}

abstract class _SocketComment extends SocketComment {
  const _SocketComment._() : super._();
  const factory _SocketComment(
      {@required String id,
      @required @protected @JsonKey(name: 'type') String rawType,
      @required Payload payload}) = _$_SocketComment;

  factory _SocketComment.fromJson(Map<String, dynamic> json) =
      _$_SocketComment.fromJson;

  @override
  String get id;
  @override
  @protected
  @JsonKey(name: 'type')
  String get rawType;
  @override
  Payload get payload;
  @override
  @JsonKey(ignore: true)
  _$SocketCommentCopyWith<_SocketComment> get copyWith;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
class _$PayloadTearOff {
  const _$PayloadTearOff();

// ignore: unused_element
  _Payload call({@required ProgramUpdateWrapper data}) {
    return _Payload(
      data: data,
    );
  }

// ignore: unused_element
  Payload fromJson(Map<String, Object> json) {
    return Payload.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Payload = _$PayloadTearOff();

/// @nodoc
mixin _$Payload {
  ProgramUpdateWrapper get data;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res>;
  $Res call({ProgramUpdateWrapper data});

  $ProgramUpdateWrapperCopyWith<$Res> get data;
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  final Payload _value;
  // ignore: unused_field
  final $Res Function(Payload) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as ProgramUpdateWrapper,
    ));
  }

  @override
  $ProgramUpdateWrapperCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $ProgramUpdateWrapperCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) then) =
      __$PayloadCopyWithImpl<$Res>;
  @override
  $Res call({ProgramUpdateWrapper data});

  @override
  $ProgramUpdateWrapperCopyWith<$Res> get data;
}

/// @nodoc
class __$PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(_Payload _value, $Res Function(_Payload) _then)
      : super(_value, (v) => _then(v as _Payload));

  @override
  _Payload get _value => super._value as _Payload;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_Payload(
      data: data == freezed ? _value.data : data as ProgramUpdateWrapper,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Payload implements _Payload {
  const _$_Payload({@required this.data}) : assert(data != null);

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$_$_PayloadFromJson(json);

  @override
  final ProgramUpdateWrapper data;

  @override
  String toString() {
    return 'Payload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payload &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$PayloadCopyWith<_Payload> get copyWith =>
      __$PayloadCopyWithImpl<_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PayloadToJson(this);
  }
}

abstract class _Payload implements Payload {
  const factory _Payload({@required ProgramUpdateWrapper data}) = _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  ProgramUpdateWrapper get data;
  @override
  @JsonKey(ignore: true)
  _$PayloadCopyWith<_Payload> get copyWith;
}

ProgramUpdateWrapper _$ProgramUpdateWrapperFromJson(Map<String, dynamic> json) {
  return _ProgramUpdateWrapper.fromJson(json);
}

/// @nodoc
class _$ProgramUpdateWrapperTearOff {
  const _$ProgramUpdateWrapperTearOff();

// ignore: unused_element
  _ProgramUpdateWrapper call({@required ProgramUpdate updates}) {
    return _ProgramUpdateWrapper(
      updates: updates,
    );
  }

// ignore: unused_element
  ProgramUpdateWrapper fromJson(Map<String, Object> json) {
    return ProgramUpdateWrapper.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProgramUpdateWrapper = _$ProgramUpdateWrapperTearOff();

/// @nodoc
mixin _$ProgramUpdateWrapper {
  ProgramUpdate get updates;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramUpdateWrapperCopyWith<ProgramUpdateWrapper> get copyWith;
}

/// @nodoc
abstract class $ProgramUpdateWrapperCopyWith<$Res> {
  factory $ProgramUpdateWrapperCopyWith(ProgramUpdateWrapper value,
          $Res Function(ProgramUpdateWrapper) then) =
      _$ProgramUpdateWrapperCopyWithImpl<$Res>;
  $Res call({ProgramUpdate updates});

  $ProgramUpdateCopyWith<$Res> get updates;
}

/// @nodoc
class _$ProgramUpdateWrapperCopyWithImpl<$Res>
    implements $ProgramUpdateWrapperCopyWith<$Res> {
  _$ProgramUpdateWrapperCopyWithImpl(this._value, this._then);

  final ProgramUpdateWrapper _value;
  // ignore: unused_field
  final $Res Function(ProgramUpdateWrapper) _then;

  @override
  $Res call({
    Object updates = freezed,
  }) {
    return _then(_value.copyWith(
      updates: updates == freezed ? _value.updates : updates as ProgramUpdate,
    ));
  }

  @override
  $ProgramUpdateCopyWith<$Res> get updates {
    if (_value.updates == null) {
      return null;
    }
    return $ProgramUpdateCopyWith<$Res>(_value.updates, (value) {
      return _then(_value.copyWith(updates: value));
    });
  }
}

/// @nodoc
abstract class _$ProgramUpdateWrapperCopyWith<$Res>
    implements $ProgramUpdateWrapperCopyWith<$Res> {
  factory _$ProgramUpdateWrapperCopyWith(_ProgramUpdateWrapper value,
          $Res Function(_ProgramUpdateWrapper) then) =
      __$ProgramUpdateWrapperCopyWithImpl<$Res>;
  @override
  $Res call({ProgramUpdate updates});

  @override
  $ProgramUpdateCopyWith<$Res> get updates;
}

/// @nodoc
class __$ProgramUpdateWrapperCopyWithImpl<$Res>
    extends _$ProgramUpdateWrapperCopyWithImpl<$Res>
    implements _$ProgramUpdateWrapperCopyWith<$Res> {
  __$ProgramUpdateWrapperCopyWithImpl(
      _ProgramUpdateWrapper _value, $Res Function(_ProgramUpdateWrapper) _then)
      : super(_value, (v) => _then(v as _ProgramUpdateWrapper));

  @override
  _ProgramUpdateWrapper get _value => super._value as _ProgramUpdateWrapper;

  @override
  $Res call({
    Object updates = freezed,
  }) {
    return _then(_ProgramUpdateWrapper(
      updates: updates == freezed ? _value.updates : updates as ProgramUpdate,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramUpdateWrapper implements _ProgramUpdateWrapper {
  const _$_ProgramUpdateWrapper({@required this.updates})
      : assert(updates != null);

  factory _$_ProgramUpdateWrapper.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramUpdateWrapperFromJson(json);

  @override
  final ProgramUpdate updates;

  @override
  String toString() {
    return 'ProgramUpdateWrapper(updates: $updates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramUpdateWrapper &&
            (identical(other.updates, updates) ||
                const DeepCollectionEquality().equals(other.updates, updates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(updates);

  @JsonKey(ignore: true)
  @override
  _$ProgramUpdateWrapperCopyWith<_ProgramUpdateWrapper> get copyWith =>
      __$ProgramUpdateWrapperCopyWithImpl<_ProgramUpdateWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramUpdateWrapperToJson(this);
  }
}

abstract class _ProgramUpdateWrapper implements ProgramUpdateWrapper {
  const factory _ProgramUpdateWrapper({@required ProgramUpdate updates}) =
      _$_ProgramUpdateWrapper;

  factory _ProgramUpdateWrapper.fromJson(Map<String, dynamic> json) =
      _$_ProgramUpdateWrapper.fromJson;

  @override
  ProgramUpdate get updates;
  @override
  @JsonKey(ignore: true)
  _$ProgramUpdateWrapperCopyWith<_ProgramUpdateWrapper> get copyWith;
}

ProgramUpdate _$ProgramUpdateFromJson(Map<String, dynamic> json) {
  return _ProgramUpdate.fromJson(json);
}

/// @nodoc
class _$ProgramUpdateTearOff {
  const _$ProgramUpdateTearOff();

// ignore: unused_element
  _ProgramUpdate call(
      {@required String programId,
      @required String updateType,
      @required UseProgramProgramData program,
      @required CommentWithUser comment,
      @required SocketHandout handout,
      @required SocketVideo video,
      @required dynamic totalPlayTime,
      @required @JsonKey(name: '__typename') String typename}) {
    return _ProgramUpdate(
      programId: programId,
      updateType: updateType,
      program: program,
      comment: comment,
      handout: handout,
      video: video,
      totalPlayTime: totalPlayTime,
      typename: typename,
    );
  }

// ignore: unused_element
  ProgramUpdate fromJson(Map<String, Object> json) {
    return ProgramUpdate.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ProgramUpdate = _$ProgramUpdateTearOff();

/// @nodoc
mixin _$ProgramUpdate {
  String get programId;
  String get updateType;
  UseProgramProgramData get program;
  CommentWithUser get comment;
  SocketHandout get handout;
  SocketVideo get video;
  dynamic get totalPlayTime;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ProgramUpdateCopyWith<ProgramUpdate> get copyWith;
}

/// @nodoc
abstract class $ProgramUpdateCopyWith<$Res> {
  factory $ProgramUpdateCopyWith(
          ProgramUpdate value, $Res Function(ProgramUpdate) then) =
      _$ProgramUpdateCopyWithImpl<$Res>;
  $Res call(
      {String programId,
      String updateType,
      UseProgramProgramData program,
      CommentWithUser comment,
      SocketHandout handout,
      SocketVideo video,
      dynamic totalPlayTime,
      @JsonKey(name: '__typename') String typename});

  $UseProgramProgramDataCopyWith<$Res> get program;
  $CommentWithUserCopyWith<$Res> get comment;
  $SocketHandoutCopyWith<$Res> get handout;
  $SocketVideoCopyWith<$Res> get video;
}

/// @nodoc
class _$ProgramUpdateCopyWithImpl<$Res>
    implements $ProgramUpdateCopyWith<$Res> {
  _$ProgramUpdateCopyWithImpl(this._value, this._then);

  final ProgramUpdate _value;
  // ignore: unused_field
  final $Res Function(ProgramUpdate) _then;

  @override
  $Res call({
    Object programId = freezed,
    Object updateType = freezed,
    Object program = freezed,
    Object comment = freezed,
    Object handout = freezed,
    Object video = freezed,
    Object totalPlayTime = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      programId: programId == freezed ? _value.programId : programId as String,
      updateType:
          updateType == freezed ? _value.updateType : updateType as String,
      program: program == freezed
          ? _value.program
          : program as UseProgramProgramData,
      comment: comment == freezed ? _value.comment : comment as CommentWithUser,
      handout: handout == freezed ? _value.handout : handout as SocketHandout,
      video: video == freezed ? _value.video : video as SocketVideo,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }

  @override
  $UseProgramProgramDataCopyWith<$Res> get program {
    if (_value.program == null) {
      return null;
    }
    return $UseProgramProgramDataCopyWith<$Res>(_value.program, (value) {
      return _then(_value.copyWith(program: value));
    });
  }

  @override
  $CommentWithUserCopyWith<$Res> get comment {
    if (_value.comment == null) {
      return null;
    }
    return $CommentWithUserCopyWith<$Res>(_value.comment, (value) {
      return _then(_value.copyWith(comment: value));
    });
  }

  @override
  $SocketHandoutCopyWith<$Res> get handout {
    if (_value.handout == null) {
      return null;
    }
    return $SocketHandoutCopyWith<$Res>(_value.handout, (value) {
      return _then(_value.copyWith(handout: value));
    });
  }

  @override
  $SocketVideoCopyWith<$Res> get video {
    if (_value.video == null) {
      return null;
    }
    return $SocketVideoCopyWith<$Res>(_value.video, (value) {
      return _then(_value.copyWith(video: value));
    });
  }
}

/// @nodoc
abstract class _$ProgramUpdateCopyWith<$Res>
    implements $ProgramUpdateCopyWith<$Res> {
  factory _$ProgramUpdateCopyWith(
          _ProgramUpdate value, $Res Function(_ProgramUpdate) then) =
      __$ProgramUpdateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String programId,
      String updateType,
      UseProgramProgramData program,
      CommentWithUser comment,
      SocketHandout handout,
      SocketVideo video,
      dynamic totalPlayTime,
      @JsonKey(name: '__typename') String typename});

  @override
  $UseProgramProgramDataCopyWith<$Res> get program;
  @override
  $CommentWithUserCopyWith<$Res> get comment;
  @override
  $SocketHandoutCopyWith<$Res> get handout;
  @override
  $SocketVideoCopyWith<$Res> get video;
}

/// @nodoc
class __$ProgramUpdateCopyWithImpl<$Res>
    extends _$ProgramUpdateCopyWithImpl<$Res>
    implements _$ProgramUpdateCopyWith<$Res> {
  __$ProgramUpdateCopyWithImpl(
      _ProgramUpdate _value, $Res Function(_ProgramUpdate) _then)
      : super(_value, (v) => _then(v as _ProgramUpdate));

  @override
  _ProgramUpdate get _value => super._value as _ProgramUpdate;

  @override
  $Res call({
    Object programId = freezed,
    Object updateType = freezed,
    Object program = freezed,
    Object comment = freezed,
    Object handout = freezed,
    Object video = freezed,
    Object totalPlayTime = freezed,
    Object typename = freezed,
  }) {
    return _then(_ProgramUpdate(
      programId: programId == freezed ? _value.programId : programId as String,
      updateType:
          updateType == freezed ? _value.updateType : updateType as String,
      program: program == freezed
          ? _value.program
          : program as UseProgramProgramData,
      comment: comment == freezed ? _value.comment : comment as CommentWithUser,
      handout: handout == freezed ? _value.handout : handout as SocketHandout,
      video: video == freezed ? _value.video : video as SocketVideo,
      totalPlayTime: totalPlayTime == freezed
          ? _value.totalPlayTime
          : totalPlayTime as dynamic,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ProgramUpdate implements _ProgramUpdate {
  const _$_ProgramUpdate(
      {@required this.programId,
      @required this.updateType,
      @required this.program,
      @required this.comment,
      @required this.handout,
      @required this.video,
      @required this.totalPlayTime,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(programId != null),
        assert(updateType != null),
        assert(program != null),
        assert(comment != null),
        assert(handout != null),
        assert(video != null),
        assert(totalPlayTime != null),
        assert(typename != null),
        assert(typename == 'ProgramUpdate');

  factory _$_ProgramUpdate.fromJson(Map<String, dynamic> json) =>
      _$_$_ProgramUpdateFromJson(json);

  @override
  final String programId;
  @override
  final String updateType;
  @override
  final UseProgramProgramData program;
  @override
  final CommentWithUser comment;
  @override
  final SocketHandout handout;
  @override
  final SocketVideo video;
  @override
  final dynamic totalPlayTime;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'ProgramUpdate(programId: $programId, updateType: $updateType, program: $program, comment: $comment, handout: $handout, video: $video, totalPlayTime: $totalPlayTime, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProgramUpdate &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)) &&
            (identical(other.updateType, updateType) ||
                const DeepCollectionEquality()
                    .equals(other.updateType, updateType)) &&
            (identical(other.program, program) ||
                const DeepCollectionEquality()
                    .equals(other.program, program)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.handout, handout) ||
                const DeepCollectionEquality()
                    .equals(other.handout, handout)) &&
            (identical(other.video, video) ||
                const DeepCollectionEquality().equals(other.video, video)) &&
            (identical(other.totalPlayTime, totalPlayTime) ||
                const DeepCollectionEquality()
                    .equals(other.totalPlayTime, totalPlayTime)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(programId) ^
      const DeepCollectionEquality().hash(updateType) ^
      const DeepCollectionEquality().hash(program) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(handout) ^
      const DeepCollectionEquality().hash(video) ^
      const DeepCollectionEquality().hash(totalPlayTime) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$ProgramUpdateCopyWith<_ProgramUpdate> get copyWith =>
      __$ProgramUpdateCopyWithImpl<_ProgramUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProgramUpdateToJson(this);
  }
}

abstract class _ProgramUpdate implements ProgramUpdate {
  const factory _ProgramUpdate(
          {@required String programId,
          @required String updateType,
          @required UseProgramProgramData program,
          @required CommentWithUser comment,
          @required SocketHandout handout,
          @required SocketVideo video,
          @required dynamic totalPlayTime,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_ProgramUpdate;

  factory _ProgramUpdate.fromJson(Map<String, dynamic> json) =
      _$_ProgramUpdate.fromJson;

  @override
  String get programId;
  @override
  String get updateType;
  @override
  UseProgramProgramData get program;
  @override
  CommentWithUser get comment;
  @override
  SocketHandout get handout;
  @override
  SocketVideo get video;
  @override
  dynamic get totalPlayTime;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$ProgramUpdateCopyWith<_ProgramUpdate> get copyWith;
}

CommentWithUser _$CommentWithUserFromJson(Map<String, dynamic> json) {
  return _CommentWithUser.fromJson(json);
}

/// @nodoc
class _$CommentWithUserTearOff {
  const _$CommentWithUserTearOff();

// ignore: unused_element
  _CommentWithUser call(
      {@required String id,
      @required String tenantId,
      @required String programId,
      @required String text,
      @required int commentTime,
      @required String userId,
      @required String userName,
      @required String userIcon,
      @required @JsonKey(name: '__typename') String typename}) {
    return _CommentWithUser(
      id: id,
      tenantId: tenantId,
      programId: programId,
      text: text,
      commentTime: commentTime,
      userId: userId,
      userName: userName,
      userIcon: userIcon,
      typename: typename,
    );
  }

// ignore: unused_element
  CommentWithUser fromJson(Map<String, Object> json) {
    return CommentWithUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $CommentWithUser = _$CommentWithUserTearOff();

/// @nodoc
mixin _$CommentWithUser {
  String get id;
  String get tenantId;
  String get programId;
  String get text;
  int get commentTime;
  String get userId;
  String get userName;
  String get userIcon;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $CommentWithUserCopyWith<CommentWithUser> get copyWith;
}

/// @nodoc
abstract class $CommentWithUserCopyWith<$Res> {
  factory $CommentWithUserCopyWith(
          CommentWithUser value, $Res Function(CommentWithUser) then) =
      _$CommentWithUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String tenantId,
      String programId,
      String text,
      int commentTime,
      String userId,
      String userName,
      String userIcon,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$CommentWithUserCopyWithImpl<$Res>
    implements $CommentWithUserCopyWith<$Res> {
  _$CommentWithUserCopyWithImpl(this._value, this._then);

  final CommentWithUser _value;
  // ignore: unused_field
  final $Res Function(CommentWithUser) _then;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object programId = freezed,
    Object text = freezed,
    Object commentTime = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object userIcon = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      programId: programId == freezed ? _value.programId : programId as String,
      text: text == freezed ? _value.text : text as String,
      commentTime:
          commentTime == freezed ? _value.commentTime : commentTime as int,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userIcon: userIcon == freezed ? _value.userIcon : userIcon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$CommentWithUserCopyWith<$Res>
    implements $CommentWithUserCopyWith<$Res> {
  factory _$CommentWithUserCopyWith(
          _CommentWithUser value, $Res Function(_CommentWithUser) then) =
      __$CommentWithUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String tenantId,
      String programId,
      String text,
      int commentTime,
      String userId,
      String userName,
      String userIcon,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$CommentWithUserCopyWithImpl<$Res>
    extends _$CommentWithUserCopyWithImpl<$Res>
    implements _$CommentWithUserCopyWith<$Res> {
  __$CommentWithUserCopyWithImpl(
      _CommentWithUser _value, $Res Function(_CommentWithUser) _then)
      : super(_value, (v) => _then(v as _CommentWithUser));

  @override
  _CommentWithUser get _value => super._value as _CommentWithUser;

  @override
  $Res call({
    Object id = freezed,
    Object tenantId = freezed,
    Object programId = freezed,
    Object text = freezed,
    Object commentTime = freezed,
    Object userId = freezed,
    Object userName = freezed,
    Object userIcon = freezed,
    Object typename = freezed,
  }) {
    return _then(_CommentWithUser(
      id: id == freezed ? _value.id : id as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      programId: programId == freezed ? _value.programId : programId as String,
      text: text == freezed ? _value.text : text as String,
      commentTime:
          commentTime == freezed ? _value.commentTime : commentTime as int,
      userId: userId == freezed ? _value.userId : userId as String,
      userName: userName == freezed ? _value.userName : userName as String,
      userIcon: userIcon == freezed ? _value.userIcon : userIcon as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_CommentWithUser implements _CommentWithUser {
  const _$_CommentWithUser(
      {@required this.id,
      @required this.tenantId,
      @required this.programId,
      @required this.text,
      @required this.commentTime,
      @required this.userId,
      @required this.userName,
      @required this.userIcon,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(tenantId != null),
        assert(programId != null),
        assert(text != null),
        assert(commentTime != null),
        assert(userId != null),
        assert(userName != null),
        assert(userIcon != null),
        assert(typename != null),
        assert(typename == 'CommentWithUser');

  factory _$_CommentWithUser.fromJson(Map<String, dynamic> json) =>
      _$_$_CommentWithUserFromJson(json);

  @override
  final String id;
  @override
  final String tenantId;
  @override
  final String programId;
  @override
  final String text;
  @override
  final int commentTime;
  @override
  final String userId;
  @override
  final String userName;
  @override
  final String userIcon;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'CommentWithUser(id: $id, tenantId: $tenantId, programId: $programId, text: $text, commentTime: $commentTime, userId: $userId, userName: $userName, userIcon: $userIcon, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CommentWithUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.programId, programId) ||
                const DeepCollectionEquality()
                    .equals(other.programId, programId)) &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.commentTime, commentTime) ||
                const DeepCollectionEquality()
                    .equals(other.commentTime, commentTime)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.userIcon, userIcon) ||
                const DeepCollectionEquality()
                    .equals(other.userIcon, userIcon)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(programId) ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(commentTime) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(userIcon) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$CommentWithUserCopyWith<_CommentWithUser> get copyWith =>
      __$CommentWithUserCopyWithImpl<_CommentWithUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CommentWithUserToJson(this);
  }
}

abstract class _CommentWithUser implements CommentWithUser {
  const factory _CommentWithUser(
          {@required String id,
          @required String tenantId,
          @required String programId,
          @required String text,
          @required int commentTime,
          @required String userId,
          @required String userName,
          @required String userIcon,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_CommentWithUser;

  factory _CommentWithUser.fromJson(Map<String, dynamic> json) =
      _$_CommentWithUser.fromJson;

  @override
  String get id;
  @override
  String get tenantId;
  @override
  String get programId;
  @override
  String get text;
  @override
  int get commentTime;
  @override
  String get userId;
  @override
  String get userName;
  @override
  String get userIcon;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$CommentWithUserCopyWith<_CommentWithUser> get copyWith;
}

UseProgramProgramData _$UseProgramProgramDataFromJson(
    Map<String, dynamic> json) {
  return _UseProgramProgramData.fromJson(json);
}

/// @nodoc
class _$UseProgramProgramDataTearOff {
  const _$UseProgramProgramDataTearOff();

// ignore: unused_element
  _UseProgramProgramData call(
      {@required String id,
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
      @required List<String> tags,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      @required String releaseState,
      @required bool shouldArchive,
      @required @JsonKey(name: '__typename') String typename}) {
    return _UseProgramProgramData(
      id: id,
      channelId: channelId,
      tenantId: tenantId,
      broadcastAt: broadcastAt,
      title: title,
      detail: detail,
      mainTime: mainTime,
      previewTime: previewTime,
      release: release,
      adminComment: adminComment,
      adminCommentDisappearAt: adminCommentDisappearAt,
      tags: tags,
      isExtensionChargedToSubscribers: isExtensionChargedToSubscribers,
      archivedAt: archivedAt,
      releaseState: releaseState,
      shouldArchive: shouldArchive,
      typename: typename,
    );
  }

// ignore: unused_element
  UseProgramProgramData fromJson(Map<String, Object> json) {
    return UseProgramProgramData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UseProgramProgramData = _$UseProgramProgramDataTearOff();

/// @nodoc
mixin _$UseProgramProgramData {
  String get id;
  String get channelId;
  String get tenantId;
  DateTime get broadcastAt;
  String get title;
  String get detail;
  int get mainTime;
  int get previewTime;
  bool get release;
  String get adminComment;
  DateTime get adminCommentDisappearAt;
  List<String> get tags; //todo
  bool get isExtensionChargedToSubscribers;
  DateTime get archivedAt;
  String get releaseState;
  bool get shouldArchive;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UseProgramProgramDataCopyWith<UseProgramProgramData> get copyWith;
}

/// @nodoc
abstract class $UseProgramProgramDataCopyWith<$Res> {
  factory $UseProgramProgramDataCopyWith(UseProgramProgramData value,
          $Res Function(UseProgramProgramData) then) =
      _$UseProgramProgramDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String channelId,
      String tenantId,
      DateTime broadcastAt,
      String title,
      String detail,
      int mainTime,
      int previewTime,
      bool release,
      String adminComment,
      DateTime adminCommentDisappearAt,
      List<String> tags,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      String releaseState,
      bool shouldArchive,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$UseProgramProgramDataCopyWithImpl<$Res>
    implements $UseProgramProgramDataCopyWith<$Res> {
  _$UseProgramProgramDataCopyWithImpl(this._value, this._then);

  final UseProgramProgramData _value;
  // ignore: unused_field
  final $Res Function(UseProgramProgramData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object channelId = freezed,
    Object tenantId = freezed,
    Object broadcastAt = freezed,
    Object title = freezed,
    Object detail = freezed,
    Object mainTime = freezed,
    Object previewTime = freezed,
    Object release = freezed,
    Object adminComment = freezed,
    Object adminCommentDisappearAt = freezed,
    Object tags = freezed,
    Object isExtensionChargedToSubscribers = freezed,
    Object archivedAt = freezed,
    Object releaseState = freezed,
    Object shouldArchive = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      title: title == freezed ? _value.title : title as String,
      detail: detail == freezed ? _value.detail : detail as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      previewTime:
          previewTime == freezed ? _value.previewTime : previewTime as int,
      release: release == freezed ? _value.release : release as bool,
      adminComment: adminComment == freezed
          ? _value.adminComment
          : adminComment as String,
      adminCommentDisappearAt: adminCommentDisappearAt == freezed
          ? _value.adminCommentDisappearAt
          : adminCommentDisappearAt as DateTime,
      tags: tags == freezed ? _value.tags : tags as List<String>,
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
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$UseProgramProgramDataCopyWith<$Res>
    implements $UseProgramProgramDataCopyWith<$Res> {
  factory _$UseProgramProgramDataCopyWith(_UseProgramProgramData value,
          $Res Function(_UseProgramProgramData) then) =
      __$UseProgramProgramDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String channelId,
      String tenantId,
      DateTime broadcastAt,
      String title,
      String detail,
      int mainTime,
      int previewTime,
      bool release,
      String adminComment,
      DateTime adminCommentDisappearAt,
      List<String> tags,
      bool isExtensionChargedToSubscribers,
      DateTime archivedAt,
      String releaseState,
      bool shouldArchive,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$UseProgramProgramDataCopyWithImpl<$Res>
    extends _$UseProgramProgramDataCopyWithImpl<$Res>
    implements _$UseProgramProgramDataCopyWith<$Res> {
  __$UseProgramProgramDataCopyWithImpl(_UseProgramProgramData _value,
      $Res Function(_UseProgramProgramData) _then)
      : super(_value, (v) => _then(v as _UseProgramProgramData));

  @override
  _UseProgramProgramData get _value => super._value as _UseProgramProgramData;

  @override
  $Res call({
    Object id = freezed,
    Object channelId = freezed,
    Object tenantId = freezed,
    Object broadcastAt = freezed,
    Object title = freezed,
    Object detail = freezed,
    Object mainTime = freezed,
    Object previewTime = freezed,
    Object release = freezed,
    Object adminComment = freezed,
    Object adminCommentDisappearAt = freezed,
    Object tags = freezed,
    Object isExtensionChargedToSubscribers = freezed,
    Object archivedAt = freezed,
    Object releaseState = freezed,
    Object shouldArchive = freezed,
    Object typename = freezed,
  }) {
    return _then(_UseProgramProgramData(
      id: id == freezed ? _value.id : id as String,
      channelId: channelId == freezed ? _value.channelId : channelId as String,
      tenantId: tenantId == freezed ? _value.tenantId : tenantId as String,
      broadcastAt:
          broadcastAt == freezed ? _value.broadcastAt : broadcastAt as DateTime,
      title: title == freezed ? _value.title : title as String,
      detail: detail == freezed ? _value.detail : detail as String,
      mainTime: mainTime == freezed ? _value.mainTime : mainTime as int,
      previewTime:
          previewTime == freezed ? _value.previewTime : previewTime as int,
      release: release == freezed ? _value.release : release as bool,
      adminComment: adminComment == freezed
          ? _value.adminComment
          : adminComment as String,
      adminCommentDisappearAt: adminCommentDisappearAt == freezed
          ? _value.adminCommentDisappearAt
          : adminCommentDisappearAt as DateTime,
      tags: tags == freezed ? _value.tags : tags as List<String>,
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
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UseProgramProgramData implements _UseProgramProgramData {
  const _$_UseProgramProgramData(
      {@required this.id,
      @required this.channelId,
      @required this.tenantId,
      this.broadcastAt,
      @required this.title,
      @required this.detail,
      @required this.mainTime,
      @required this.previewTime,
      @required this.release,
      this.adminComment,
      this.adminCommentDisappearAt,
      @required this.tags,
      this.isExtensionChargedToSubscribers,
      this.archivedAt,
      @required this.releaseState,
      @required this.shouldArchive,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(channelId != null),
        assert(tenantId != null),
        assert(title != null),
        assert(detail != null),
        assert(mainTime != null),
        assert(previewTime != null),
        assert(release != null),
        assert(tags != null),
        assert(releaseState != null),
        assert(shouldArchive != null),
        assert(typename != null);

  factory _$_UseProgramProgramData.fromJson(Map<String, dynamic> json) =>
      _$_$_UseProgramProgramDataFromJson(json);

  @override
  final String id;
  @override
  final String channelId;
  @override
  final String tenantId;
  @override
  final DateTime broadcastAt;
  @override
  final String title;
  @override
  final String detail;
  @override
  final int mainTime;
  @override
  final int previewTime;
  @override
  final bool release;
  @override
  final String adminComment;
  @override
  final DateTime adminCommentDisappearAt;
  @override
  final List<String> tags;
  @override //todo
  final bool isExtensionChargedToSubscribers;
  @override
  final DateTime archivedAt;
  @override
  final String releaseState;
  @override
  final bool shouldArchive;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'UseProgramProgramData(id: $id, channelId: $channelId, tenantId: $tenantId, broadcastAt: $broadcastAt, title: $title, detail: $detail, mainTime: $mainTime, previewTime: $previewTime, release: $release, adminComment: $adminComment, adminCommentDisappearAt: $adminCommentDisappearAt, tags: $tags, isExtensionChargedToSubscribers: $isExtensionChargedToSubscribers, archivedAt: $archivedAt, releaseState: $releaseState, shouldArchive: $shouldArchive, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UseProgramProgramData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.channelId, channelId) ||
                const DeepCollectionEquality()
                    .equals(other.channelId, channelId)) &&
            (identical(other.tenantId, tenantId) ||
                const DeepCollectionEquality()
                    .equals(other.tenantId, tenantId)) &&
            (identical(other.broadcastAt, broadcastAt) ||
                const DeepCollectionEquality()
                    .equals(other.broadcastAt, broadcastAt)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
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
            (identical(other.adminComment, adminComment) ||
                const DeepCollectionEquality()
                    .equals(other.adminComment, adminComment)) &&
            (identical(
                    other.adminCommentDisappearAt, adminCommentDisappearAt) ||
                const DeepCollectionEquality().equals(
                    other.adminCommentDisappearAt, adminCommentDisappearAt)) &&
            (identical(other.tags, tags) ||
                const DeepCollectionEquality().equals(other.tags, tags)) &&
            (identical(other.isExtensionChargedToSubscribers,
                    isExtensionChargedToSubscribers) ||
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
                const DeepCollectionEquality()
                    .equals(other.shouldArchive, shouldArchive)) &&
            (identical(other.typename, typename) ||
                const DeepCollectionEquality()
                    .equals(other.typename, typename)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(channelId) ^
      const DeepCollectionEquality().hash(tenantId) ^
      const DeepCollectionEquality().hash(broadcastAt) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(detail) ^
      const DeepCollectionEquality().hash(mainTime) ^
      const DeepCollectionEquality().hash(previewTime) ^
      const DeepCollectionEquality().hash(release) ^
      const DeepCollectionEquality().hash(adminComment) ^
      const DeepCollectionEquality().hash(adminCommentDisappearAt) ^
      const DeepCollectionEquality().hash(tags) ^
      const DeepCollectionEquality().hash(isExtensionChargedToSubscribers) ^
      const DeepCollectionEquality().hash(archivedAt) ^
      const DeepCollectionEquality().hash(releaseState) ^
      const DeepCollectionEquality().hash(shouldArchive) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$UseProgramProgramDataCopyWith<_UseProgramProgramData> get copyWith =>
      __$UseProgramProgramDataCopyWithImpl<_UseProgramProgramData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UseProgramProgramDataToJson(this);
  }
}

abstract class _UseProgramProgramData implements UseProgramProgramData {
  const factory _UseProgramProgramData(
          {@required String id,
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
          @required List<String> tags,
          bool isExtensionChargedToSubscribers,
          DateTime archivedAt,
          @required String releaseState,
          @required bool shouldArchive,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_UseProgramProgramData;

  factory _UseProgramProgramData.fromJson(Map<String, dynamic> json) =
      _$_UseProgramProgramData.fromJson;

  @override
  String get id;
  @override
  String get channelId;
  @override
  String get tenantId;
  @override
  DateTime get broadcastAt;
  @override
  String get title;
  @override
  String get detail;
  @override
  int get mainTime;
  @override
  int get previewTime;
  @override
  bool get release;
  @override
  String get adminComment;
  @override
  DateTime get adminCommentDisappearAt;
  @override
  List<String> get tags;
  @override //todo
  bool get isExtensionChargedToSubscribers;
  @override
  DateTime get archivedAt;
  @override
  String get releaseState;
  @override
  bool get shouldArchive;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$UseProgramProgramDataCopyWith<_UseProgramProgramData> get copyWith;
}

SocketHandout _$SocketHandoutFromJson(Map<String, dynamic> json) {
  return _SocketHandout.fromJson(json);
}

/// @nodoc
class _$SocketHandoutTearOff {
  const _$SocketHandoutTearOff();

// ignore: unused_element
  _SocketHandout call(
      {@required String id,
      @required String name,
      @required DateTime createdAt,
      @required @JsonKey(name: '__typename') String typename}) {
    return _SocketHandout(
      id: id,
      name: name,
      createdAt: createdAt,
      typename: typename,
    );
  }

// ignore: unused_element
  SocketHandout fromJson(Map<String, Object> json) {
    return SocketHandout.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SocketHandout = _$SocketHandoutTearOff();

/// @nodoc
mixin _$SocketHandout {
  String get id;
  String get name;
  DateTime get createdAt;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SocketHandoutCopyWith<SocketHandout> get copyWith;
}

/// @nodoc
abstract class $SocketHandoutCopyWith<$Res> {
  factory $SocketHandoutCopyWith(
          SocketHandout value, $Res Function(SocketHandout) then) =
      _$SocketHandoutCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      DateTime createdAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$SocketHandoutCopyWithImpl<$Res>
    implements $SocketHandoutCopyWith<$Res> {
  _$SocketHandoutCopyWithImpl(this._value, this._then);

  final SocketHandout _value;
  // ignore: unused_field
  final $Res Function(SocketHandout) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$SocketHandoutCopyWith<$Res>
    implements $SocketHandoutCopyWith<$Res> {
  factory _$SocketHandoutCopyWith(
          _SocketHandout value, $Res Function(_SocketHandout) then) =
      __$SocketHandoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      DateTime createdAt,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$SocketHandoutCopyWithImpl<$Res>
    extends _$SocketHandoutCopyWithImpl<$Res>
    implements _$SocketHandoutCopyWith<$Res> {
  __$SocketHandoutCopyWithImpl(
      _SocketHandout _value, $Res Function(_SocketHandout) _then)
      : super(_value, (v) => _then(v as _SocketHandout));

  @override
  _SocketHandout get _value => super._value as _SocketHandout;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object createdAt = freezed,
    Object typename = freezed,
  }) {
    return _then(_SocketHandout(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SocketHandout implements _SocketHandout {
  const _$_SocketHandout(
      {@required this.id,
      @required this.name,
      @required this.createdAt,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(name != null),
        assert(createdAt != null),
        assert(typename != null);

  factory _$_SocketHandout.fromJson(Map<String, dynamic> json) =>
      _$_$_SocketHandoutFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime createdAt;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'SocketHandout(id: $id, name: $name, createdAt: $createdAt, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SocketHandout &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$SocketHandoutCopyWith<_SocketHandout> get copyWith =>
      __$SocketHandoutCopyWithImpl<_SocketHandout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SocketHandoutToJson(this);
  }
}

abstract class _SocketHandout implements SocketHandout {
  const factory _SocketHandout(
          {@required String id,
          @required String name,
          @required DateTime createdAt,
          @required @JsonKey(name: '__typename') String typename}) =
      _$_SocketHandout;

  factory _SocketHandout.fromJson(Map<String, dynamic> json) =
      _$_SocketHandout.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$SocketHandoutCopyWith<_SocketHandout> get copyWith;
}

SocketVideo _$SocketVideoFromJson(Map<String, dynamic> json) {
  return _SocketVideo.fromJson(json);
}

/// @nodoc
class _$SocketVideoTearOff {
  const _$SocketVideoTearOff();

// ignore: unused_element
  _SocketVideo call(
      {@required String id,
      @required MediaStatus mediaStatus,
      String liveUrl,
      String archiveUrl,
      @required @JsonKey(name: '__typename') String typename}) {
    return _SocketVideo(
      id: id,
      mediaStatus: mediaStatus,
      liveUrl: liveUrl,
      archiveUrl: archiveUrl,
      typename: typename,
    );
  }

// ignore: unused_element
  SocketVideo fromJson(Map<String, Object> json) {
    return SocketVideo.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SocketVideo = _$SocketVideoTearOff();

/// @nodoc
mixin _$SocketVideo {
  String get id;
  MediaStatus get mediaStatus;
  String get liveUrl;
  String get archiveUrl;
  @JsonKey(name: '__typename')
  String get typename;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $SocketVideoCopyWith<SocketVideo> get copyWith;
}

/// @nodoc
abstract class $SocketVideoCopyWith<$Res> {
  factory $SocketVideoCopyWith(
          SocketVideo value, $Res Function(SocketVideo) then) =
      _$SocketVideoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      MediaStatus mediaStatus,
      String liveUrl,
      String archiveUrl,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class _$SocketVideoCopyWithImpl<$Res> implements $SocketVideoCopyWith<$Res> {
  _$SocketVideoCopyWithImpl(this._value, this._then);

  final SocketVideo _value;
  // ignore: unused_field
  final $Res Function(SocketVideo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object mediaStatus = freezed,
    Object liveUrl = freezed,
    Object archiveUrl = freezed,
    Object typename = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      mediaStatus: mediaStatus == freezed
          ? _value.mediaStatus
          : mediaStatus as MediaStatus,
      liveUrl: liveUrl == freezed ? _value.liveUrl : liveUrl as String,
      archiveUrl:
          archiveUrl == freezed ? _value.archiveUrl : archiveUrl as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

/// @nodoc
abstract class _$SocketVideoCopyWith<$Res>
    implements $SocketVideoCopyWith<$Res> {
  factory _$SocketVideoCopyWith(
          _SocketVideo value, $Res Function(_SocketVideo) then) =
      __$SocketVideoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      MediaStatus mediaStatus,
      String liveUrl,
      String archiveUrl,
      @JsonKey(name: '__typename') String typename});
}

/// @nodoc
class __$SocketVideoCopyWithImpl<$Res> extends _$SocketVideoCopyWithImpl<$Res>
    implements _$SocketVideoCopyWith<$Res> {
  __$SocketVideoCopyWithImpl(
      _SocketVideo _value, $Res Function(_SocketVideo) _then)
      : super(_value, (v) => _then(v as _SocketVideo));

  @override
  _SocketVideo get _value => super._value as _SocketVideo;

  @override
  $Res call({
    Object id = freezed,
    Object mediaStatus = freezed,
    Object liveUrl = freezed,
    Object archiveUrl = freezed,
    Object typename = freezed,
  }) {
    return _then(_SocketVideo(
      id: id == freezed ? _value.id : id as String,
      mediaStatus: mediaStatus == freezed
          ? _value.mediaStatus
          : mediaStatus as MediaStatus,
      liveUrl: liveUrl == freezed ? _value.liveUrl : liveUrl as String,
      archiveUrl:
          archiveUrl == freezed ? _value.archiveUrl : archiveUrl as String,
      typename: typename == freezed ? _value.typename : typename as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SocketVideo implements _SocketVideo {
  const _$_SocketVideo(
      {@required this.id,
      @required this.mediaStatus,
      this.liveUrl,
      this.archiveUrl,
      @required @JsonKey(name: '__typename') this.typename})
      : assert(id != null),
        assert(mediaStatus != null),
        assert(typename != null);

  factory _$_SocketVideo.fromJson(Map<String, dynamic> json) =>
      _$_$_SocketVideoFromJson(json);

  @override
  final String id;
  @override
  final MediaStatus mediaStatus;
  @override
  final String liveUrl;
  @override
  final String archiveUrl;
  @override
  @JsonKey(name: '__typename')
  final String typename;

  @override
  String toString() {
    return 'SocketVideo(id: $id, mediaStatus: $mediaStatus, liveUrl: $liveUrl, archiveUrl: $archiveUrl, typename: $typename)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SocketVideo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(mediaStatus) ^
      const DeepCollectionEquality().hash(liveUrl) ^
      const DeepCollectionEquality().hash(archiveUrl) ^
      const DeepCollectionEquality().hash(typename);

  @JsonKey(ignore: true)
  @override
  _$SocketVideoCopyWith<_SocketVideo> get copyWith =>
      __$SocketVideoCopyWithImpl<_SocketVideo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SocketVideoToJson(this);
  }
}

abstract class _SocketVideo implements SocketVideo {
  const factory _SocketVideo(
      {@required String id,
      @required MediaStatus mediaStatus,
      String liveUrl,
      String archiveUrl,
      @required @JsonKey(name: '__typename') String typename}) = _$_SocketVideo;

  factory _SocketVideo.fromJson(Map<String, dynamic> json) =
      _$_SocketVideo.fromJson;

  @override
  String get id;
  @override
  MediaStatus get mediaStatus;
  @override
  String get liveUrl;
  @override
  String get archiveUrl;
  @override
  @JsonKey(name: '__typename')
  String get typename;
  @override
  @JsonKey(ignore: true)
  _$SocketVideoCopyWith<_SocketVideo> get copyWith;
}

/// @nodoc
class _$SocketMsgTypeTearOff {
  const _$SocketMsgTypeTearOff();

// ignore: unused_element
  _ConnectionInit connectionInit() {
    return const _ConnectionInit();
  }

// ignore: unused_element
  _ConnectionAck connectionAck() {
    return const _ConnectionAck();
  }

// ignore: unused_element
  _Ka ka() {
    return const _Ka();
  }

// ignore: unused_element
  _StartAck startAck() {
    return const _StartAck();
  }

// ignore: unused_element
  _Data data() {
    return const _Data();
  }
}

/// @nodoc
// ignore: unused_element
const $SocketMsgType = _$SocketMsgTypeTearOff();

/// @nodoc
mixin _$SocketMsgType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInit(),
    @required TResult connectionAck(),
    @required TResult ka(),
    @required TResult startAck(),
    @required TResult data(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInit(),
    TResult connectionAck(),
    TResult ka(),
    TResult startAck(),
    TResult data(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInit(_ConnectionInit value),
    @required TResult connectionAck(_ConnectionAck value),
    @required TResult ka(_Ka value),
    @required TResult startAck(_StartAck value),
    @required TResult data(_Data value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInit(_ConnectionInit value),
    TResult connectionAck(_ConnectionAck value),
    TResult ka(_Ka value),
    TResult startAck(_StartAck value),
    TResult data(_Data value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SocketMsgTypeCopyWith<$Res> {
  factory $SocketMsgTypeCopyWith(
          SocketMsgType value, $Res Function(SocketMsgType) then) =
      _$SocketMsgTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketMsgTypeCopyWithImpl<$Res>
    implements $SocketMsgTypeCopyWith<$Res> {
  _$SocketMsgTypeCopyWithImpl(this._value, this._then);

  final SocketMsgType _value;
  // ignore: unused_field
  final $Res Function(SocketMsgType) _then;
}

/// @nodoc
abstract class _$ConnectionInitCopyWith<$Res> {
  factory _$ConnectionInitCopyWith(
          _ConnectionInit value, $Res Function(_ConnectionInit) then) =
      __$ConnectionInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionInitCopyWithImpl<$Res>
    extends _$SocketMsgTypeCopyWithImpl<$Res>
    implements _$ConnectionInitCopyWith<$Res> {
  __$ConnectionInitCopyWithImpl(
      _ConnectionInit _value, $Res Function(_ConnectionInit) _then)
      : super(_value, (v) => _then(v as _ConnectionInit));

  @override
  _ConnectionInit get _value => super._value as _ConnectionInit;
}

/// @nodoc
class _$_ConnectionInit implements _ConnectionInit {
  const _$_ConnectionInit();

  @override
  String toString() {
    return 'SocketMsgType.connectionInit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ConnectionInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInit(),
    @required TResult connectionAck(),
    @required TResult ka(),
    @required TResult startAck(),
    @required TResult data(),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return connectionInit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInit(),
    TResult connectionAck(),
    TResult ka(),
    TResult startAck(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionInit != null) {
      return connectionInit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInit(_ConnectionInit value),
    @required TResult connectionAck(_ConnectionAck value),
    @required TResult ka(_Ka value),
    @required TResult startAck(_StartAck value),
    @required TResult data(_Data value),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return connectionInit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInit(_ConnectionInit value),
    TResult connectionAck(_ConnectionAck value),
    TResult ka(_Ka value),
    TResult startAck(_StartAck value),
    TResult data(_Data value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionInit != null) {
      return connectionInit(this);
    }
    return orElse();
  }
}

abstract class _ConnectionInit implements SocketMsgType {
  const factory _ConnectionInit() = _$_ConnectionInit;
}

/// @nodoc
abstract class _$ConnectionAckCopyWith<$Res> {
  factory _$ConnectionAckCopyWith(
          _ConnectionAck value, $Res Function(_ConnectionAck) then) =
      __$ConnectionAckCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectionAckCopyWithImpl<$Res>
    extends _$SocketMsgTypeCopyWithImpl<$Res>
    implements _$ConnectionAckCopyWith<$Res> {
  __$ConnectionAckCopyWithImpl(
      _ConnectionAck _value, $Res Function(_ConnectionAck) _then)
      : super(_value, (v) => _then(v as _ConnectionAck));

  @override
  _ConnectionAck get _value => super._value as _ConnectionAck;
}

/// @nodoc
class _$_ConnectionAck implements _ConnectionAck {
  const _$_ConnectionAck();

  @override
  String toString() {
    return 'SocketMsgType.connectionAck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ConnectionAck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInit(),
    @required TResult connectionAck(),
    @required TResult ka(),
    @required TResult startAck(),
    @required TResult data(),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return connectionAck();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInit(),
    TResult connectionAck(),
    TResult ka(),
    TResult startAck(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionAck != null) {
      return connectionAck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInit(_ConnectionInit value),
    @required TResult connectionAck(_ConnectionAck value),
    @required TResult ka(_Ka value),
    @required TResult startAck(_StartAck value),
    @required TResult data(_Data value),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return connectionAck(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInit(_ConnectionInit value),
    TResult connectionAck(_ConnectionAck value),
    TResult ka(_Ka value),
    TResult startAck(_StartAck value),
    TResult data(_Data value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (connectionAck != null) {
      return connectionAck(this);
    }
    return orElse();
  }
}

abstract class _ConnectionAck implements SocketMsgType {
  const factory _ConnectionAck() = _$_ConnectionAck;
}

/// @nodoc
abstract class _$KaCopyWith<$Res> {
  factory _$KaCopyWith(_Ka value, $Res Function(_Ka) then) =
      __$KaCopyWithImpl<$Res>;
}

/// @nodoc
class __$KaCopyWithImpl<$Res> extends _$SocketMsgTypeCopyWithImpl<$Res>
    implements _$KaCopyWith<$Res> {
  __$KaCopyWithImpl(_Ka _value, $Res Function(_Ka) _then)
      : super(_value, (v) => _then(v as _Ka));

  @override
  _Ka get _value => super._value as _Ka;
}

/// @nodoc
class _$_Ka implements _Ka {
  const _$_Ka();

  @override
  String toString() {
    return 'SocketMsgType.ka()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Ka);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInit(),
    @required TResult connectionAck(),
    @required TResult ka(),
    @required TResult startAck(),
    @required TResult data(),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return ka();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInit(),
    TResult connectionAck(),
    TResult ka(),
    TResult startAck(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ka != null) {
      return ka();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInit(_ConnectionInit value),
    @required TResult connectionAck(_ConnectionAck value),
    @required TResult ka(_Ka value),
    @required TResult startAck(_StartAck value),
    @required TResult data(_Data value),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return ka(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInit(_ConnectionInit value),
    TResult connectionAck(_ConnectionAck value),
    TResult ka(_Ka value),
    TResult startAck(_StartAck value),
    TResult data(_Data value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (ka != null) {
      return ka(this);
    }
    return orElse();
  }
}

abstract class _Ka implements SocketMsgType {
  const factory _Ka() = _$_Ka;
}

/// @nodoc
abstract class _$StartAckCopyWith<$Res> {
  factory _$StartAckCopyWith(_StartAck value, $Res Function(_StartAck) then) =
      __$StartAckCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartAckCopyWithImpl<$Res> extends _$SocketMsgTypeCopyWithImpl<$Res>
    implements _$StartAckCopyWith<$Res> {
  __$StartAckCopyWithImpl(_StartAck _value, $Res Function(_StartAck) _then)
      : super(_value, (v) => _then(v as _StartAck));

  @override
  _StartAck get _value => super._value as _StartAck;
}

/// @nodoc
class _$_StartAck implements _StartAck {
  const _$_StartAck();

  @override
  String toString() {
    return 'SocketMsgType.startAck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartAck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInit(),
    @required TResult connectionAck(),
    @required TResult ka(),
    @required TResult startAck(),
    @required TResult data(),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return startAck();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInit(),
    TResult connectionAck(),
    TResult ka(),
    TResult startAck(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startAck != null) {
      return startAck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInit(_ConnectionInit value),
    @required TResult connectionAck(_ConnectionAck value),
    @required TResult ka(_Ka value),
    @required TResult startAck(_StartAck value),
    @required TResult data(_Data value),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return startAck(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInit(_ConnectionInit value),
    TResult connectionAck(_ConnectionAck value),
    TResult ka(_Ka value),
    TResult startAck(_StartAck value),
    TResult data(_Data value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startAck != null) {
      return startAck(this);
    }
    return orElse();
  }
}

abstract class _StartAck implements SocketMsgType {
  const factory _StartAck() = _$_StartAck;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$SocketMsgTypeCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;
}

/// @nodoc
class _$_Data implements _Data {
  const _$_Data();

  @override
  String toString() {
    return 'SocketMsgType.data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Data);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult connectionInit(),
    @required TResult connectionAck(),
    @required TResult ka(),
    @required TResult startAck(),
    @required TResult data(),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return data();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult connectionInit(),
    TResult connectionAck(),
    TResult ka(),
    TResult startAck(),
    TResult data(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult connectionInit(_ConnectionInit value),
    @required TResult connectionAck(_ConnectionAck value),
    @required TResult ka(_Ka value),
    @required TResult startAck(_StartAck value),
    @required TResult data(_Data value),
  }) {
    assert(connectionInit != null);
    assert(connectionAck != null);
    assert(ka != null);
    assert(startAck != null);
    assert(data != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult connectionInit(_ConnectionInit value),
    TResult connectionAck(_ConnectionAck value),
    TResult ka(_Ka value),
    TResult startAck(_StartAck value),
    TResult data(_Data value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements SocketMsgType {
  const factory _Data() = _$_Data;
}
