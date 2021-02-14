import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/local_json_client.dart';
import 'package:shirasu/model/local/country_data.dart';
import 'package:shirasu/model/local/prefecture_data.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';

part 'viewmodel_user_location_dialog.freezed.dart';

class ViewModelUserLocationDialog extends ViewModelBase<UserLocationModel> {

  ViewModelUserLocationDialog._({
    @required Reader reader,
    @required this.countryCode,
    @required this.prefectureCode,
  }) : super(reader, UserLocationModel.preInitialized());

  factory ViewModelUserLocationDialog.createFromSettingVm(Reader reader) {
    final location =
        reader(kPrvViewModelSetting.state).editedUserInfo.location;
    return ViewModelUserLocationDialog._(
      reader: reader,
      countryCode: location?.countryCode ??
          ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.country,
      prefectureCode: location?.prefectureCode ??
          ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.prefecture,
    );
  }

  final _jsonClient = LocalJsonClient.instance();

  final String countryCode;
  final String prefectureCode;

  @override
  Future<void> initialize() async {

    final tuple = await Util.wait2(_jsonClient.getCountryData, _jsonClient.getPrefectureData);

    trySet(UserLocationModel.initialized(
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
      const UserLocationModel(status: ModelStatus.preInitialized());

  factory UserLocationModel.initialized({
    @required CountryData countryData,
    @required PrefectureData prefectureData,
    @required String countryCode,
    @required String prefectureCode,
  }) =>
      UserLocationModel(
        status: const ModelStatus.initialized(),
        data: ModelData(
          countryData: countryData,
          prefectureData: prefectureData,
          countryCode: countryCode,
          prefectureCode: prefectureCode,
        ),
      );

  UserLocationModel toCountry(String countryCode) =>
      copyWith.data(countryCode: countryCode);

  UserLocationModel toPrefecture(String prefectureCode) =>
      copyWith.data(prefectureCode: prefectureCode);
}

@freezed
abstract class ModelStatus with _$ModelStatus {
  const factory ModelStatus.preInitialized() = _PreInitalized;

  const factory ModelStatus.initialized() = _Initialized;
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