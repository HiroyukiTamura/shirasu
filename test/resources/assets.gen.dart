/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';
import '../widget_test_util/test_util.dart';

class $JpegGen {
  const $JpegGen();

  AssetGenImage get dummyThumbnailCity => AssetGenImage(TestUtil.fixAssetPath('jpeg/dummy_thumbnail_city.jpg'));
}

class $JsonGen {
  const $JsonGen();

  String get channel => 'json/channel.json';
  String get channelSubscriptionPlan => 'json/channel_subscription_plan.json';
  String get listCommentsByProgram => 'json/list_comments_by_program.json';
  String get listFeaturedPrograms => 'json/list_featured_programs.json';
  String get listSubscribingPrograms => 'json/list_subscribing_programs.json';
  String get listNewPrograms => 'json/list_new_programs.json';
  String get listPaymentMethods => 'json/list_payment_methods.json';
  String get localstorage => 'json/localstorage.json';
  String get makeInvoice => 'json/make_invoice.json';
  String get postedComment => 'json/posted_comment.json';
  String get programDetail => 'json/program_detail.json';
  String get signedCookieResult => 'json/signed_cookie_result.json';
  String get tokenRefreshResult => 'json/token_refresh_result.json';
  String get updateUserWithAttribute => 'json/update_user_with_attribute.json';
  String get viewer => 'json/viewer.json';
  String get watchHistory => 'json/watch_history.json';
}

class Assets {
  Assets._();

  static const $JpegGen jpeg = $JpegGen();
  static const $JsonGen json = $JsonGen();
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
