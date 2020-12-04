import 'package:after_layout/after_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/viewmodel/viewmodel_user_location_dialog.dart';
import 'package:shirasu/extension.dart';

final _viewModelProvider =
    StateNotifierProvider.autoDispose<ViewModelUserLocationDialog>(
  (ref) => ViewModelUserLocationDialog.createFromSettingVm(ref),
);

class MsgUserLocation {
  const MsgUserLocation(this.countryCode, this.prefectureCode);

  final String countryCode;
  final String prefectureCode;
}

class UserLocationDialog extends StatefulHookWidget {
  const UserLocationDialog();

  static Future<MsgUserLocation> show(BuildContext context) async => showDialog(
      context: context, builder: (context) => const UserLocationDialog());

  @override
  _UserLocationDialogState createState() => _UserLocationDialogState();
}

class _UserLocationDialogState extends State<UserLocationDialog>
    with AfterLayoutMixin<UserLocationDialog> {
  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewModelProvider).initialize();

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: const Text(Strings.DIALOG_TITLE_LOCATION),
        content: useProvider(_viewModelProvider.state.select((it) => it.status))
            .maybeWhen(
                initialized: () => const _UserLocationDialogContent(),
                orElse: () => const SizedBox.shrink()),
        actions: [
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(Strings.DIALOG_CANCEL),
          ),
          FlatButton(
            onPressed: () {
              final data = context.read(_viewModelProvider.state).data;
              final result =
                  MsgUserLocation(data.countryCode, data.prefectureCode);
              Navigator.pop(context, result);
            },
            child: const Text(Strings.DIALOG_OK),
          ),
        ],
      );
}

class _UserLocationDialogContent extends HookWidget {
  const _UserLocationDialogContent();

  @override
  Widget build(BuildContext context) {
    final data = useProvider(_viewModelProvider.state.select((it) => it.data));
    return Container(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        const _RowItemCountry(),
        if (LocalJsonClient.isJapan(data.countryCode)) ...[
          const SizedBox(height: 24),
          const _RowItemPrefecture(),
        ]
      ]),
    );
  }
}

class _RowItemPrefecture extends HookWidget {
  const _RowItemPrefecture({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        useProvider(_viewModelProvider.state.select((state) => state.data));
    return DropdownButton<String>(
      isExpanded: true,
      value: data.prefectureCode,
      items: data.prefectureData.prefecture
          .map((prefecture) => DropdownMenuItem<String>(
                value: prefecture.code,
                child: Text(prefecture.name),
              ))
          .toUnmodifiableList(),
      onChanged: (code) =>
          context.read(_viewModelProvider).changePrefecture(code),
    );
  }
}

class _RowItemCountry extends HookWidget {
  const _RowItemCountry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        useProvider(_viewModelProvider.state.select((state) => state.data));
    return DropdownButton<String>(
      isExpanded: true,
      value: data.countryCode,
      items: data.countryData.countries.entries
          .map((entry) => DropdownMenuItem<String>(
                value: entry.key,
                child: Text(entry.value),
              ))
          .toUnmodifiableList(),
      onChanged: (code) =>
          context.read(_viewModelProvider).changeCountry(code),
    );
  }
}
