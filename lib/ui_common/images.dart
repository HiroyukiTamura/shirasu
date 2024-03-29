import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/gen/assets.gen.dart';

class _GenImage {
  const _GenImage._({
    this.assetGenImage,
    this.svgGenImage,
  });

  final AssetGenImage assetGenImage;
  final SvgGenImage svgGenImage;

  Widget toWidget({
    Key key,
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    if (svgGenImage != null)
      return svgGenImage.svg(
        key: key,
        excludeFromSemantics: excludeFromSemantics,
        width: width,
        height: height,
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        matchTextDirection: matchTextDirection,
      );
    else if (assetGenImage != null)
      return assetGenImage.image(
        key: key,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        width: width,
        height: height,
        color: color,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        isAntiAlias: isAntiAlias,
        filterQuality: filterQuality,
      );
    else
      throw UnsupportedError(toString());
  }
}