import 'package:flutter/cupertino.dart';

enum ProductType { CHANNEL, PROGRAM }

mixin ProductTypeMixin {

  String get productType;

  ProductType get productTypeStrict {
    if (productType == null)
      return null;

    switch (productType) {
      case 'Program':
        return ProductType.PROGRAM;
      case 'Channel':
        return ProductType.CHANNEL;
      default:
        throw Exception('unexpected value: $productType');
    }
  }
}