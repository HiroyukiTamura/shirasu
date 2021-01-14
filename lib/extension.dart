import 'package:better_player/better_player.dart';
import 'package:flutter/cupertino.dart';
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
  Future<void> pushPage(GlobalRoutePath path) async =>
      read(pAppRouterDelegate).pushPage(path);

  Future<void> pushProgramPage(String id) async => read(pAppRouterDelegate).pushPage(GlobalRoutePath.program(id));

  Future<void> pushChannelPage(String id) async =>
      read(pAppRouterDelegate).pushPage(GlobalRoutePath.channel(id));

  bool get isBigScreen => 600 < MediaQuery.of(this).size.width;
}

extension BetterPlayerEventX on BetterPlayerEvent {

  String get exception => parameters['exception'] as String;

  Duration get progress => parameters['progress'] as Duration;

  Duration get duration => parameters['duration'] as Duration;
}
