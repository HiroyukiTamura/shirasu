import 'package:flutter/cupertino.dart';

enum PlanType { ONETIME, SUBSCRIPTION }

class PlanTypeUtil {

  const PlanTypeUtil._();

  static PlanType parse(String value) {
    if (value == null)
      return null;

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

mixin ViewerPlanTypeMixin {
  @visibleForTesting
  String get viewerPlanType;

  PlanType get viewerPlanTypeStrict => PlanTypeUtil.parse(viewerPlanType);
}

mixin PlanTypeMixin {
  @visibleForTesting
  String get planType;

  PlanType get planTypeStrict => PlanTypeUtil.parse(planType);
}

mixin ParentPlanTypeMixin {
  @visibleForTesting
  String get parentPlanType;

  PlanType get parentPlanTypeStrict => PlanTypeUtil.parse(parentPlanType);
}