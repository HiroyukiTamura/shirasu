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
      {double durationSec = 0,
      double currentPosSec = 0,
      bool isPlaying = false,
      bool controllerVisibility = false}) {
    return _VideoModel(
      durationSec: durationSec,
      currentPosSec: currentPosSec,
      isPlaying: isPlaying,
      controllerVisibility: controllerVisibility,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $VideoModel = _$VideoModelTearOff();

/// @nodoc
mixin _$VideoModel {
  double get durationSec;
  double get currentPosSec;
  bool get isPlaying;
  bool get controllerVisibility;

  $VideoModelCopyWith<VideoModel> get copyWith;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res>;
  $Res call(
      {double durationSec,
      double currentPosSec,
      bool isPlaying,
      bool controllerVisibility});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res> implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  final VideoModel _value;
  // ignore: unused_field
  final $Res Function(VideoModel) _then;

  @override
  $Res call({
    Object durationSec = freezed,
    Object currentPosSec = freezed,
    Object isPlaying = freezed,
    Object controllerVisibility = freezed,
  }) {
    return _then(_value.copyWith(
      durationSec:
          durationSec == freezed ? _value.durationSec : durationSec as double,
      currentPosSec: currentPosSec == freezed
          ? _value.currentPosSec
          : currentPosSec as double,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      controllerVisibility: controllerVisibility == freezed
          ? _value.controllerVisibility
          : controllerVisibility as bool,
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
      {double durationSec,
      double currentPosSec,
      bool isPlaying,
      bool controllerVisibility});
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
    Object durationSec = freezed,
    Object currentPosSec = freezed,
    Object isPlaying = freezed,
    Object controllerVisibility = freezed,
  }) {
    return _then(_VideoModel(
      durationSec:
          durationSec == freezed ? _value.durationSec : durationSec as double,
      currentPosSec: currentPosSec == freezed
          ? _value.currentPosSec
          : currentPosSec as double,
      isPlaying: isPlaying == freezed ? _value.isPlaying : isPlaying as bool,
      controllerVisibility: controllerVisibility == freezed
          ? _value.controllerVisibility
          : controllerVisibility as bool,
    ));
  }
}

/// @nodoc
class _$_VideoModel implements _VideoModel {
  const _$_VideoModel(
      {this.durationSec = 0,
      this.currentPosSec = 0,
      this.isPlaying = false,
      this.controllerVisibility = false})
      : assert(durationSec != null),
        assert(currentPosSec != null),
        assert(isPlaying != null),
        assert(controllerVisibility != null);

  @JsonKey(defaultValue: 0)
  @override
  final double durationSec;
  @JsonKey(defaultValue: 0)
  @override
  final double currentPosSec;
  @JsonKey(defaultValue: false)
  @override
  final bool isPlaying;
  @JsonKey(defaultValue: false)
  @override
  final bool controllerVisibility;

  @override
  String toString() {
    return 'VideoModel(durationSec: $durationSec, currentPosSec: $currentPosSec, isPlaying: $isPlaying, controllerVisibility: $controllerVisibility)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VideoModel &&
            (identical(other.durationSec, durationSec) ||
                const DeepCollectionEquality()
                    .equals(other.durationSec, durationSec)) &&
            (identical(other.currentPosSec, currentPosSec) ||
                const DeepCollectionEquality()
                    .equals(other.currentPosSec, currentPosSec)) &&
            (identical(other.isPlaying, isPlaying) ||
                const DeepCollectionEquality()
                    .equals(other.isPlaying, isPlaying)) &&
            (identical(other.controllerVisibility, controllerVisibility) ||
                const DeepCollectionEquality()
                    .equals(other.controllerVisibility, controllerVisibility)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(durationSec) ^
      const DeepCollectionEquality().hash(currentPosSec) ^
      const DeepCollectionEquality().hash(isPlaying) ^
      const DeepCollectionEquality().hash(controllerVisibility);

  @override
  _$VideoModelCopyWith<_VideoModel> get copyWith =>
      __$VideoModelCopyWithImpl<_VideoModel>(this, _$identity);
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      {double durationSec,
      double currentPosSec,
      bool isPlaying,
      bool controllerVisibility}) = _$_VideoModel;

  @override
  double get durationSec;
  @override
  double get currentPosSec;
  @override
  bool get isPlaying;
  @override
  bool get controllerVisibility;
  @override
  _$VideoModelCopyWith<_VideoModel> get copyWith;
}
