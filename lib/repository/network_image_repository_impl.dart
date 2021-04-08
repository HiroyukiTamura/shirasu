import 'dart:async';
import 'dart:ui' as ui;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/logger_repository_impl.dart';
import 'package:shirasu/repository/network_image_repository.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/repository/logger_repository.dart';

final kPrvNetworkRepository = Provider.autoDispose<NetworkImageRepository>(
    (ref) => NetworkImageRepositoryImpl._(ref.read));

class NetworkImageRepositoryImpl with NetworkImageRepository {
  NetworkImageRepositoryImpl._(this._reader);

  final Reader _reader;
  final _completer = Completer<ui.Image>();

  LoggerRepository get _logger => _reader(kPrvLogger);

  @override
  Future<ui.Image> requestHeaderImage() {
    if (_completer.isCompleted)
      return _completer.future; // I don't why, but must needed...

    const CachedNetworkImageProvider(UrlUtil.URL_HEADER_BACKDROP)
        .resolve(const ImageConfiguration())
        .addListener(
          ImageStreamListener((info, _) {
            if (!_completer.isCompleted) _completer.complete(info.image);
          }, onError: (e, stackTrace) => _logger.e(e, stackTrace)),
        );
    return _completer.future;
  }
}
