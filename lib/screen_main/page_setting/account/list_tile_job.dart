import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';

class ListTileJob extends HookWidget {
  const ListTileJob({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final jobEdited = useProvider(kPrvViewModelSetting.state
            .select((it) => it.editedUserInfo)).jobCode;
    final jobLocal = useProvider(kPrvHiveAuthUser.select((it) => it?.httpsShirasuIoUserAttribute?.job));
    final job = jobEdited ?? jobLocal;

    return PageUserInfo.listItem(
      title: Strings.JOB_LABEL,
      subTitle: Strings.JOB_MAP[job] ?? Strings.DEFAULT_EMPTY,
      onTap: () async => _onTap(context),
      context: context,
    );
  }

  Future<void> _onTap(BuildContext context) async {
    final jobCode = await showDialog<String>(
        context: context,
        barrierDismissible: false,
        builder: (context) => SimpleDialog(
              title: const Text(Strings.JOB_LABEL),
              children: Strings.JOB_MAP // todo take care of if job unselected
                  .map<String, Widget>((key, value) {
                    final widget = SimpleDialogOption(
                      onPressed: () async => Navigator.pop(context, key),
                      child: Text(value),
                    );
                    return MapEntry(key, widget);
                  })
                  .values
                  .toList(),
            ));
    if (jobCode != null)
      context.read(kPrvViewModelSetting).updateJobCode(jobCode);
  }
}
