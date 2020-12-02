import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

part 'viewmodel_user_location.freezed.dart';

class ViewModelUserLocation extends StateNotifier<UserLocationModel> {
  ViewModelUserLocation(UserLocation location) : super(UserLocationModel.parse(location));


}

/// @see UserLocation
@freezed
abstract class UserLocationModel with _$UserLocationModel {
  const factory UserLocationModel({
    @required String countryCode,
    @required String prefectureCode,
  }) = _UserLocationModel;

  factory UserLocationModel.parse(UserLocation userLocation) =>
      UserLocationModel(
        countryCode: userLocation.countryCode,
        prefectureCode: userLocation.prefectureCode,
      );
}
