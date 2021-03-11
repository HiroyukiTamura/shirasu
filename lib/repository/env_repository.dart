import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final kPrvEnv = Provider<EnvRepository>(
  (ref) => const EnvRepositoryImpl(),
);

mixin EnvRepository {
  Widget networkImage({
    String imageUrl,
    double width,
    double height,
    BoxFit fit,
    PlaceholderWidgetBuilder placeholder,
    LoadingErrorWidgetBuilder errorWidget,
    ImageWidgetBuilder imageBuilder,
    String semanticLabel,
  });

  bool get enableAnimation;

  bool get enableVideoPlugin;
}

class EnvRepositoryImpl with EnvRepository {
  const EnvRepositoryImpl();

  @override
  bool get enableAnimation => true;

  @override
  bool get enableVideoPlugin => true;

  @override
  Widget networkImage({
    String imageUrl,
    double width,
    double height,
    BoxFit fit,
    PlaceholderWidgetBuilder placeholder,
    LoadingErrorWidgetBuilder errorWidget,
    ImageWidgetBuilder imageBuilder,
    String semanticLabel,
  }) =>
      Semantics(
        label: semanticLabel,
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          height: height,
          width: width,
          fit: fit,
          imageBuilder: imageBuilder,
          errorWidget: errorWidget,
          placeholder: placeholder,
        ),
      );
}
