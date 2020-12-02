import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/viewmodel/viewmodel_user_location.dart';

final _viewModelProvider =
    StateNotifierProvider.family<ViewModelUserLocation, UserLocation>(
  (ref, userLocation) => ViewModelUserLocation(userLocation),
);

class ScreenUserLocation extends StatelessWidget {
  const ScreenUserLocation({
    Key key,
    @required this.userLocation,
  }) : super(key: key);

  final UserLocation userLocation;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.APP_BAR_LOCATION),
          ),
          body: const _Body(),
        ),
      );
}

class _Body extends HookWidget {
  const _Body() : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton(items: null, onChanged: null),
      ],
    );
  }
}
