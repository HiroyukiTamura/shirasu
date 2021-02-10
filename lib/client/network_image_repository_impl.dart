import 'dart:async';
import 'dart:ui' as ui;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/network_image_repository.dart';
import 'package:shirasu/client/url_util.dart';

final kPrvNetworkRepository = Provider.autoDispose<NetworkImageRepository>(
    (ref) => NetworkImageRepositoryImpl._());

class NetworkImageRepositoryImpl with NetworkImageRepository {
  NetworkImageRepositoryImpl._();

  Completer<ui.Image> completer = Completer<ui.Image>();

  @override
  Future<ui.Image> requestHeaderImage() async {
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
