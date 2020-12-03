import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/di/local_json_client.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_user_location.dart';
import 'package:shirasu/extension.dart';

final _viewModelProvider = StateNotifierProvider.autoDispose
    .family<ViewModelUserLocation, UserLocation>(
  (ref, userLocation) => ViewModelUserLocation(userLocation),
);

class ScreenUserLocation extends StatefulHookWidget {
  const ScreenUserLocation({
    @required this.userLocation,
  }) : super();

  final UserLocation userLocation;

  @override
  _ScreenUserLocationState createState() => _ScreenUserLocationState();
}

class _ScreenUserLocationState extends State<ScreenUserLocation>
    with AfterLayoutMixin<ScreenUserLocation> {
  @override
  void afterFirstLayout(BuildContext context) =>
      context.read(_viewModelProvider(widget.userLocation)).initialize();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.APP_BAR_LOCATION),
          ),
          body: _Body(userLocation: widget.userLocation),
          floatingActionButton: _fab(),
        ),
      );

  Widget _fab() => useProvider(_viewModelProvider(widget.userLocation)
          .state
          .select((state) => state.status)).maybeWhen(
        initialized: () => FloatingActionButton(
          onPressed: () {
            context
              .read(_viewModelProvider(widget.userLocation))
              .onTapSaveBtn();
            Navigator.pop(context);//todo fix
          },
          child: const Icon(Icons.check),
        ),
        orElse: () => null,
      );
}

class _Body extends HookWidget {
  const _Body({
    @required this.userLocation,
    Key key,
  }) : super(key: key);

  static const double _SPACE = 32;

  final UserLocation userLocation;

  @override
  Widget build(BuildContext context) {
    final state = useProvider(_viewModelProvider(userLocation).state);
    return state.status.maybeWhen(
      preInitialized: () => const SizedBox.shrink(),
      orElse: () => Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: _SPACE,
        ),
        child: Row(
          children: [
            _RowItemCountry(userLocation: userLocation),
            if (LocalJsonClient.isJapan(state.data.countryCode)) ...[
              const SizedBox(width: _SPACE),
              _RowItemPrefecture(userLocation: userLocation),
            ]
          ],
        ),
      ),
    );
  }
}

class _RowItemPrefecture extends HookWidget {
  const _RowItemPrefecture({Key key, @required this.userLocation})
      : super(key: key);

  final UserLocation userLocation;

  @override
  Widget build(BuildContext context) {
    final data = useProvider(_viewModelProvider(userLocation).state.select((state) => state.data));
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
        onChanged: (code) => context
            .read(_viewModelProvider(userLocation))
            .changePrefecture(code),
      ),
    );
  }
}

class _RowItemCountry extends HookWidget {
  const _RowItemCountry({
    @required this.userLocation,
    Key key,
  }) : super(key: key);

  final UserLocation userLocation;

  @override
  Widget build(BuildContext context) {
    final data = useProvider(_viewModelProvider(userLocation).state.select((state) => state.data));
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
        onChanged: (code) => context
            .read(_viewModelProvider(userLocation))
            .changeCountry(code),
      ),
    );
  }
}
