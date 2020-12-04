import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/viewer.dart';

part 'model_setting.freezed.dart';

@freezed
abstract class SettingModelState with _$SettingModelState {
  const factory SettingModelState.preInitialized() = StatePreInitialized;

  const factory SettingModelState.loading() = StateLoading;

  const factory SettingModelState.success(Viewer data, String locationStr) =
      StateSuccess;

  const factory SettingModelState.error() = StateError;
}

@freezed
abstract class EditedUserInfo implements _$EditedUserInfo {
  const factory EditedUserInfo({
    DateTime birthDate,
    String jobCode,
    String countryCode,
    String prefectureCode,
  }) = _EditedUserInfo;

  factory EditedUserInfo.empty() => const EditedUserInfo();

  const EditedUserInfo._();

  bool get isEdited =>
      birthDate != null ||
      jobCode != null ||
      countryCode != null ||
      prefectureCode != null;
}

@freezed
abstract class SettingModel with _$SettingModel {
  const factory SettingModel(
          SettingModelState settingModelState, EditedUserInfo editedUserInfo) =
      _SettingModel;

  factory SettingModel.initial() =>
      const SettingModel(SettingModelState.preInitialized(), EditedUserInfo());
}
