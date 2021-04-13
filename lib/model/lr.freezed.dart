// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LrTearOff {
  const _$LrTearOff();

// ignore: unused_element
  _Left left() {
    return const _Left();
  }

// ignore: unused_element
  _Right right() {
    return const _Right();
  }
}

/// @nodoc
// ignore: unused_element
const $Lr = _$LrTearOff();

/// @nodoc
mixin _$Lr {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult left(),
    @required TResult right(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult left(),
    TResult right(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult left(_Left value),
    @required TResult right(_Right value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult left(_Left value),
    TResult right(_Right value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LrCopyWith<$Res> {
  factory $LrCopyWith(Lr value, $Res Function(Lr) then) =
      _$LrCopyWithImpl<$Res>;
}

/// @nodoc
class _$LrCopyWithImpl<$Res> implements $LrCopyWith<$Res> {
  _$LrCopyWithImpl(this._value, this._then);

  final Lr _value;
  // ignore: unused_field
  final $Res Function(Lr) _then;
}

/// @nodoc
abstract class _$LeftCopyWith<$Res> {
  factory _$LeftCopyWith(_Left value, $Res Function(_Left) then) =
      __$LeftCopyWithImpl<$Res>;
}

/// @nodoc
class __$LeftCopyWithImpl<$Res> extends _$LrCopyWithImpl<$Res>
    implements _$LeftCopyWith<$Res> {
  __$LeftCopyWithImpl(_Left _value, $Res Function(_Left) _then)
      : super(_value, (v) => _then(v as _Left));

  @override
  _Left get _value => super._value as _Left;
}

/// @nodoc
class _$_Left implements _Left {
  const _$_Left();

  @override
  String toString() {
    return 'Lr.left()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Left);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult left(),
    @required TResult right(),
  }) {
    assert(left != null);
    assert(right != null);
    return left();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult left(),
    TResult right(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (left != null) {
      return left();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult left(_Left value),
    @required TResult right(_Right value),
  }) {
    assert(left != null);
    assert(right != null);
    return left(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult left(_Left value),
    TResult right(_Right value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (left != null) {
      return left(this);
    }
    return orElse();
  }
}

abstract class _Left implements Lr {
  const factory _Left() = _$_Left;
}

/// @nodoc
abstract class _$RightCopyWith<$Res> {
  factory _$RightCopyWith(_Right value, $Res Function(_Right) then) =
      __$RightCopyWithImpl<$Res>;
}

/// @nodoc
class __$RightCopyWithImpl<$Res> extends _$LrCopyWithImpl<$Res>
    implements _$RightCopyWith<$Res> {
  __$RightCopyWithImpl(_Right _value, $Res Function(_Right) _then)
      : super(_value, (v) => _then(v as _Right));

  @override
  _Right get _value => super._value as _Right;
}

/// @nodoc
class _$_Right implements _Right {
  const _$_Right();

  @override
  String toString() {
    return 'Lr.right()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Right);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult left(),
    @required TResult right(),
  }) {
    assert(left != null);
    assert(right != null);
    return right();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult left(),
    TResult right(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (right != null) {
      return right();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult left(_Left value),
    @required TResult right(_Right value),
  }) {
    assert(left != null);
    assert(right != null);
    return right(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult left(_Left value),
    TResult right(_Right value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (right != null) {
      return right(this);
    }
    return orElse();
  }
}

abstract class _Right implements Lr {
  const factory _Right() = _$_Right;
}
