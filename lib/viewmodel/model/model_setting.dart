import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';

part 'model_setting.freezed.dart';

@freezed
abstract class SettingModelState with _$SettingModelState {
  const factory SettingModelState.preInitialized() = _StatePreInitialized;

  const factory SettingModelState.success(ViewerWrapper data) = _StateSuccess;

  const factory SettingModelState.error(ErrorMsgCommon errorMsg) = _StateError;

  const SettingModelState._();

  void whenSuccess(void Function(ViewerWrapper data) predicate) {
    maybeWhen(
      orElse: () {},
      success: (ViewerWrapper data) => predicate(data),
    );
  }
}

@freezed
abstract class EditedUserInfo implements _$EditedUserInfo {
  const factory EditedUserInfo({
    DateTime birthDate,
    String jobCode,
    Location location,
  }) = _EditedUserInfo;

  factory EditedUserInfo.empty() => const EditedUserInfo();

  const EditedUserInfo._();

  bool get isEdited => birthDate != null || jobCode != null || location != null;
}

@freezed
abstract class SettingModel with _$SettingModel {
  const factory SettingModel({
    @required SettingModelState settingModelState,
    @required bool uploadingProfile,
    @required EditedUserInfo editedUserInfo,
  }) = _SettingModel;

  factory SettingModel.initial() => const SettingModel(
        settingModelState: SettingModelState.preInitialized(),
        editedUserInfo: EditedUserInfo(),
        uploadingProfile: false,
      );
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    @required String countryCode,
    @required String prefectureCode,
  }) = _Location;
}
