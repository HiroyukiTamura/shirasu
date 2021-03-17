import 'package:freezed_annotation/freezed_annotation.dart';

part 'ntf_data.freezed.dart';
part 'ntf_data.g.dart';

@freezed
abstract class NtfData with _$NtfData {
  const factory NtfData({
    @required @required String programId,
    @protected @required String action,
  }) = _NtfData;

  const NtfData._();

  factory NtfData.fromJson(Map<String, dynamic> json) =>
      _$NtfDataFromJson(json);

  NtfAction get ntfAction => NtfAction.parse(action, programId);
}

@protected
@freezed
abstract class NtfAction with _$NtfAction {

  factory NtfAction.parse(String action, String programId) {
    if (action == _ACTION_OPEN_PRG)
      return NtfAction.openProgram(programId);
    else
      return const NtfAction.unknown();
  }

  const factory NtfAction.openProgram(programId) = _OpenProgram;

  const factory NtfAction.unknown() = _UNKNOWN;

  static const _ACTION_OPEN_PRG = 'OPEN_PROGRAM';
}