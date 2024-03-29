import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/repository/env_repository.dart';

part 'custom_cached_network_image.g.dart';

@hwidget
Widget customCachedNetworkImage({
  String imageUrl,
  double width,
  double height,
  BoxFit fit,
  PlaceholderWidgetBuilder placeholder,
  LoadingErrorWidgetBuilder errorWidget,
  ImageWidgetBuilder imageBuilder,
}) =>
    useProvider(kPrvEnv).networkImage(
      imageUrl: imageUrl,
      height: height,
      width: width,
      fit: fit,
      imageBuilder: imageBuilder,
      errorWidget: errorWidget,
      placeholder: placeholder,
    );
