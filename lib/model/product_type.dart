import 'package:flutter/cupertino.dart';

enum ProductType { CHANNEL, PROGRAM }

@immutable
abstract class ProductTypeGetter {
  ProductType get productTypeStrict;

  @protected
  static ProductType parse(String value) {
    switch (value) {
      case 'Program':
        return ProductType.PROGRAM;
      case 'Channel':
        return ProductType.CHANNEL;
      default:
        throw Exception('unexpected value: $value');
    }
  }
}