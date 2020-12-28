/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsJsGen {
  const $AssetsJsGen();

  String get clickLoginBtn => 'assets/js/click_login_btn.js';
  String get localStorageGetter => 'assets/js/local_storage_getter.js';
}

class $AssetsJsonGen {
  const $AssetsJsonGen();

  String get country => 'assets/json/country.json';
  String get prefecture => 'assets/json/prefecture.json';
}

class $AssetsPngGen {
  const $AssetsPngGen();

  AssetGenImage get defaultChannel =>
      const AssetGenImage('assets/png/default_channel.png');
  AssetGenImage get defaultThumbnail =>
      const AssetGenImage('assets/png/default_thumbnail.jpeg');
  AssetGenImage get logoOfficial =>
      const AssetGenImage('assets/png/logo_official.png');
  AssetGenImage get logoOfficialShadow =>
      const AssetGenImage('assets/png/logo_official_shadow.png');
  AssetGenImage get undrawNotifyRe65on =>
      const AssetGenImage('assets/png/undraw_Notify_re_65on.png');
  AssetGenImage get undrawMyAppGrf2 =>
      const AssetGenImage('assets/png/undraw_my_app_grf2.png');
  AssetGenImage get undrawSecurityO890 =>
      const AssetGenImage('assets/png/undraw_security_o890.png');
  AssetGenImage get undrawWarningCyit =>
      const AssetGenImage('assets/png/undraw_warning_cyit.png');
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  SvgGenImage get defaultChannelIcon =>
      const SvgGenImage('assets/svg/default-channel-icon.svg');
  SvgGenImage get logoOfficial =>
      const SvgGenImage('assets/svg/logo_official.svg');
  SvgGenImage get logoOfficialShadow =>
      const SvgGenImage('assets/svg/logo_official_shadow.svg');
  SvgGenImage get undrawNotifyRe65on =>
      const SvgGenImage('assets/svg/undraw_Notify_re_65on.svg');
  SvgGenImage get undrawMyAppGrf2 =>
      const SvgGenImage('assets/svg/undraw_my_app_grf2.svg');
  SvgGenImage get undrawSecurityO890 =>
      const SvgGenImage('assets/svg/undraw_security_o890.svg');
  SvgGenImage get undrawWarningCyit =>
      const SvgGenImage('assets/svg/undraw_warning_cyit.svg');
}

class Assets {
  Assets._();

  static const $AssetsJsGen js = $AssetsJsGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName)
      : _assetName = assetName,
        super(assetName);
  final String _assetName;

  Image image({
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
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
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
  }

  String get path => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key key,
    bool matchTextDirection = false,
    AssetBundle bundle,
    String package,
    double width,
    double height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder placeholderBuilder,
    Color color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}
