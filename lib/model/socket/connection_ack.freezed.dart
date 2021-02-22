// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'connection_ack.json';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ConnectionAck _$ConnectionAckFromJson(Map<String, dynamic> json) {
  return _ConnectionAck.fromJson(json);
}

/// @nodoc
class _$ConnectionAckTearOff {
  const _$ConnectionAckTearOff();

// ignore: unused_element
  _ConnectionAck call({@required String type, @required Payload payload}) {
    return _ConnectionAck(
      type: type,
      payload: payload,
    );
  }

// ignore: unused_element
  ConnectionAck fromJson(Map<String, Object> json) {
    return ConnectionAck.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ConnectionAck = _$ConnectionAckTearOff();

/// @nodoc
mixin _$ConnectionAck {
  String get type;
  Payload get payload;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ConnectionAckCopyWith<ConnectionAck> get copyWith;
}

/// @nodoc
abstract class $ConnectionAckCopyWith<$Res> {
  factory $ConnectionAckCopyWith(
          ConnectionAck value, $Res Function(ConnectionAck) then) =
      _$ConnectionAckCopyWithImpl<$Res>;
  $Res call({String type, Payload payload});

  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$ConnectionAckCopyWithImpl<$Res>
    implements $ConnectionAckCopyWith<$Res> {
  _$ConnectionAckCopyWithImpl(this._value, this._then);

  final ConnectionAck _value;
  // ignore: unused_field
  final $Res Function(ConnectionAck) _then;

  @override
  $Res call({
    Object type = freezed,
    Object payload = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
      payload: payload == freezed ? _value.payload : payload as Payload,
    ));
  }

  @override
  $PayloadCopyWith<$Res> get payload {
    if (_value.payload == null) {
      return null;
    }
    return $PayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$ConnectionAckCopyWith<$Res>
    implements $ConnectionAckCopyWith<$Res> {
  factory _$ConnectionAckCopyWith(
          _ConnectionAck value, $Res Function(_ConnectionAck) then) =
      __$ConnectionAckCopyWithImpl<$Res>;
  @override
  $Res call({String type, Payload payload});

  @override
  $PayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$ConnectionAckCopyWithImpl<$Res>
    extends _$ConnectionAckCopyWithImpl<$Res>
    implements _$ConnectionAckCopyWith<$Res> {
  __$ConnectionAckCopyWithImpl(
      _ConnectionAck _value, $Res Function(_ConnectionAck) _then)
      : super(_value, (v) => _then(v as _ConnectionAck));

  @override
  _ConnectionAck get _value => super._value as _ConnectionAck;

  @override
  $Res call({
    Object type = freezed,
    Object payload = freezed,
  }) {
    return _then(_ConnectionAck(
      type: type == freezed ? _value.type : type as String,
      payload: payload == freezed ? _value.payload : payload as Payload,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ConnectionAck implements _ConnectionAck {
  const _$_ConnectionAck({@required this.type, @required this.payload})
      : assert(type != null),
        assert(payload != null);

  factory _$_ConnectionAck.fromJson(Map<String, dynamic> json) =>
      _$_$_ConnectionAckFromJson(json);

  @override
  final String type;
  @override
  final Payload payload;

  @override
  String toString() {
    return 'ConnectionAck(type: $type, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConnectionAck &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(payload);

  @JsonKey(ignore: true)
  @override
  _$ConnectionAckCopyWith<_ConnectionAck> get copyWith =>
      __$ConnectionAckCopyWithImpl<_ConnectionAck>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConnectionAckToJson(this);
  }
}

abstract class _ConnectionAck implements ConnectionAck {
  const factory _ConnectionAck(
      {@required String type, @required Payload payload}) = _$_ConnectionAck;

  factory _ConnectionAck.fromJson(Map<String, dynamic> json) =
      _$_ConnectionAck.fromJson;

  @override
  String get type;
  @override
  Payload get payload;
  @override
  @JsonKey(ignore: true)
  _$ConnectionAckCopyWith<_ConnectionAck> get copyWith;
}

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
class _$PayloadTearOff {
  const _$PayloadTearOff();

// ignore: unused_element
  _Payload call({@required int connectionTimeoutMs}) {
    return _Payload(
      connectionTimeoutMs: connectionTimeoutMs,
    );
  }

// ignore: unused_element
  Payload fromJson(Map<String, Object> json) {
    return Payload.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Payload = _$PayloadTearOff();

/// @nodoc
mixin _$Payload {
  int get connectionTimeoutMs;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res>;
  $Res call({int connectionTimeoutMs});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  final Payload _value;
  // ignore: unused_field
  final $Res Function(Payload) _then;

  @override
  $Res call({
    Object connectionTimeoutMs = freezed,
  }) {
    return _then(_value.copyWith(
      connectionTimeoutMs: connectionTimeoutMs == freezed
          ? _value.connectionTimeoutMs
          : connectionTimeoutMs as int,
    ));
  }
}

/// @nodoc
abstract class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) then) =
      __$PayloadCopyWithImpl<$Res>;
  @override
  $Res call({int connectionTimeoutMs});
}

/// @nodoc
class __$PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(_Payload _value, $Res Function(_Payload) _then)
      : super(_value, (v) => _then(v as _Payload));

  @override
  _Payload get _value => super._value as _Payload;

  @override
  $Res call({
    Object connectionTimeoutMs = freezed,
  }) {
    return _then(_Payload(
      connectionTimeoutMs: connectionTimeoutMs == freezed
          ? _value.connectionTimeoutMs
          : connectionTimeoutMs as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Payload implements _Payload {
  const _$_Payload({@required this.connectionTimeoutMs})
      : assert(connectionTimeoutMs != null);

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$_$_PayloadFromJson(json);

  @override
  final int connectionTimeoutMs;

  @override
  String toString() {
    return 'Payload(connectionTimeoutMs: $connectionTimeoutMs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payload &&
            (identical(other.connectionTimeoutMs, connectionTimeoutMs) ||
                const DeepCollectionEquality()
                    .equals(other.connectionTimeoutMs, connectionTimeoutMs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(connectionTimeoutMs);

  @JsonKey(ignore: true)
  @override
  _$PayloadCopyWith<_Payload> get copyWith =>
      __$PayloadCopyWithImpl<_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PayloadToJson(this);
  }
}

abstract class _Payload implements Payload {
  const factory _Payload({@required int connectionTimeoutMs}) = _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  int get connectionTimeoutMs;
  @override
  @JsonKey(ignore: true)
  _$PayloadCopyWith<_Payload> get copyWith;
}
