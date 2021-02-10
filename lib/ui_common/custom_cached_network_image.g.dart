// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_cached_network_image.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class CustomCachedNetworkImage extends HookWidget {
  const CustomCachedNetworkImage(
      {Key key,
      this.imageUrl,
      this.width,
      this.height,
      this.fit,
      this.placeholder,
      this.errorWidget,
      this.imageBuilder})
      : super(key: key);

  final String imageUrl;

  final double width;

  final double height;

  final BoxFit fit;

  final Widget Function(BuildContext, String) placeholder;

  final Widget Function(BuildContext, String, dynamic) errorWidget;

  final Widget Function(BuildContext, ImageProvider<Object>) imageBuilder;

  @override
  Widget build(BuildContext _context) => customCachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit,
      placeholder: placeholder,
      errorWidget: errorWidget,
      imageBuilder: imageBuilder);
}
