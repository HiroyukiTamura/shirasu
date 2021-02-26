import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'plan_type.freezed.dart';

@freezed
abstract class PlanType with _$PlanType {
  const factory PlanType.oneTime() = _OneTime;
  const factory PlanType.subscription() = _Subscription;

  factory PlanType.parse(String value) {
    if (value == null)
      return null;

    switch (value) {
      case 'Onetime':
        return const PlanType.oneTime();
      case 'SubscriptionPlan':
        return const PlanType.subscription();
      default:
        throw ArgumentError.value(value);
    }
  }
}

mixin ViewerPlanTypeMixin {
  @protected
  String get viewerPlanType;

  PlanType get viewerPlanTypeStrict => PlanType.parse(viewerPlanType);
}

mixin PlanTypeMixin {
  @protected
  String get planType;

  PlanType get planTypeStrict => PlanType.parse(planType);
}

mixin ParentPlanTypeMixin {
  @protected
  String get parentPlanType;

  PlanType get parentPlanTypeStrict => PlanType.parse(parentPlanType);
}