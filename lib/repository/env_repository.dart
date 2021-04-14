import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as env;
import 'package:hooks_riverpod/hooks_riverpod.dart';

final kPrvEnv = Provider<EnvRepository>((_) => const EnvRepositoryImpl());

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

  Future<void> load();

  String get algoliaId;

  String get algoliaApiKey;
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

  @override
  Future<void> load() async => env.load(fileName: 'assets/.env');

  @override
  String get algoliaApiKey => env.env['ALGOLIA_USER_API_KEY'];

  @override
  String get algoliaId => env.env['ALGOLIA_APP_ID'];
}
