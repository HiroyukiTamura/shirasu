import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/util.dart';

mixin CurrencyMixin {

  int get amount;
  String get currency;

  static bool _isJapanCurrency(String currency) {
    final s = currency.toUpperCase();
    return s == 'JP' || s == 'JPY';
  }

  String get currencyAsSuffix {
    if (_isJapanCurrency(currency))
      return Strings.SUFFIX_YEN;

    throw UnsupportedError('unexpected currency :: $currency');
    // todo english
  }

  int get amountWithTax {
    if (_isJapanCurrency(currency))
      return (amount * (Util.JP_TAX_RATIO +1)).floor();

    throw UnsupportedError('unexpected currency :: $currency');
    // todo english
  }
}