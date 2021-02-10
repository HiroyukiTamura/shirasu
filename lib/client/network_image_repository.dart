import 'dart:ui' as ui;

mixin NetworkImageRepository {
  Future<ui.Image> requestHeaderImage();
}