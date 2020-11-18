import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';
import 'package:shirasu/model/viewer.dart';

part 'viewmodel_setting.freezed.dart';

class ViewModelSetting extends ValueNotifier<SettingModelState> {

  ViewModelSetting(): super(const StatePreInitialized());

  final apiClient = ApiClient(Client());

  /// todo should be synchronized?
  Future<void> setUpData() async {
    if (value is StateSuccess)
      return;

    try {
      final viewer = await apiClient.queryViewer();
      value = StateSuccess(viewer);
    } catch (e) {
      print(e);
      value = const StateError();
    }
  }
}

@freezed
abstract class SettingModelState with _$SettingModelState {
  const factory SettingModelState.preInitialized() = StatePreInitialized;
  const factory SettingModelState.success(Viewer data) = StateSuccess;
  const factory SettingModelState.error() = StateError;
}