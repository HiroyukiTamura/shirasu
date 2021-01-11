import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playout/textTrack.dart';

class NativeViewHolder {
  NativeViewHolder._();

  static final NativeViewHolder instance = NativeViewHolder._();

  static final Set<Factory<OneSequenceGestureRecognizer>> _gestureRecognizers =
      <Factory<OneSequenceGestureRecognizer>>{
    Factory<OneSequenceGestureRecognizer>(
      () => EagerGestureRecognizer(),
    ),
  };
  static const _CREATION_PARAMS_CODEC = JSONMessageCodec();
  static const _VIEW_TYPE = 'tv.mta/NativeVideoPlayer';
  static const _METHOD_CHANNEL_NAME = 'tv.mta/NativeVideoPlayerMethodChannel';

  Widget _widget;

  Widget get widget => _widget;

  MethodChannel _methodChannel;

  NativeViewHolder apply({
    @required String url,
    String cookie = '',
    bool isLiveStream = false,
    double initialPos = 0,
  }) {
    if (!_isInit)
      _setupPlayer(url, cookie, isLiveStream, initialPos);

    return instance;
  }

  bool _isInit = false;

  void _setupPlayer(
      String url, String cookie, bool isLiveStream, double initialPos) {
    if (url?.isNotEmpty != true || _isInit) return;

    _isInit = true;

    /* Android */
    if (Platform.isAndroid) {
      _widget = AndroidView(
        viewType: _VIEW_TYPE,
        creationParams: _creationParams(
          true,
          url: url,
          cookie: cookie,
          isLiveStream: isLiveStream,
          initialPos: initialPos,
        ),
        creationParamsCodec: _CREATION_PARAMS_CODEC,
        onPlatformViewCreated: _onPlatformCreated,
        gestureRecognizers: _gestureRecognizers,
      );
    }

    /* iOS */
    else if (Platform.isIOS) {
      _widget = UiKitView(
        viewType: _VIEW_TYPE,
        creationParams: _creationParams(
          false,
          url: url,
          cookie: cookie,
          isLiveStream: isLiveStream,
          initialPos: initialPos,
        ),
        creationParamsCodec: _CREATION_PARAMS_CODEC,
        onPlatformViewCreated: _onPlatformCreated,
        gestureRecognizers: _gestureRecognizers,
      );
    }
  }

  void _onPlatformCreated(viewId) => _methodChannel =
      const MethodChannel(_METHOD_CHANNEL_NAME);

  Map<String, dynamic> _creationParams(
    bool isAndroid, {
    @required String url,
    @required String cookie,
    @required bool isLiveStream,
    @required double initialPos,
  }) {
    final map = {
      'autoPlay': false,
      'loop': false,
      'showControls': false,
      'url': url,
      'cookie': cookie,
      'title': '',
      'subtitle': '',
      'preferredAudioLanguage': 'mul',
      'isLiveStream': isLiveStream,
      'position': initialPos,
    };

    if (isAndroid)
      map.addAll({
        'textTracks': TextTrack.toJsonFromList(<TextTrack>[]),
        'preferredTextLanguage': '',
      });

    return map;
  }

  void dispose() => _methodChannel?.invokeMethod('dispose');
}
