import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/util.dart';

mixin AmountMixin {
  int get amount;
  String get currency;

  int get amountWithTax {
    if (_Util._isJapanCurrency(currency))
      return (amount * (Util.JP_TAX_RATIO +1)).floor();

    throw UnsupportedError('unexpected currency :: $currency');
    // todo english
  }

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

  static String currencyAsSuffix(String currency) {
    if (_Util._isJapanCurrency(currency))
      return Strings.SUFFIX_YEN;

    throw UnsupportedError('unexpected currency :: $currency');
    // todo english
  }
}