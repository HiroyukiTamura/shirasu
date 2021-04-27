// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'remove_review_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RemoveReviewData _$RemoveReviewDataFromJson(Map<String, dynamic> json) {
  return _RemoveReviewData.fromJson(json);
}

/// @nodoc
class _$RemoveReviewDataTearOff {
  const _$RemoveReviewDataTearOff();

// ignore: unused_element
  _RemoveReviewData call({@required String removeReview}) {
    return _RemoveReviewData(
      removeReview: removeReview,
    );
  }

// ignore: unused_element
  RemoveReviewData fromJson(Map<String, Object> json) {
    return RemoveReviewData.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RemoveReviewData = _$RemoveReviewDataTearOff();

/// @nodoc
mixin _$RemoveReviewData {
  /// ex. genron-genron-20201027:google-oauth2|109431228853603579684
  String get removeReview;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $RemoveReviewDataCopyWith<RemoveReviewData> get copyWith;
}

/// @nodoc
abstract class $RemoveReviewDataCopyWith<$Res> {
  factory $RemoveReviewDataCopyWith(
          RemoveReviewData value, $Res Function(RemoveReviewData) then) =
      _$RemoveReviewDataCopyWithImpl<$Res>;
  $Res call({String removeReview});
}

/// @nodoc
class _$RemoveReviewDataCopyWithImpl<$Res>
    implements $RemoveReviewDataCopyWith<$Res> {
  _$RemoveReviewDataCopyWithImpl(this._value, this._then);

  final RemoveReviewData _value;
  // ignore: unused_field
  final $Res Function(RemoveReviewData) _then;

  @override
  $Res call({
    Object removeReview = freezed,
  }) {
    return _then(_value.copyWith(
      removeReview: removeReview == freezed
          ? _value.removeReview
          : removeReview as String,
    ));
  }
}

/// @nodoc
abstract class _$RemoveReviewDataCopyWith<$Res>
    implements $RemoveReviewDataCopyWith<$Res> {
  factory _$RemoveReviewDataCopyWith(
          _RemoveReviewData value, $Res Function(_RemoveReviewData) then) =
      __$RemoveReviewDataCopyWithImpl<$Res>;
  @override
  $Res call({String removeReview});
}

/// @nodoc
class __$RemoveReviewDataCopyWithImpl<$Res>
    extends _$RemoveReviewDataCopyWithImpl<$Res>
    implements _$RemoveReviewDataCopyWith<$Res> {
  __$RemoveReviewDataCopyWithImpl(
      _RemoveReviewData _value, $Res Function(_RemoveReviewData) _then)
      : super(_value, (v) => _then(v as _RemoveReviewData));

  @override
  _RemoveReviewData get _value => super._value as _RemoveReviewData;

  @override
  $Res call({
    Object removeReview = freezed,
  }) {
    return _then(_RemoveReviewData(
      removeReview: removeReview == freezed
          ? _value.removeReview
          : removeReview as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_RemoveReviewData implements _RemoveReviewData {
  const _$_RemoveReviewData({@required this.removeReview})
      : assert(removeReview != null);

  factory _$_RemoveReviewData.fromJson(Map<String, dynamic> json) =>
      _$_$_RemoveReviewDataFromJson(json);

  @override

  /// ex. genron-genron-20201027:google-oauth2|109431228853603579684
  final String removeReview;

  @override
  String toString() {
    return 'RemoveReviewData(removeReview: $removeReview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveReviewData &&
            (identical(other.removeReview, removeReview) ||
                const DeepCollectionEquality()
                    .equals(other.removeReview, removeReview)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(removeReview);

  @JsonKey(ignore: true)
  @override
  _$RemoveReviewDataCopyWith<_RemoveReviewData> get copyWith =>
      __$RemoveReviewDataCopyWithImpl<_RemoveReviewData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RemoveReviewDataToJson(this);
  }
}

abstract class _RemoveReviewData implements RemoveReviewData {
  const factory _RemoveReviewData({@required String removeReview}) =
      _$_RemoveReviewData;

  factory _RemoveReviewData.fromJson(Map<String, dynamic> json) =
      _$_RemoveReviewData.fromJson;

  @override

  /// ex. genron-genron-20201027:google-oauth2|109431228853603579684
  String get removeReview;
  @override
  @JsonKey(ignore: true)
  _$RemoveReviewDataCopyWith<_RemoveReviewData> get copyWith;
}
