import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

part 'custom_cached_network_image.g.dart';

final _kPrvImageCache = Provider.autoDispose<BaseCacheManager>(
        (ref) => null);

@swidget
Widget customCachedNetworkImage({
  String imageUrl,
  double width,
  double height,
  BoxFit fit,
  PlaceholderWidgetBuilder placeholder,
  LoadingErrorWidgetBuilder errorWidget,
  ImageWidgetBuilder imageBuilder
}) =>
    CachedNetworkImage(
      cacheManager: useProvider(_kPrvImageCache),
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: fit,
      imageBuilder: imageBuilder,
      errorWidget: errorWidget,
      placeholder: placeholder,
    );
