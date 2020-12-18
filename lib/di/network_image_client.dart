import 'dart:async';
import 'dart:ui' as ui;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/di/url_util.dart';

class NetworkImageClient{

  NetworkImageClient._();

  static final NetworkImageClient instance = NetworkImageClient._();

  ui.Image _image;

  Future<ui.Image> requestHeaderImage() async {
    if (_image != null)
      return _image;

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
    return _image = await completer.future;
  }

}
