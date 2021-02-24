import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/util.dart';

// todo support english
mixin AmountMixin {
  int get amount;

  String get currency;

  int get amountWithTax => _Util._isJapanCurrency(currency)
      ? (amount * (Util.JP_TAX_RATIO + 1)).floor()
      : amount;

  String get currencyAsSuffix => _Util.currencyAsSuffix(currency);
}

mixin CurrencyMixin {
  String get currency;

  String get currencyAsSuffix => _Util.currencyAsSuffix(currency);
}

class _Util {
  const _Util._();

  static bool _isJapanCurrency(String currency) {
    final s = currency.toUpperCase();
    return s == 'JP' || s == 'JPY';
  }

  static String currencyAsSuffix(String currency) =>
      _Util._isJapanCurrency(currency) ? Strings.SUFFIX_YEN : '';
}
