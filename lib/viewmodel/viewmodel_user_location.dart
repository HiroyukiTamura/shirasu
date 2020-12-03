import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';

part 'viewmodel_user_location.freezed.dart';

class ViewModelUserLocation extends ViewModelBase<UserLocationModel>
    with LocatorMixin {
  ViewModelUserLocation(this._initialLocation)
      : super(UserLocationModel.preInitialized());

  final UserLocation _initialLocation;
  final _jsonClient = const LocalJsonClient();

  @override
  Future<void> initialize() async {
    final countryData = await _jsonClient.getCountryData();
    final prefectureData = await _jsonClient.getPrefectureData();

    setState(UserLocationModel.initialized(
      countryData: countryData,
      prefectureData: prefectureData,
      userLocation: _initialLocation,
    ));
  }

  void changeCountry(String countryCode) =>
      setState(state.toCountry(countryCode));

  void changePrefecture(String prefectureCode) =>
      setState(state.toPrefecture(prefectureCode));

  void onTapSaveBtn() => setState(state.toDraft());
}

/// @see [UserLocation]
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
    @required UserLocation userLocation,
  }) =>
      UserLocationModel(
        status: const Initalized(),
        data: ModelData(
          countryData: countryData,
          prefectureData: prefectureData,
          countryCode: userLocation.countryCode,
          prefectureCode: userLocation.prefectureCode,
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
