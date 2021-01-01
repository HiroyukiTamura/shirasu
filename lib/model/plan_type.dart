import 'package:flutter/cupertino.dart';

enum PlanType { ONETIME, SUBSCRIPTION }

class PlanTypeGetter {

  const PlanTypeGetter._();

  static PlanType parse(String value) {
    switch (value) {
      case 'Onetime':
        return PlanType.ONETIME;
      case 'SubscriptionPlan':
        return PlanType.SUBSCRIPTION;
      default:
        throw Exception('unexpected value: $value');
    }
  }
}