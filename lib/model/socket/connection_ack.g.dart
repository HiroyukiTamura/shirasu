// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_ack.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConnectionAck _$_$_ConnectionAckFromJson(Map<String, dynamic> json) {
  return _$_ConnectionAck(
    type: json['type'] as String,
    payload: json['payload'] == null
        ? null
        : Payload.fromJson(json['payload'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ConnectionAckToJson(_$_ConnectionAck instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.payload,
    };

_$_Payload _$_$_PayloadFromJson(Map<String, dynamic> json) {
  return _$_Payload(
    connectionTimeoutMs: json['connectionTimeoutMs'] as int,
  );
}

Map<String, dynamic> _$_$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'connectionTimeoutMs': instance.connectionTimeoutMs,
    };
