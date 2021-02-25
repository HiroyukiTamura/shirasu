import 'package:flutter/cupertino.dart';

enum ProductType { CHANNEL, PROGRAM, LIVE_EXT }

mixin ProductTypeMixin {

  @protected
  String get productType;

  ProductType get productTypeStrict {
    if (productType == null)
      return null;

    switch (productType) {
      case 'Program':
        return ProductType.PROGRAM;
      case 'Channel':
        return ProductType.CHANNEL;
      case 'LiveExtension':
        return ProductType.LIVE_EXT;
      default:
        throw ArgumentError.value(productType);
    }
  }
}