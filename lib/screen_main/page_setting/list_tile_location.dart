import 'package:async/async.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/dialog/user_location_dialog.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:shirasu/viewmodel/model_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:riverpod/all.dart';
import 'package:riverpod/src/framework.dart';

final _locationTextProvider =
    StateNotifierProvider.autoDispose<LocationTextNotifier>(
        (ref) => LocationTextNotifier(ref));

class ListTileLocation extends HookWidget {
  @override
  Widget build(BuildContext context) => PageSettingInMainScreenState.listItem(
        title: Strings.PLACE_LABEL,
        subTitle: useProvider(_locationTextProvider.state),
        onTap: () async {
          final result = await UserLocationDialog.show(context);
          if (result != null)
            context
                .read(settingViewModelSProvider)
                .updateUserLocation(result.countryCode, result.prefectureCode);
        },
      );
}

class LocationTextNotifier extends StateNotifier<String>
    with StateTrySetter<String> {
  LocationTextNotifier(AutoDisposeProviderReference ref) : super('') {
    final removeListener = ref
        .watch<ViewModelSetting>(settingViewModelSProvider)
        .addListener(
            (state) async => _updateLocation(state.editedUserInfo.location));
    ref.onDispose(removeListener);
  }

  final LocalJsonClient _jsonClient = const LocalJsonClient();

  CancelableOperation<String> _completer;

  /// cancel old future if it's not completed
  Future<void> _updateLocation(Location location) async {
    if (_completer?.isCompleted == false)
      await _completer.cancel();
    _completer = CancelableOperation.fromFuture(
        _jsonClient.genLocationStr(ViewModelSetting.dummyUser, location));
    final text = await _completer.value;
    setState(text);
  }
}
