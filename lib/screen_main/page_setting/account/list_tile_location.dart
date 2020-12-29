import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/dialog/user_location_dialog.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:riverpod/all.dart';

final _locationTextProvider =
    StateNotifierProvider.autoDispose<LocationTextNotifier>(
        (ref) => LocationTextNotifier(ref));

class ListTileLocation extends HookWidget {
  @override
  Widget build(BuildContext context) => PageUserInfo.listItem(
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
