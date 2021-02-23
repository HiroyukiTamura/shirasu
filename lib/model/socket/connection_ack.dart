import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_ack.freezed.dart';
part 'connection_ack.g.dart';

@freezed
abstract class ConnectionAck with _$ConnectionAck {
  @Assert("type = 'connection_ack'")
  const factory ConnectionAck({
    @required String type,
    @required Payload payload,
  }) = _ConnectionAck;

  factory ConnectionAck.fromJson(Map<String, dynamic> json) => _$ConnectionAckFromJson(json);
}

@freezed
abstract class Payload with _$Payload {
  const factory Payload({
    @required int connectionTimeoutMs,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) => _$PayloadFromJson(json);
}
