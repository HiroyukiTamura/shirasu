import 'package:freezed_annotation/freezed_annotation.dart';

part 'ntf_data.freezed.dart';

part 'ntf_data.g.dart';

@freezed
abstract class NtfData with _$NtfData {
  const factory NtfData({
    @protected @required String action,
    String channelId,
    String programId,
  }) = _NtfData;

  const NtfData._();

  factory NtfData.fromJson(Map<String, dynamic> json) =>
      _$NtfDataFromJson(json);

  NtfAction get ntfAction => NtfAction.parse(this);
}

@protected
@freezed
abstract class NtfAction with _$NtfAction {
  factory NtfAction.parse(NtfData ntfData) {
    switch (ntfData.action) {
      case _ACTION_OPEN_CHANNEL:
        return NtfAction.openChannel(
          channelId: ntfData.channelId,
        );
      case _ACTION_OPEN_PRG:
        return NtfAction.openProgram(
          programId: ntfData.programId,
        );
      default:
        return const NtfAction.unknown();
    }
  }

  const factory NtfAction.openChannel({
    @required String channelId,
  }) = _OpenChannel;

  const factory NtfAction.openProgram({
    @required String programId,
  }) = _OpenProgram;

  const factory NtfAction.unknown() = _Unknown;

  static const _ACTION_OPEN_CHANNEL = 'OPEN_CHANNEL';
  static const _ACTION_OPEN_PRG = 'OPEN_PROGRAM';
}
