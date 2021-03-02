import 'dart:async';
import 'dart:collection';

import 'package:better_player/better_player.dart';
import 'package:dio/dio.dart';
import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/util.dart';
import 'package:dartx/dartx.dart';

extension IteratableX<E> on Iterable<E> {
  // todo send PR to dartX
  List<E> joinWith(E Function() separator) {
    final list = <E>[];
    for (var i = 0; i < length; i++) {
      list.add(elementAt(i));
      if (i != length - 1) list.add(separator());
    }

    return list;
  }

  UnmodifiableListView<E> toUnmodifiable() => UnmodifiableListView(this);
}

extension MapX<K, V> on Map<K, V> {
  UnmodifiableMapView<K, V> toUnmodifiable() => UnmodifiableMapView(this);
}

final _kIsInFullScreenOperation = Lock();

extension BuildContextX on BuildContext {
  Future<void> pushPage(GlobalRoutePath path) async =>
      read(kPrvAppRouterDelegate).pushPage(path);

  Future<void> pushProgramPage(String id) async =>
      read(kPrvAppRouterDelegate).pushPage(GlobalRoutePath.program(id));

  Future<void> pushChannelPage(String id) async =>
      read(kPrvAppRouterDelegate).pushPage(GlobalRoutePath.channel(id));

  bool get isBigScreen =>
      Dimens.SCREEN_BREAK_POINT < MediaQuery.of(this).size.width;

  bool get isThinScreen =>
      Dimens.SCREEN_BREAK_POINT_Y_SML < MediaQuery.of(this).size.width;

  Future<void> toggleFullScreenMode() async {
    if (_kIsInFullScreenOperation.locked) return;

    final isPortrait = MediaQuery.of(this).orientation == Orientation.portrait;
    final orientations =
        isPortrait ? Util.LANDSCAPE_ORIENTATIONS : Util.PORTRAIT_ORIENTATIONS;

    await read(kPrvLogger).guardFuture(() async {
      await SystemChrome.setPreferredOrientations(orientations);
      if (isPortrait) {
        await SystemChrome.setPreferredOrientations(DeviceOrientation.values);
        await SystemChrome.setEnabledSystemUIOverlays([]);
      } else {
        await SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
      }
    });
  }

  Future<void> forceFullScreenIfHorizontalScreen() async {
    if (_kIsInFullScreenOperation.locked) return;

    final landscape = MediaQuery.of(this).orientation == Orientation.landscape;
    if (landscape)
      await read(kPrvLogger)
          .guardFuture(() async => SystemChrome.setEnabledSystemUIOverlays([]));
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
    return sec.toInt().seconds;
  }
}

extension DioErrorX on DioError {
  bool get isTimeoutErr {
    switch (type) {
      case DioErrorType.CONNECT_TIMEOUT:
      case DioErrorType.RECEIVE_TIMEOUT:
      case DioErrorType.SEND_TIMEOUT:
        return true;
      default:
        return false;
    }
  }
}
