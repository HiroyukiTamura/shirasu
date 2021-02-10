/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $JsonGen {
  const $JsonGen();

  String get channel => 'test/resources/json/channel.json';
  String get channelSubscriptionPlan => 'test/resources/json/channel_subscription_plan.json';
  String get listCommentsByProgram => 'test/resources/json/list_comments_by_program.json';
  String get listFeaturedPrograms => 'test/resources/json/list_featured_programs.json';
  String get listNewPrograms => 'test/resources/json/list_new_programs.json';
  String get listPaymentMethods => 'test/resources/json/list_payment_methods.json';
  String get makeInvoice => 'test/resources/json/make_invoice.json';
  String get postedComment => 'test/resources/json/posted_comment.json';
  String get programDetail => 'test/resources/json/program_detail.json';
  String get signedCookieResult => 'test/resources/json/signed_cookie_result.json';
  String get tokenRefreshResult => 'test/resources/json/token_refresh_result.json';
  String get updateUserWithAttribute => 'test/resources/json/update_user_with_attribute.json';
  String get viewer => 'test/resources/json/viewer.json';
  String get watchHistory => 'test/resources/json/watch_history.json';
}

class Assets {
  Assets._();

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
