// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_btn.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

/// note; only for monthly purchase.
/// [SubscriptionPlan]
/// but [s.SubscriptionPlan] has `interval` and `intervalCount`.
/// we need watch updating of the api response json structure.
class BillingBtnMedium extends StatelessWidget {
  /// note; only for monthly purchase.
  /// [SubscriptionPlan]
  /// but [s.SubscriptionPlan] has `interval` and `intervalCount`.
  /// we need watch updating of the api response json structure.
  const BillingBtnMedium(
      {Key key,
      @required this.amountWithTax,
      @required this.currencyAsSuffix,
      @required this.onTap})
      : super(key: key);

  /// note; only for monthly purchase.
  /// [SubscriptionPlan]
  /// but [s.SubscriptionPlan] has `interval` and `intervalCount`.
  /// we need watch updating of the api response json structure.
  final int amountWithTax;

  /// note; only for monthly purchase.
  /// [SubscriptionPlan]
  /// but [s.SubscriptionPlan] has `interval` and `intervalCount`.
  /// we need watch updating of the api response json structure.
  final String currencyAsSuffix;

  /// note; only for monthly purchase.
  /// [SubscriptionPlan]
  /// but [s.SubscriptionPlan] has `interval` and `intervalCount`.
  /// we need watch updating of the api response json structure.
  final void Function() onTap;

  @override
  Widget build(BuildContext _context) => billingBtnMedium(
      amountWithTax: amountWithTax,
      currencyAsSuffix: currencyAsSuffix,
      onTap: onTap);
}

class PurchasedBannerMedium extends StatelessWidget {
  const PurchasedBannerMedium({Key key, @required this.onTap})
      : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      purchasedBannerMedium(_context, onTap: onTap);
}

class _ButtonMedium extends StatelessWidget {
  const _ButtonMedium(
      {Key key, @required this.onTap, @required this.icon, @required this.text})
      : super(key: key);

  final void Function() onTap;

  final Icon icon;

  final String text;

  @override
  Widget build(BuildContext _context) =>
      _buttonMedium(_context, onTap: onTap, icon: icon, text: text);
}
