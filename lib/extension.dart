import 'package:better_player/better_player.dart';
import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';

extension IteratableX<E> on Iterable<E> {
  // todo send PR to dartX
  List<E> joinWith(E Function() separator) {
    final list = <E>[];
    for (int i = 0; i < length; i++) {
      list.add(elementAt(i));
      if (i != length - 1) list.add(separator());
    }

    return list;
  }
}

extension IntX on int {
  int ceilFrom1() => this < 1 ? 1 : this;
}

extension BuildContextX on BuildContext {

  static const _PORTRAIT_ORIENTATIONS = [
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ];

  static const _LANDSCAPE_ORIENTATIONS = [
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ];

  static final _anyOrientations = _PORTRAIT_ORIENTATIONS + _LANDSCAPE_ORIENTATIONS;

  Future<void> pushPage(GlobalRoutePath path) async =>
      read(pAppRouterDelegate).pushPage(path);

  Future<void> pushProgramPage(String id) async => read(pAppRouterDelegate).pushPage(GlobalRoutePath.program(id));

  Future<void> pushChannelPage(String id) async =>
      read(pAppRouterDelegate).pushPage(GlobalRoutePath.channel(id));

  // todo extract dimen
  bool get isBigScreen => 600 < MediaQuery.of(this).size.width;

  Future<void> toggleScreenOrientation() async {

    final isPortrait = MediaQuery
        .of(this)
        .orientation == Orientation.portrait;

    final orientations = isPortrait ? _LANDSCAPE_ORIENTATIONS : _PORTRAIT_ORIENTATIONS;
    await SystemChrome.setPreferredOrientations(orientations);
    await SystemChrome.setPreferredOrientations(_anyOrientations);
  }
}

extension BetterPlayerEventX on BetterPlayerEvent {

  String get exception => parameters['exception'] as String;

  Duration get progress => parameters['progress'] as Duration;

  Duration get duration => parameters['duration'] as Duration;
}

extension SwipeDataX on SwipeData {

  static const double _FACTOR_DX2SEC = 1;

  Duration get diffDuration {
    final sec = (currentDx - startDx) * _FACTOR_DX2SEC;
    return Duration(seconds: sec.toInt());
  }

}