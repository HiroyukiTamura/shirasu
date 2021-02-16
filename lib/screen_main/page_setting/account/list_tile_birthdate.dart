import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import '../page_setting.dart';

class ListTileBirthDate extends HookWidget {
  const ListTileBirthDate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final birthDateEdited = useProvider(
        kPrvViewModelSetting.state.select((it) => it.editedUserInfo)).birthDate;
    final birthDateLocal = useProvider(kPrvHiveAuthUser
        .select((it) => it?.httpsShirasuIoUserAttribute?.birthDate));
    final birthDate = birthDateEdited ?? birthDateLocal;
    return PageUserInfo.listItem(
      title: Strings.BIRTH_DATE_LABEL,
      subTitle: DateFormat('yyyy/MM/dd').format(birthDate),
      onTap: () async => _onTapBirthDate(context),
      context: context,
    );
  }

  static Future<void> _onTapBirthDate(BuildContext context) async {
    final birthDate =
        context.read(kPrvViewModelSetting.state).editedUserInfo.birthDate ??
            context.read(kPrvHiveAuthUser).httpsShirasuIoUserAttribute.birthDate;
    final picked = await showDatePicker(
      context: context,
      initialDate: birthDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(DateTime.now().year, 12, 31),
    );
    if (picked != null)
      context.read(kPrvViewModelSetting).updateBirthDate(picked);
  }
}
