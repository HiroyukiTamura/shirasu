// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'provider_page_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PageUiDataTearOff {
  const _$PageUiDataTearOff();

// ignore: unused_element
  _PageUiData call(
      {List<CommentItem> rawComments = const [],
      bool showBottomProgressIndicator = false}) {
    return _PageUiData(
      rawComments: rawComments,
      showBottomProgressIndicator: showBottomProgressIndicator,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PageUiData = _$PageUiDataTearOff();

/// @nodoc
mixin _$PageUiData {
  List<CommentItem> get rawComments;
  bool get showBottomProgressIndicator;

  @JsonKey(ignore: true)
  $PageUiDataCopyWith<PageUiData> get copyWith;
}

/// @nodoc
abstract class $PageUiDataCopyWith<$Res> {
  factory $PageUiDataCopyWith(
          PageUiData value, $Res Function(PageUiData) then) =
      _$PageUiDataCopyWithImpl<$Res>;
  $Res call({List<CommentItem> rawComments, bool showBottomProgressIndicator});
}

/// @nodoc
class _$PageUiDataCopyWithImpl<$Res> implements $PageUiDataCopyWith<$Res> {
  _$PageUiDataCopyWithImpl(this._value, this._then);

  final PageUiData _value;
  // ignore: unused_field
  final $Res Function(PageUiData) _then;

  @override
  $Res call({
    Object rawComments = freezed,
    Object showBottomProgressIndicator = freezed,
  }) {
    return _then(_value.copyWith(
      rawComments: rawComments == freezed
          ? _value.rawComments
          : rawComments as List<CommentItem>,
      showBottomProgressIndicator: showBottomProgressIndicator == freezed
          ? _value.showBottomProgressIndicator
          : showBottomProgressIndicator as bool,
    ));
  }
}

/// @nodoc
abstract class _$PageUiDataCopyWith<$Res> implements $PageUiDataCopyWith<$Res> {
  factory _$PageUiDataCopyWith(
          _PageUiData value, $Res Function(_PageUiData) then) =
      __$PageUiDataCopyWithImpl<$Res>;
  @override
  $Res call({List<CommentItem> rawComments, bool showBottomProgressIndicator});
}

/// @nodoc
class __$PageUiDataCopyWithImpl<$Res> extends _$PageUiDataCopyWithImpl<$Res>
    implements _$PageUiDataCopyWith<$Res> {
  __$PageUiDataCopyWithImpl(
      _PageUiData _value, $Res Function(_PageUiData) _then)
      : super(_value, (v) => _then(v as _PageUiData));

  @override
  _PageUiData get _value => super._value as _PageUiData;

  @override
  $Res call({
    Object rawComments = freezed,
    Object showBottomProgressIndicator = freezed,
  }) {
    return _then(_PageUiData(
      rawComments: rawComments == freezed
          ? _value.rawComments
          : rawComments as List<CommentItem>,
      showBottomProgressIndicator: showBottomProgressIndicator == freezed
          ? _value.showBottomProgressIndicator
          : showBottomProgressIndicator as bool,
    ));
  }
}

/// @nodoc
class _$_PageUiData extends _PageUiData {
  const _$_PageUiData(
      {this.rawComments = const [], this.showBottomProgressIndicator = false})
      : assert(rawComments != null),
        assert(showBottomProgressIndicator != null),
        super._();

  @JsonKey(defaultValue: const [])
  @override
  final List<CommentItem> rawComments;
  @JsonKey(defaultValue: false)
  @override
  final bool showBottomProgressIndicator;

  @override
  String toString() {
    return 'PageUiData(rawComments: $rawComments, showBottomProgressIndicator: $showBottomProgressIndicator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageUiData &&
            (identical(other.rawComments, rawComments) ||
                const DeepCollectionEquality()
                    .equals(other.rawComments, rawComments)) &&
            (identical(other.showBottomProgressIndicator,
                    showBottomProgressIndicator) ||
                const DeepCollectionEquality().equals(
                    other.showBottomProgressIndicator,
                    showBottomProgressIndicator)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(rawComments) ^
      const DeepCollectionEquality().hash(showBottomProgressIndicator);

  @JsonKey(ignore: true)
  @override
  _$PageUiDataCopyWith<_PageUiData> get copyWith =>
      __$PageUiDataCopyWithImpl<_PageUiData>(this, _$identity);
}

abstract class _PageUiData extends PageUiData {
  const _PageUiData._() : super._();
  const factory _PageUiData(
      {List<CommentItem> rawComments,
      bool showBottomProgressIndicator}) = _$_PageUiData;

  @override
  List<CommentItem> get rawComments;
  @override
  bool get showBottomProgressIndicator;
  @override
  @JsonKey(ignore: true)
  _$PageUiDataCopyWith<_PageUiData> get copyWith;
}

/// @nodoc
class _$PageUiDataWrapperTearOff {
  const _$PageUiDataWrapperTearOff();

// ignore: unused_element
  _PageUiDataWrapper call(
      {@required PageUiData data,
      @required DateTime timeUtc,
      @required CommentsState state}) {
    return _PageUiDataWrapper(
      data: data,
      timeUtc: timeUtc,
      state: state,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PageUiDataWrapper = _$PageUiDataWrapperTearOff();

/// @nodoc
mixin _$PageUiDataWrapper {
  PageUiData get data;
  DateTime get timeUtc;
  CommentsState get state;

  @JsonKey(ignore: true)
  $PageUiDataWrapperCopyWith<PageUiDataWrapper> get copyWith;
}

/// @nodoc
abstract class $PageUiDataWrapperCopyWith<$Res> {
  factory $PageUiDataWrapperCopyWith(
          PageUiDataWrapper value, $Res Function(PageUiDataWrapper) then) =
      _$PageUiDataWrapperCopyWithImpl<$Res>;
  $Res call({PageUiData data, DateTime timeUtc, CommentsState state});

  $PageUiDataCopyWith<$Res> get data;
  $CommentsStateCopyWith<$Res> get state;
}

/// @nodoc
class _$PageUiDataWrapperCopyWithImpl<$Res>
    implements $PageUiDataWrapperCopyWith<$Res> {
  _$PageUiDataWrapperCopyWithImpl(this._value, this._then);

  final PageUiDataWrapper _value;
  // ignore: unused_field
  final $Res Function(PageUiDataWrapper) _then;

  @override
  $Res call({
    Object data = freezed,
    Object timeUtc = freezed,
    Object state = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed ? _value.data : data as PageUiData,
      timeUtc: timeUtc == freezed ? _value.timeUtc : timeUtc as DateTime,
      state: state == freezed ? _value.state : state as CommentsState,
    ));
  }

  @override
  $PageUiDataCopyWith<$Res> get data {
    if (_value.data == null) {
      return null;
    }
    return $PageUiDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }

  @override
  $CommentsStateCopyWith<$Res> get state {
    if (_value.state == null) {
      return null;
    }
    return $CommentsStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$PageUiDataWrapperCopyWith<$Res>
    implements $PageUiDataWrapperCopyWith<$Res> {
  factory _$PageUiDataWrapperCopyWith(
          _PageUiDataWrapper value, $Res Function(_PageUiDataWrapper) then) =
      __$PageUiDataWrapperCopyWithImpl<$Res>;
  @override
  $Res call({PageUiData data, DateTime timeUtc, CommentsState state});

  @override
  $PageUiDataCopyWith<$Res> get data;
  @override
  $CommentsStateCopyWith<$Res> get state;
}

/// @nodoc
class __$PageUiDataWrapperCopyWithImpl<$Res>
    extends _$PageUiDataWrapperCopyWithImpl<$Res>
    implements _$PageUiDataWrapperCopyWith<$Res> {
  __$PageUiDataWrapperCopyWithImpl(
      _PageUiDataWrapper _value, $Res Function(_PageUiDataWrapper) _then)
      : super(_value, (v) => _then(v as _PageUiDataWrapper));

  @override
  _PageUiDataWrapper get _value => super._value as _PageUiDataWrapper;

  @override
  $Res call({
    Object data = freezed,
    Object timeUtc = freezed,
    Object state = freezed,
  }) {
    return _then(_PageUiDataWrapper(
      data: data == freezed ? _value.data : data as PageUiData,
      timeUtc: timeUtc == freezed ? _value.timeUtc : timeUtc as DateTime,
      state: state == freezed ? _value.state : state as CommentsState,
    ));
  }
}

/// @nodoc
class _$_PageUiDataWrapper implements _PageUiDataWrapper {
  const _$_PageUiDataWrapper(
      {@required this.data, @required this.timeUtc, @required this.state})
      : assert(data != null),
        assert(timeUtc != null),
        assert(state != null);

  @override
  final PageUiData data;
  @override
  final DateTime timeUtc;
  @override
  final CommentsState state;

  @override
  String toString() {
    return 'PageUiDataWrapper(data: $data, timeUtc: $timeUtc, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageUiDataWrapper &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.timeUtc, timeUtc) ||
                const DeepCollectionEquality()
                    .equals(other.timeUtc, timeUtc)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(timeUtc) ^
      const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  _$PageUiDataWrapperCopyWith<_PageUiDataWrapper> get copyWith =>
      __$PageUiDataWrapperCopyWithImpl<_PageUiDataWrapper>(this, _$identity);
}

abstract class _PageUiDataWrapper implements PageUiDataWrapper {
  const factory _PageUiDataWrapper(
      {@required PageUiData data,
      @required DateTime timeUtc,
      @required CommentsState state}) = _$_PageUiDataWrapper;

  @override
  PageUiData get data;
  @override
  DateTime get timeUtc;
  @override
  CommentsState get state;
  @override
  @JsonKey(ignore: true)
  _$PageUiDataWrapperCopyWith<_PageUiDataWrapper> get copyWith;
}
