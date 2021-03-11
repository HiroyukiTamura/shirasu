// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sort_direction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SortDirectionTearOff {
  const _$SortDirectionTearOff();

// ignore: unused_element
  _Asc asc() {
    return const _Asc();
  }

// ignore: unused_element
  _Desc desc() {
    return const _Desc();
  }
}

/// @nodoc
// ignore: unused_element
const $SortDirection = _$SortDirectionTearOff();

/// @nodoc
mixin _$SortDirection {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult asc(),
    @required TResult desc(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult asc(),
    TResult desc(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult asc(_Asc value),
    @required TResult desc(_Desc value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult asc(_Asc value),
    TResult desc(_Desc value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SortDirectionCopyWith<$Res> {
  factory $SortDirectionCopyWith(
          SortDirection value, $Res Function(SortDirection) then) =
      _$SortDirectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$SortDirectionCopyWithImpl<$Res>
    implements $SortDirectionCopyWith<$Res> {
  _$SortDirectionCopyWithImpl(this._value, this._then);

  final SortDirection _value;
  // ignore: unused_field
  final $Res Function(SortDirection) _then;
}

/// @nodoc
abstract class _$AscCopyWith<$Res> {
  factory _$AscCopyWith(_Asc value, $Res Function(_Asc) then) =
      __$AscCopyWithImpl<$Res>;
}

/// @nodoc
class __$AscCopyWithImpl<$Res> extends _$SortDirectionCopyWithImpl<$Res>
    implements _$AscCopyWith<$Res> {
  __$AscCopyWithImpl(_Asc _value, $Res Function(_Asc) _then)
      : super(_value, (v) => _then(v as _Asc));

  @override
  _Asc get _value => super._value as _Asc;
}

/// @nodoc
class _$_Asc extends _Asc {
  const _$_Asc() : super._();

  @override
  String toString() {
    return 'SortDirection.asc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Asc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult asc(),
    @required TResult desc(),
  }) {
    assert(asc != null);
    assert(desc != null);
    return asc();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult asc(),
    TResult desc(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (asc != null) {
      return asc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult asc(_Asc value),
    @required TResult desc(_Desc value),
  }) {
    assert(asc != null);
    assert(desc != null);
    return asc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult asc(_Asc value),
    TResult desc(_Desc value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (asc != null) {
      return asc(this);
    }
    return orElse();
  }
}

abstract class _Asc extends SortDirection {
  const _Asc._() : super._();
  const factory _Asc() = _$_Asc;
}

/// @nodoc
abstract class _$DescCopyWith<$Res> {
  factory _$DescCopyWith(_Desc value, $Res Function(_Desc) then) =
      __$DescCopyWithImpl<$Res>;
}

/// @nodoc
class __$DescCopyWithImpl<$Res> extends _$SortDirectionCopyWithImpl<$Res>
    implements _$DescCopyWith<$Res> {
  __$DescCopyWithImpl(_Desc _value, $Res Function(_Desc) _then)
      : super(_value, (v) => _then(v as _Desc));

  @override
  _Desc get _value => super._value as _Desc;
}

/// @nodoc
class _$_Desc extends _Desc {
  const _$_Desc() : super._();

  @override
  String toString() {
    return 'SortDirection.desc()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Desc);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult asc(),
    @required TResult desc(),
  }) {
    assert(asc != null);
    assert(desc != null);
    return desc();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult asc(),
    TResult desc(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (desc != null) {
      return desc();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult asc(_Asc value),
    @required TResult desc(_Desc value),
  }) {
    assert(asc != null);
    assert(desc != null);
    return desc(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult asc(_Asc value),
    TResult desc(_Desc value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (desc != null) {
      return desc(this);
    }
    return orElse();
  }
}

abstract class _Desc extends SortDirection {
  const _Desc._() : super._();
  const factory _Desc() = _$_Desc;
}
