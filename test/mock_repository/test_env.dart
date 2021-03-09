import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/painting/box_fit.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shirasu/repository/env_repository.dart';
import 'package:shirasu/gen/assets.gen.dart';

class EnvRepositoryTestImpl implements EnvRepository {
  EnvRepositoryTestImpl();

  int count = 0;

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

  /// use to generate screenshot for GooglePlay/AppStore
  // ignore: unused_element, missing_return
  AssetGenImage _image(String imageUrl) {
    // count ++;
    // switch(count %3) {
    //   case 0:
    //     return Assets.jpeg.dummyImagePeople;
    //   case 1:
    //     return Assets.jpeg.dummyImageEngineer;
    //   case 2:
    //     return Assets.jpeg.dummyThmubnailImage;
    //   default:
    //     throw Exception();
    // }
    // if (imageUrl.contains('genron-genron-20201127'))
    //   return Assets.jpeg.dummyImagePeople;
    // else if (imageUrl.contains('tsujita-beobachter-20201127'))
    //   return Assets.jpeg.dummyImageEngineer;
    // else
    //   return Assets.jpeg.dummyThmubnailImage;
  }
}
