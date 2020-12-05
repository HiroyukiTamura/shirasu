import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';

part 'viewmodel_user_location.freezed.dart';

class ViewModelUserLocation extends ViewModelBase<UserLocationModel> {
  ViewModelUserLocation._({
    @required this.ref,
    @required this.countryCode,
    @required this.prefectureCode,
  }) : super(UserLocationModel.preInitialized());

  factory ViewModelUserLocation.createFromSettingVm(ProviderReference ref) {
    final location = ref.read(settingViewModelSProvider.state).editedUserInfo.location;
    return ViewModelUserLocation._(
      ref: ref,
      countryCode: location.countryCode ??
          ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.country,
      prefectureCode: location.prefectureCode ??
          ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.prefecture,
    );
  }

  final _jsonClient = const LocalJsonClient();

  final ProviderReference ref;
  final String countryCode;
  final String prefectureCode;

  @override
  Future<void> initialize() async {
    final countryData = await _jsonClient.getCountryData();
    final prefectureData = await _jsonClient.getPrefectureData();

    setState(UserLocationModel.initialized(
      countryData: countryData,
      prefectureData: prefectureData,
      countryCode: countryCode,
      prefectureCode: prefectureCode,
    ));
  }

  void changeCountry(String countryCode) =>
      setState(state.toCountry(countryCode));

  void changePrefecture(String prefectureCode) =>
      setState(state.toPrefecture(prefectureCode));

  void onTapSaveBtn() {
    setState(state.toDraft());
    ref.read(settingViewModelSProvider).updateUserLocation(countryCode, prefectureCode);
  }
}

@freezed
abstract class UserLocationModel implements _$UserLocationModel {
  const factory UserLocationModel({
    @required ModelStatus status,
    ModelData data,
  }) = _UserLocationModel;

  const UserLocationModel._();

  factory UserLocationModel.preInitialized() =>
      const UserLocationModel(status: PreInitalized());

  factory UserLocationModel.initialized({
    @required CountryData countryData,
    @required PrefectureData prefectureData,
    @required String countryCode,
    @required String prefectureCode,
  }) =>
      UserLocationModel(
        status: const Initalized(),
        data: ModelData(
          countryData: countryData,
          prefectureData: prefectureData,
          countryCode: countryCode,
          prefectureCode: prefectureCode,
        ),
      );

  UserLocationModel toDraft() => copyWith(status: const Drafted());

  UserLocationModel toCountry(String countryCode) =>
      copyWith(data: data.copyWith(countryCode: countryCode));

  UserLocationModel toPrefecture(String prefectureCode) =>
      copyWith(data: data.copyWith(prefectureCode: prefectureCode));
}

@freezed
abstract class ModelStatus with _$ModelStatus {
  const factory ModelStatus.preInitialized() = PreInitalized;

  const factory ModelStatus.initialized() = Initalized;

  const factory ModelStatus.drafted() = Drafted;

  const factory ModelStatus.draftNotified() = DraftNotified;
}

@freezed
abstract class ModelData with _$ModelData {
  const factory ModelData({
    @required CountryData countryData,
    @required PrefectureData prefectureData,
    @required String countryCode,
    @required String prefectureCode,
  }) = _ModelData;
}
