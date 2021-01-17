// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'horizontal_drag_detector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HorizontalDragDataHolderTearOff {
  const _$HorizontalDragDataHolderTearOff();

// ignore: unused_element
  _HorizontalDragDataHolder call({HorizontalDragData data}) {
    return _HorizontalDragDataHolder(
      data: data,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HorizontalDragDataHolder = _$HorizontalDragDataHolderTearOff();

/// @nodoc
mixin _$HorizontalDragDataHolder {
  HorizontalDragData get data;

  $HorizontalDragDataHolderCopyWith<HorizontalDragDataHolder> get copyWith;
}

/// @nodoc
abstract class $HorizontalDragDataHolderCopyWith<$Res> {
  factory $HorizontalDragDataHolderCopyWith(HorizontalDragDataHolder value,
          $Res Function(HorizontalDragDataHolder) then) =
      _$HorizontalDragDataHolderCopyWithImpl<$Res>;
  $Res call({HorizontalDragData data});

  $HorizontalDragDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HorizontalDragDataHolderCopyWithImpl<$Res>
    implements $HorizontalDragDataHolderCopyWith<$Res> {
  _$HorizontalDragDataHolderCopyWithImpl(this._value, this._then);

  final HorizontalDragDataHolder _value;
  // ignore: unused_field
  final $Res Function(HorizontalDragDataHolder) _then;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as HorizontalDragData,
    ));
  }

  @override
  $HorizontalDragDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $HorizontalDragDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$HorizontalDragDataHolderCopyWith<$Res>
    implements $HorizontalDragDataHolderCopyWith<$Res> {
  factory _$HorizontalDragDataHolderCopyWith(_HorizontalDragDataHolder value,
          $Res Function(_HorizontalDragDataHolder) then) =
      __$HorizontalDragDataHolderCopyWithImpl<$Res>;
  @override
  $Res call({HorizontalDragData data});

  @override
  $HorizontalDragDataCopyWith<$Res> get data;
}

/// @nodoc
class __$HorizontalDragDataHolderCopyWithImpl<$Res>
    extends _$HorizontalDragDataHolderCopyWithImpl<$Res>
    implements _$HorizontalDragDataHolderCopyWith<$Res> {
  __$HorizontalDragDataHolderCopyWithImpl(_HorizontalDragDataHolder _value,
      $Res Function(_HorizontalDragDataHolder) _then)
      : super(_value, (v) => _then(v as _HorizontalDragDataHolder));

  @override
  _HorizontalDragDataHolder get _value =>
      super._value as _HorizontalDragDataHolder;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(_HorizontalDragDataHolder(
      data: data == freezed ? _value.data : data as HorizontalDragData,
    ));
  }
}

/// @nodoc
class _$_HorizontalDragDataHolder implements _HorizontalDragDataHolder {
  const _$_HorizontalDragDataHolder({this.data});

  @override
  final HorizontalDragData data;

  @override
  String toString() {
    return 'HorizontalDragDataHolder(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HorizontalDragDataHolder &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  _$HorizontalDragDataHolderCopyWith<_HorizontalDragDataHolder> get copyWith =>
      __$HorizontalDragDataHolderCopyWithImpl<_HorizontalDragDataHolder>(
          this, _$identity);
}

abstract class _HorizontalDragDataHolder implements HorizontalDragDataHolder {
  const factory _HorizontalDragDataHolder({HorizontalDragData data}) =
      _$_HorizontalDragDataHolder;

  @override
  HorizontalDragData get data;
  @override
  _$HorizontalDragDataHolderCopyWith<_HorizontalDragDataHolder> get copyWith;
}

/// @nodoc
class _$HorizontalDragDataTearOff {
  const _$HorizontalDragDataTearOff();

// ignore: unused_element
  _HorizontalDragData call(
      {@required double startDx, @required double currentDx}) {
    return _HorizontalDragData(
      startDx: startDx,
      currentDx: currentDx,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HorizontalDragData = _$HorizontalDragDataTearOff();

/// @nodoc
mixin _$HorizontalDragData {
  double get startDx;
  double get currentDx;

  $HorizontalDragDataCopyWith<HorizontalDragData> get copyWith;
}

/// @nodoc
abstract class $HorizontalDragDataCopyWith<$Res> {
  factory $HorizontalDragDataCopyWith(
          HorizontalDragData value, $Res Function(HorizontalDragData) then) =
      _$HorizontalDragDataCopyWithImpl<$Res>;
  $Res call({double startDx, double currentDx});
}

/// @nodoc
class _$HorizontalDragDataCopyWithImpl<$Res>
    implements $HorizontalDragDataCopyWith<$Res> {
  _$HorizontalDragDataCopyWithImpl(this._value, this._then);

  final HorizontalDragData _value;
  // ignore: unused_field
  final $Res Function(HorizontalDragData) _then;

  @override
  $Res call({
    Object startDx = freezed,
    Object currentDx = freezed,
  }) {
    return _then(_value.copyWith(
      startDx: startDx == freezed ? _value.startDx : startDx as double,
      currentDx: currentDx == freezed ? _value.currentDx : currentDx as double,
    ));
  }
}

/// @nodoc
abstract class _$HorizontalDragDataCopyWith<$Res>
    implements $HorizontalDragDataCopyWith<$Res> {
  factory _$HorizontalDragDataCopyWith(
          _HorizontalDragData value, $Res Function(_HorizontalDragData) then) =
      __$HorizontalDragDataCopyWithImpl<$Res>;
  @override
  $Res call({double startDx, double currentDx});
}

/// @nodoc
class __$HorizontalDragDataCopyWithImpl<$Res>
    extends _$HorizontalDragDataCopyWithImpl<$Res>
    implements _$HorizontalDragDataCopyWith<$Res> {
  __$HorizontalDragDataCopyWithImpl(
      _HorizontalDragData _value, $Res Function(_HorizontalDragData) _then)
      : super(_value, (v) => _then(v as _HorizontalDragData));

  @override
  _HorizontalDragData get _value => super._value as _HorizontalDragData;

  @override
  $Res call({
    Object startDx = freezed,
    Object currentDx = freezed,
  }) {
    return _then(_HorizontalDragData(
      startDx: startDx == freezed ? _value.startDx : startDx as double,
      currentDx: currentDx == freezed ? _value.currentDx : currentDx as double,
    ));
  }
}

/// @nodoc
class _$_HorizontalDragData implements _HorizontalDragData {
  const _$_HorizontalDragData(
      {@required this.startDx, @required this.currentDx})
      : assert(startDx != null),
        assert(currentDx != null);

  @override
  final double startDx;
  @override
  final double currentDx;

  @override
  String toString() {
    return 'HorizontalDragData(startDx: $startDx, currentDx: $currentDx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HorizontalDragData &&
            (identical(other.startDx, startDx) ||
                const DeepCollectionEquality()
                    .equals(other.startDx, startDx)) &&
            (identical(other.currentDx, currentDx) ||
                const DeepCollectionEquality()
                    .equals(other.currentDx, currentDx)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(startDx) ^
      const DeepCollectionEquality().hash(currentDx);

  @override
  _$HorizontalDragDataCopyWith<_HorizontalDragData> get copyWith =>
      __$HorizontalDragDataCopyWithImpl<_HorizontalDragData>(this, _$identity);
}

abstract class _HorizontalDragData implements HorizontalDragData {
  const factory _HorizontalDragData(
      {@required double startDx,
      @required double currentDx}) = _$_HorizontalDragData;

  @override
  double get startDx;
  @override
  double get currentDx;
  @override
  _$HorizontalDragDataCopyWith<_HorizontalDragData> get copyWith;
}
