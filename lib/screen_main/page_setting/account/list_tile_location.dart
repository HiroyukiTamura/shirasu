import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/dialog/user_location_dialog.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:riverpod/all.dart';

import '../list_item.dart';

final _locationTextProvider =
    StateNotifierProvider.autoDispose<LocationTextNotifier>(
        (ref) => LocationTextNotifier(ref));

class ListTileLocation extends StatelessWidget {

  const ListTileLocation();

  @override
  Widget build(BuildContext context) => ListItem(
        title: Strings.PLACE_LABEL,
        subTitle: useProvider(_locationTextProvider.state),
        onTap: () async => _onTap(context),
      );

  Future<void> _onTap(BuildContext context) async {
    final result = await UserLocationDialog.show(context);
    if (result != null)
      context
          .read(kPrvViewModelSetting)
          .updateUserLocation(result.countryCode, result.prefectureCode);
  }
}
