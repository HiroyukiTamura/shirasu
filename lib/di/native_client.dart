import 'package:flutter/cupertino.dart';
import 'package:flutter_video_background/flutter_video_background.dart';

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
  }) async {
    try {
      await FlutterVideoBackground.startPlayBackGround(
            url: url,
            isLiveStream: isLiveStream,
            position: position.toString(),
            iconUrl: iconUrl,
            cookie: cookie,
            title: title,
            subtitle: subtitle,
          );
    } catch (e) {
      print(e);
    }
  }

  static Future<void> stopBackGround() async {
    try {
      await FlutterVideoBackground.stopBackGround();
    } catch (e) {
      print(e);
    }
  }
}
