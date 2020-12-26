// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'circle_cached_network_image.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// must not be null either of [imageUrl] or [errorWidget]
class CircleCachedNetworkImage extends StatelessWidget {
  /// must not be null either of [imageUrl] or [errorWidget]
  const CircleCachedNetworkImage(
      {Key key,
      this.imageUrl,
      @required this.size,
      this.onTap,
      this.errorWidget})
      : super(key: key);

  /// must not be null either of [imageUrl] or [errorWidget]
  final String imageUrl;

  /// must not be null either of [imageUrl] or [errorWidget]
  final double size;

  /// must not be null either of [imageUrl] or [errorWidget]
  final void Function() onTap;

  /// must not be null either of [imageUrl] or [errorWidget]
  final Widget Function(BuildContext, String, dynamic) errorWidget;

  @override
  Widget build(BuildContext _context) => circleCachedNetworkImage(
      imageUrl: imageUrl, size: size, onTap: onTap, errorWidget: errorWidget);
}
