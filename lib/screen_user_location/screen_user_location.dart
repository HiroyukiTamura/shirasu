import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_user_location.dart';
import 'package:shirasu/extension.dart';

final _viewModelProvider =
    StateNotifierProvider.autoDispose<ViewModelUserLocation>(
  (ref) => ViewModelUserLocation.createFromSettingVm(ref),
);

class ScreenUserLocation extends StatefulHookWidget {
  const ScreenUserLocation() : super();

  @override
  _ScreenUserLocationState createState() => _ScreenUserLocationState();
}

class _ScreenUserLocationState extends State<ScreenUserLocation>
    with AfterLayoutMixin<ScreenUserLocation> {
  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewModelProvider).initialize();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.APP_BAR_LOCATION),
          ),
          body: const _Body(),
          floatingActionButton: _fab(),
        ),
      );

  Widget _fab() =>
      useProvider(_viewModelProvider.state.select((state) => state.status))
          .maybeWhen(
        initialized: () => FloatingActionButton(
          onPressed: () {
            context.read(_viewModelProvider).onTapSaveBtn();
            Navigator.pop(context); //todo fix
          },
          child: const Icon(Icons.check),
        ),
        orElse: () => null,
      );
}

class _Body extends HookWidget {
  const _Body({Key key}) : super(key: key);

  static const double _SPACE = 32;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(_viewModelProvider.state);
    return state.status.maybeWhen(
      preInitialized: () => const SizedBox.shrink(),
      orElse: () => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: _SPACE,
        ),
        child: Row(
          children: [
            const _RowItemCountry(),
            if (LocalJsonClient.isJapan(state.data.countryCode)) ...[
              const SizedBox(width: _SPACE),
              const _RowItemPrefecture(),
            ]
          ],
        ),
      ),
    );
  }
}

class _RowItemPrefecture extends HookWidget {
  const _RowItemPrefecture({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        useProvider(_viewModelProvider.state.select((state) => state.data));
    return Expanded(
      child: DropdownButton<String>(
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
      ),
    );
  }
}

class _RowItemCountry extends HookWidget {
  const _RowItemCountry({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        useProvider(_viewModelProvider.state.select((state) => state.data));
    return Expanded(
      child: DropdownButton<String>(
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
      ),
    );
  }
}
