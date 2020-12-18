import 'dart:async';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/di/url_util.dart';

class NetworkImageClient{

  static Future<ui.Image> requestHeaderImage() {
    Completer<ui.Image> completer = Completer<ui.Image>();
    const CachedNetworkImageProvider(UrlUtil.URL_HEADER_BACKDROP)
        .resolve(const ImageConfiguration())
        .addListener(
          ImageStreamListener((info, _) => completer.complete(info.image),
              onError: (e, stackTrace) {
            debugPrintStack(stackTrace: stackTrace);
            debugPrint(e.toString());
            // todo handle error
          }),
        );
    return completer.future;
  }

}
