// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_btn.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class BillingBtnMedium extends StatelessWidget {
  const BillingBtnMedium(
      {Key key,
      @required this.amountWithTax,
      @required this.currencyAsSuffix,
      @required this.onTap})
      : super(key: key);

  final int amountWithTax;

  final String currencyAsSuffix;

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
  Widget build(BuildContext _context) => purchasedBannerMedium(onTap: onTap);
}

class _ButtonMedium extends StatelessWidget {
  const _ButtonMedium(
      {Key key, @required this.onTap, @required this.icon, @required this.text})
      : super(key: key);

  final void Function() onTap;

  final IconData icon;

  final String text;

  @override
  Widget build(BuildContext _context) =>
      _buttonMedium(_context, onTap: onTap, icon: icon, text: text);
}
