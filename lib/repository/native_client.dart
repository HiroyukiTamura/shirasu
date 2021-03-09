import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter_video_background/flutter_video_background.dart';
import 'package:flutter_video_background/model/replay_data.dart';

class NativeClient {
  const NativeClient._();

  static Future<void> startPlayBackGround({
    @required String url,
    @required bool isLiveStream,
    @required int position,
    @required String iconUrl,
    @required String cookie,
    @required String title,
    @required String subtitle,
  }) async => FlutterVideoBackground.startPlayBackGround(
      url: url,
      isLiveStream: isLiveStream,
      position: position.toString(),
      iconUrl: iconUrl,
      cookie: cookie,
      title: title,
      subtitle: subtitle,
    );

  static Future<ReplyData> stopBackGround() async =>
      FlutterVideoBackground.stopBackGround(true);
}
