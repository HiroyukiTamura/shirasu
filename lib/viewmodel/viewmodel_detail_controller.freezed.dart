// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'viewmodel_detail_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$DetailControllerModelTearOff {
  const _$DetailControllerModelTearOff();

// ignore: unused_element
  _DetailControllerModel call({String id, @required bool expand}) {
    return _DetailControllerModel(
      id: id,
      expand: expand,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $DetailControllerModel = _$DetailControllerModelTearOff();

/// @nodoc
mixin _$DetailControllerModel {
  String get id;
  bool get expand;

  $DetailControllerModelCopyWith<DetailControllerModel> get copyWith;
}

/// @nodoc
abstract class $DetailControllerModelCopyWith<$Res> {
  factory $DetailControllerModelCopyWith(DetailControllerModel value,
          $Res Function(DetailControllerModel) then) =
      _$DetailControllerModelCopyWithImpl<$Res>;
  $Res call({String id, bool expand});
}

/// @nodoc
class _$DetailControllerModelCopyWithImpl<$Res>
    implements $DetailControllerModelCopyWith<$Res> {
  _$DetailControllerModelCopyWithImpl(this._value, this._then);

  final DetailControllerModel _value;
  // ignore: unused_field
  final $Res Function(DetailControllerModel) _then;

  @override
  $Res call({
    Object id = freezed,
    Object expand = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      expand: expand == freezed ? _value.expand : expand as bool,
    ));
  }
}

/// @nodoc
abstract class _$DetailControllerModelCopyWith<$Res>
    implements $DetailControllerModelCopyWith<$Res> {
  factory _$DetailControllerModelCopyWith(_DetailControllerModel value,
          $Res Function(_DetailControllerModel) then) =
      __$DetailControllerModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, bool expand});
}

/// @nodoc
class __$DetailControllerModelCopyWithImpl<$Res>
    extends _$DetailControllerModelCopyWithImpl<$Res>
    implements _$DetailControllerModelCopyWith<$Res> {
  __$DetailControllerModelCopyWithImpl(_DetailControllerModel _value,
      $Res Function(_DetailControllerModel) _then)
      : super(_value, (v) => _then(v as _DetailControllerModel));

  @override
  _DetailControllerModel get _value => super._value as _DetailControllerModel;

  @override
  $Res call({
    Object id = freezed,
    Object expand = freezed,
  }) {
    return _then(_DetailControllerModel(
      id: id == freezed ? _value.id : id as String,
      expand: expand == freezed ? _value.expand : expand as bool,
    ));
  }
}

/// @nodoc
class _$_DetailControllerModel implements _DetailControllerModel {
  const _$_DetailControllerModel({this.id, @required this.expand})
      : assert(expand != null);

  @override
  final String id;
  @override
  final bool expand;

  @override
  String toString() {
    return 'DetailControllerModel(id: $id, expand: $expand)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailControllerModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.expand, expand) ||
                const DeepCollectionEquality().equals(other.expand, expand)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(expand);

  @override
  _$DetailControllerModelCopyWith<_DetailControllerModel> get copyWith =>
      __$DetailControllerModelCopyWithImpl<_DetailControllerModel>(
          this, _$identity);
}

abstract class _DetailControllerModel implements DetailControllerModel {
  const factory _DetailControllerModel({String id, @required bool expand}) =
      _$_DetailControllerModel;

  @override
  String get id;
  @override
  bool get expand;
  @override
  _$DetailControllerModelCopyWith<_DetailControllerModel> get copyWith;
}
