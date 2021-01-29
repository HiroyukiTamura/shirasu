// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'portal_snack_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GlobalPortalCommandTearOff {
  const _$GlobalPortalCommandTearOff();

// ignore: unused_element
  _GlobalPortalCommandSnack snackBar(SnackMsg msg) {
    return _GlobalPortalCommandSnack(
      msg,
    );
  }

// ignore: unused_element
  _GlobalPortalCommandNone none() {
    return const _GlobalPortalCommandNone();
  }
}

/// @nodoc
// ignore: unused_element
const $GlobalPortalCommand = _$GlobalPortalCommandTearOff();

/// @nodoc
mixin _$GlobalPortalCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult snackBar(SnackMsg msg),
    @required TResult none(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult snackBar(SnackMsg msg),
    TResult none(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult snackBar(_GlobalPortalCommandSnack value),
    @required TResult none(_GlobalPortalCommandNone value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult snackBar(_GlobalPortalCommandSnack value),
    TResult none(_GlobalPortalCommandNone value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GlobalPortalCommandCopyWith<$Res> {
  factory $GlobalPortalCommandCopyWith(
          GlobalPortalCommand value, $Res Function(GlobalPortalCommand) then) =
      _$GlobalPortalCommandCopyWithImpl<$Res>;
}

/// @nodoc
class _$GlobalPortalCommandCopyWithImpl<$Res>
    implements $GlobalPortalCommandCopyWith<$Res> {
  _$GlobalPortalCommandCopyWithImpl(this._value, this._then);

  final GlobalPortalCommand _value;
  // ignore: unused_field
  final $Res Function(GlobalPortalCommand) _then;
}

/// @nodoc
abstract class _$GlobalPortalCommandSnackCopyWith<$Res> {
  factory _$GlobalPortalCommandSnackCopyWith(_GlobalPortalCommandSnack value,
          $Res Function(_GlobalPortalCommandSnack) then) =
      __$GlobalPortalCommandSnackCopyWithImpl<$Res>;
  $Res call({SnackMsg msg});
}

/// @nodoc
class __$GlobalPortalCommandSnackCopyWithImpl<$Res>
    extends _$GlobalPortalCommandCopyWithImpl<$Res>
    implements _$GlobalPortalCommandSnackCopyWith<$Res> {
  __$GlobalPortalCommandSnackCopyWithImpl(_GlobalPortalCommandSnack _value,
      $Res Function(_GlobalPortalCommandSnack) _then)
      : super(_value, (v) => _then(v as _GlobalPortalCommandSnack));

  @override
  _GlobalPortalCommandSnack get _value =>
      super._value as _GlobalPortalCommandSnack;

  @override
  $Res call({
    Object msg = freezed,
  }) {
    return _then(_GlobalPortalCommandSnack(
      msg == freezed ? _value.msg : msg as SnackMsg,
    ));
  }
}

/// @nodoc
class _$_GlobalPortalCommandSnack implements _GlobalPortalCommandSnack {
  const _$_GlobalPortalCommandSnack(this.msg) : assert(msg != null);

  @override
  final SnackMsg msg;

  @override
  String toString() {
    return 'GlobalPortalCommand.snackBar(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GlobalPortalCommandSnack &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @override
  _$GlobalPortalCommandSnackCopyWith<_GlobalPortalCommandSnack> get copyWith =>
      __$GlobalPortalCommandSnackCopyWithImpl<_GlobalPortalCommandSnack>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult snackBar(SnackMsg msg),
    @required TResult none(),
  }) {
    assert(snackBar != null);
    assert(none != null);
    return snackBar(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult snackBar(SnackMsg msg),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (snackBar != null) {
      return snackBar(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult snackBar(_GlobalPortalCommandSnack value),
    @required TResult none(_GlobalPortalCommandNone value),
  }) {
    assert(snackBar != null);
    assert(none != null);
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult snackBar(_GlobalPortalCommandSnack value),
    TResult none(_GlobalPortalCommandNone value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class _GlobalPortalCommandSnack implements GlobalPortalCommand {
  const factory _GlobalPortalCommandSnack(SnackMsg msg) =
      _$_GlobalPortalCommandSnack;

  SnackMsg get msg;
  _$GlobalPortalCommandSnackCopyWith<_GlobalPortalCommandSnack> get copyWith;
}

/// @nodoc
abstract class _$GlobalPortalCommandNoneCopyWith<$Res> {
  factory _$GlobalPortalCommandNoneCopyWith(_GlobalPortalCommandNone value,
          $Res Function(_GlobalPortalCommandNone) then) =
      __$GlobalPortalCommandNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$GlobalPortalCommandNoneCopyWithImpl<$Res>
    extends _$GlobalPortalCommandCopyWithImpl<$Res>
    implements _$GlobalPortalCommandNoneCopyWith<$Res> {
  __$GlobalPortalCommandNoneCopyWithImpl(_GlobalPortalCommandNone _value,
      $Res Function(_GlobalPortalCommandNone) _then)
      : super(_value, (v) => _then(v as _GlobalPortalCommandNone));

  @override
  _GlobalPortalCommandNone get _value =>
      super._value as _GlobalPortalCommandNone;
}

/// @nodoc
class _$_GlobalPortalCommandNone implements _GlobalPortalCommandNone {
  const _$_GlobalPortalCommandNone();

  @override
  String toString() {
    return 'GlobalPortalCommand.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GlobalPortalCommandNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult snackBar(SnackMsg msg),
    @required TResult none(),
  }) {
    assert(snackBar != null);
    assert(none != null);
    return none();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult snackBar(SnackMsg msg),
    TResult none(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult snackBar(_GlobalPortalCommandSnack value),
    @required TResult none(_GlobalPortalCommandNone value),
  }) {
    assert(snackBar != null);
    assert(none != null);
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult snackBar(_GlobalPortalCommandSnack value),
    TResult none(_GlobalPortalCommandNone value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _GlobalPortalCommandNone implements GlobalPortalCommand {
  const factory _GlobalPortalCommandNone() = _$_GlobalPortalCommandNone;
}
