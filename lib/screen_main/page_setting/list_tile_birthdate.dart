import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'page_setting.dart';

class ListTileBirthDate extends HookWidget {

  const ListTileBirthDate({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthDate =
        useProvider(settingViewModelProvider.select((it) => it.state.editedUserInfo))
            .birthDate ??
            ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.birthDate;
    return PageSettingInMainScreenState.listItem(
      title: Strings.BIRTH_DATE_LABEL,
      subTitle: DateFormat('yyyy/MM/dd').format(birthDate),
      onTap: () async => _onTapBirthDate(context),
    );
  }

  static Future<void> _onTapBirthDate(BuildContext context) async {
    final birthDate =
        ViewModelSetting.dummyUser.httpsShirasuIoUserAttribute.birthDate;
    final picked = await showDatePicker(
      context: context,
      initialDate: birthDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year, 12, 31),
    );
    if (picked != null)
      context.read(settingViewModelProvider).updateBirthDate(picked);
  }
}