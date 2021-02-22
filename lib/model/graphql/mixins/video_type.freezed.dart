// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'video_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VideoTypeTearOff {
  const _$VideoTypeTearOff();

// ignore: unused_element
  _VideoTypeArchived archived() {
    return const _VideoTypeArchived();
  }

// ignore: unused_element
  _VideoTypeLive live() {
    return const _VideoTypeLive();
  }
}

/// @nodoc
// ignore: unused_element
const $VideoType = _$VideoTypeTearOff();

/// @nodoc
mixin _$VideoType {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult archived(),
    @required TResult live(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult archived(),
    TResult live(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult archived(_VideoTypeArchived value),
    @required TResult live(_VideoTypeLive value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult archived(_VideoTypeArchived value),
    TResult live(_VideoTypeLive value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $VideoTypeCopyWith<$Res> {
  factory $VideoTypeCopyWith(VideoType value, $Res Function(VideoType) then) =
      _$VideoTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$VideoTypeCopyWithImpl<$Res> implements $VideoTypeCopyWith<$Res> {
  _$VideoTypeCopyWithImpl(this._value, this._then);

  final VideoType _value;
  // ignore: unused_field
  final $Res Function(VideoType) _then;
}

/// @nodoc
abstract class _$VideoTypeArchivedCopyWith<$Res> {
  factory _$VideoTypeArchivedCopyWith(
          _VideoTypeArchived value, $Res Function(_VideoTypeArchived) then) =
      __$VideoTypeArchivedCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoTypeArchivedCopyWithImpl<$Res>
    extends _$VideoTypeCopyWithImpl<$Res>
    implements _$VideoTypeArchivedCopyWith<$Res> {
  __$VideoTypeArchivedCopyWithImpl(
      _VideoTypeArchived _value, $Res Function(_VideoTypeArchived) _then)
      : super(_value, (v) => _then(v as _VideoTypeArchived));

  @override
  _VideoTypeArchived get _value => super._value as _VideoTypeArchived;
}

/// @nodoc
class _$_VideoTypeArchived implements _VideoTypeArchived {
  const _$_VideoTypeArchived();

  @override
  String toString() {
    return 'VideoType.archived()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoTypeArchived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult archived(),
    @required TResult live(),
  }) {
    assert(archived != null);
    assert(live != null);
    return archived();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult archived(),
    TResult live(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archived != null) {
      return archived();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult archived(_VideoTypeArchived value),
    @required TResult live(_VideoTypeLive value),
  }) {
    assert(archived != null);
    assert(live != null);
    return archived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult archived(_VideoTypeArchived value),
    TResult live(_VideoTypeLive value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (archived != null) {
      return archived(this);
    }
    return orElse();
  }
}

abstract class _VideoTypeArchived implements VideoType {
  const factory _VideoTypeArchived() = _$_VideoTypeArchived;
}

/// @nodoc
abstract class _$VideoTypeLiveCopyWith<$Res> {
  factory _$VideoTypeLiveCopyWith(
          _VideoTypeLive value, $Res Function(_VideoTypeLive) then) =
      __$VideoTypeLiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$VideoTypeLiveCopyWithImpl<$Res> extends _$VideoTypeCopyWithImpl<$Res>
    implements _$VideoTypeLiveCopyWith<$Res> {
  __$VideoTypeLiveCopyWithImpl(
      _VideoTypeLive _value, $Res Function(_VideoTypeLive) _then)
      : super(_value, (v) => _then(v as _VideoTypeLive));

  @override
  _VideoTypeLive get _value => super._value as _VideoTypeLive;
}

/// @nodoc
class _$_VideoTypeLive implements _VideoTypeLive {
  const _$_VideoTypeLive();

  @override
  String toString() {
    return 'VideoType.live()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VideoTypeLive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult archived(),
    @required TResult live(),
  }) {
    assert(archived != null);
    assert(live != null);
    return live();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult archived(),
    TResult live(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (live != null) {
      return live();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult archived(_VideoTypeArchived value),
    @required TResult live(_VideoTypeLive value),
  }) {
    assert(archived != null);
    assert(live != null);
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult archived(_VideoTypeArchived value),
    TResult live(_VideoTypeLive value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (live != null) {
      return live(this);
    }
    return orElse();
  }
}

abstract class _VideoTypeLive implements VideoType {
  const factory _VideoTypeLive() = _$_VideoTypeLive;
}
