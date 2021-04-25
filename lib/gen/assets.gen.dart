/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsJpegGen {
  const $AssetsJpegGen();

  AssetGenImage get defaultHandoutThumbnail =>
      const AssetGenImage('assets/jpeg/default-handout-thumbnail.jpeg');
}

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

class $AssetsLottieGen {
  const $AssetsLottieGen();

  String get check => 'assets/lottie/check.json';
  String get fastForward => 'assets/lottie/fast_forward.json';
  String get pausePlay => 'assets/lottie/pause_play.json';
  String get rewind => 'assets/lottie/rewind.json';
}

class $AssetsPngGen {
  const $AssetsPngGen();

  AssetGenImage get appLogo => const AssetGenImage('assets/png/app_logo.png');
  AssetGenImage get defaultChannel =>
      const AssetGenImage('assets/png/default_channel.png');
  AssetGenImage get defaultThumbnail =>
      const AssetGenImage('assets/png/default_thumbnail.jpeg');
  AssetGenImage get googlePlayBadge =>
      const AssetGenImage('assets/png/google-play-badge.png');
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

  SvgGenImage get appLogo => const SvgGenImage('assets/svg/app_logo.svg');
  SvgGenImage get appLogoContent =>
      const SvgGenImage('assets/svg/app_logo_content.svg');
  SvgGenImage get defaultChannelIcon =>
      const SvgGenImage('assets/svg/default-channel-icon.svg');
  SvgGenImage get defaultUserIcon =>
      const SvgGenImage('assets/svg/default_user_icon.svg');
  SvgGenImage get iconIosShare =>
      const SvgGenImage('assets/svg/icon_ios_share.svg');
  SvgGenImage get logoOfficial =>
      const SvgGenImage('assets/svg/logo_official.svg');
  SvgGenImage get logoOfficialShadow =>
      const SvgGenImage('assets/svg/logo_official_shadow.svg');
  SvgGenImage get roboto => const SvgGenImage('assets/svg/roboto.svg');
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

  static const String env = 'assets/.env';
  static const $AssetsJpegGen jpeg = $AssetsJpegGen();
  static const $AssetsJsGen js = $AssetsJsGen();
  static const $AssetsJsonGen json = $AssetsJsonGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
  static const $AssetsPngGen png = $AssetsPngGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
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

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
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
