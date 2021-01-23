// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$VideoModelTearOff {
  const _$VideoModelTearOff();

// ignore: unused_element
  _VideoModel call(
      {Duration currentPos = Duration.zero,
      bool controllerVisibility = false,
      bool isSeekBarDragging = false}) {
    return _VideoModel(
      currentPos: currentPos,
      controllerVisibility: controllerVisibility,
      isSeekBarDragging: isSeekBarDragging,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideoModel = _$VideoModelTearOff();

/// @nodoc
mixin _$VideoModel {
  Duration get currentPos;
  bool get controllerVisibility;
  bool get isSeekBarDragging;

  $VideoModelCopyWith<VideoModel> get copyWith;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res>;
  $Res call(
      {Duration currentPos, bool controllerVisibility, bool isSeekBarDragging});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

  @override
  $Res call({
    Object currentPos = freezed,
    Object controllerVisibility = freezed,
    Object isSeekBarDragging = freezed,
  }) {
    return _then(_value.copyWith(
      currentPos:
          currentPos == freezed ? _value.currentPos : currentPos as Duration,
      controllerVisibility: controllerVisibility == freezed
          ? _value.controllerVisibility
          : controllerVisibility as bool,
      isSeekBarDragging: isSeekBarDragging == freezed
          ? _value.isSeekBarDragging
          : isSeekBarDragging as bool,
    ));
  }
}

/// @nodoc
abstract class _$VideoModelCopyWith<$Res> implements $VideoModelCopyWith<$Res> {
  factory _$VideoModelCopyWith(
          _VideoModel value, $Res Function(_VideoModel) then) =
      __$VideoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {Duration currentPos, bool controllerVisibility, bool isSeekBarDragging});
}

/// @nodoc
class __$VideoModelCopyWithImpl<$Res> extends _$VideoModelCopyWithImpl<$Res>
    implements _$VideoModelCopyWith<$Res> {
  __$VideoModelCopyWithImpl(
      _VideoModel _value, $Res Function(_VideoModel) _then)
      : super(_value, (v) => _then(v as _VideoModel));

  @override
  _VideoModel get _value => super._value as _VideoModel;

  @override
  $Res call({
    Object currentPos = freezed,
    Object controllerVisibility = freezed,
    Object isSeekBarDragging = freezed,
  }) {
    return _then(_VideoModel(
      currentPos:
          currentPos == freezed ? _value.currentPos : currentPos as Duration,
      controllerVisibility: controllerVisibility == freezed
          ? _value.controllerVisibility
          : controllerVisibility as bool,
      isSeekBarDragging: isSeekBarDragging == freezed
          ? _value.isSeekBarDragging
          : isSeekBarDragging as bool,
    ));
  }
}

/// @nodoc
class _$_VideoModel extends _VideoModel {
  const _$_VideoModel(
      {this.currentPos = Duration.zero,
      this.controllerVisibility = false,
      this.isSeekBarDragging = false})
      : assert(currentPos != null),
        assert(controllerVisibility != null),
        assert(isSeekBarDragging != null),
        super._();

  @JsonKey(defaultValue: Duration.zero)
  @override
  final Duration currentPos;
  @JsonKey(defaultValue: false)
  @override
  final bool controllerVisibility;
  @JsonKey(defaultValue: false)
  @override
  final bool isSeekBarDragging;

  @override
  String toString() {
    return 'VideoModel(currentPos: $currentPos, controllerVisibility: $controllerVisibility, isSeekBarDragging: $isSeekBarDragging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoModel &&
            (identical(other.currentPos, currentPos) ||
                const DeepCollectionEquality()
                    .equals(other.currentPos, currentPos)) &&
            (identical(other.controllerVisibility, controllerVisibility) ||
                const DeepCollectionEquality().equals(
                    other.controllerVisibility, controllerVisibility)) &&
            (identical(other.isSeekBarDragging, isSeekBarDragging) ||
                const DeepCollectionEquality()
                    .equals(other.isSeekBarDragging, isSeekBarDragging)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPos) ^
      const DeepCollectionEquality().hash(controllerVisibility) ^
      const DeepCollectionEquality().hash(isSeekBarDragging);

  @override
  _$VideoModelCopyWith<_VideoModel> get copyWith =>
      __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);
}

abstract class _VideoModel extends VideoModel {
  const _VideoModel._() : super._();
  const factory _VideoModel(
      {Duration currentPos,
      bool controllerVisibility,
      bool isSeekBarDragging}) = _$_VideoModel;

  @override
  Duration get currentPos;
  @override
  bool get controllerVisibility;
  @override
  bool get isSeekBarDragging;
  @override
  _$VideoModelCopyWith<_VideoModel> get copyWith;
}
