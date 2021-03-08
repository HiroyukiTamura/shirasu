import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shirasu/repository/env_repository.dart';

class EnvRepositoryTestImpl implements EnvRepository {
  const EnvRepositoryTestImpl();

  @override
  bool get enableVideoPlugin => false;

  @override
  bool get enableAnimation => false;

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
  }) => SizedBox(height: height, width: width, child: const Placeholder(),);

  // static AssetGenImage _image(String imageUrl) {
  //   if (imageUrl.contains('genron-genron-20201127'))
  //     return Assets.jpeg.dummyImagePeople;
  //   else if (imageUrl.contains('tsujita-beobachter-20201127'))
  //     return Assets.jpeg.dummyImageEngineer;
  //   else
  //     return Assets.jpeg.dummyThmubnailImage;
  // }
}
