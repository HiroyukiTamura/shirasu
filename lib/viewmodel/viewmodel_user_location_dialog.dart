import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/model/country_data.dart';
import 'package:shirasu/model/prefecture_data.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';

part 'viewmodel_user_location_dialog.freezed.dart';

class ViewModelUserLocationDialog extends ViewModelBase<UserLocationModel> {

  ViewModelUserLocationDialog._({
    @required this.ref,
    @required this.countryCode,
    @required this.prefectureCode,
  }) : super(UserLocationModel.preInitialized());

  factory ViewModelUserLocationDialog.createFromSettingVm(ProviderReference ref) {
    final location =
        ref.read(settingViewModelSProvider.state).editedUserInfo.location;
    return ViewModelUserLocationDialog._(
      ref: ref,
      countryCode: location?.countryCode ??
          ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.country,
      prefectureCode: location?.prefectureCode ??
          ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.prefecture,
    );
  }

  final _jsonClient = LocalJsonClient.instance();

  final ProviderReference ref;
  final String countryCode;
  final String prefectureCode;

  @override
  Future<void> initialize() async {

    final tuple = await Util.wait2(_jsonClient.getCountryData, _jsonClient.getPrefectureData);

    setState(UserLocationModel.initialized(
      countryData: tuple.item1,
      prefectureData: tuple.item2,
      countryCode: countryCode,
      prefectureCode: prefectureCode,
    ));
  }

  void changeCountry(String countryCode) =>
      state = state.toCountry(countryCode);

  void changePrefecture(String prefectureCode) =>
      state = state.toPrefecture(prefectureCode);
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

  UserLocationModel toCountry(String countryCode) =>
      copyWith(data: data.copyWith(countryCode: countryCode));

  UserLocationModel toPrefecture(String prefectureCode) =>
      copyWith(data: data.copyWith(prefectureCode: prefectureCode));
}

@freezed
abstract class ModelStatus with _$ModelStatus {
  const factory ModelStatus.preInitialized() = PreInitalized;

  const factory ModelStatus.initialized() = Initalized;
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