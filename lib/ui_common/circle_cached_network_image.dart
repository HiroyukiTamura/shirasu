import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/ui_common/images.dart';

import 'custom_cached_network_image.dart';

part 'circle_cached_network_image.g.dart';

/// must not be null either of [imageUrl] or [errorWidget]
@swidget
Widget circleCachedNetworkImage({
  String imageUrl,
  @required double size,
  GestureTapCallback onTap,
  LoadingErrorWidgetBuilder errorWidget,
}) {
  assert(imageUrl != null || errorWidget != null);

  return imageUrl == null
      ? Assets.svg.defaultChannelIcon.supportWeb().toWidget(
            width: size,
            height: size,
          )
      : CustomCachedNetworkImage(
          imageUrl: imageUrl,
          height: size,
          width: size,
          imageBuilder: (context, imageProvider) {
            final container = Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  onError: (e, stackTrace) => Util.onImageError(
                    context,
                    error: e,
                    stackTrace: stackTrace,
                  ),
                ),
              ),
            );

            return ClipOval(
              child: onTap == null
                  ? container
                  : StackedInkWell(
                      onTap: onTap,
                      child: container,
                    ),
            );
          },
          errorWidget: errorWidget,
        );
}
