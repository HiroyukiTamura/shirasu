import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/router/screen_main_route_path.dart';

extension IteratableX<E> on Iterable<E> {
  List<E> toUnmodifiableList() => List.unmodifiable(this);

  E firstWhereOrNull(bool Function(E) test) =>
      firstWhere(test, orElse: () => null);

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
      read(appRouterProvider).delegate.pushPage(path);

  Future<void> pushProgramPage(String id) async =>
      read(appRouterProvider).delegate.pushPage(GlobalRoutePath.program(id));

  Future<void> pushChannelPage(String id) async =>
      read(appRouterProvider).delegate.pushPage(GlobalRoutePath.channel(id));

  bool get isBigScreen => 600 < MediaQuery.of(this).size.width;
}
