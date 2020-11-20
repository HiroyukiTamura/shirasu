import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shirasu/model/base_model.dart';
import 'package:shirasu/resource/strings.dart';

/// amex: "/static/img/amex-logo.png",
/// diners: "/static/img/dinersclub-logo.png",
/// discover: "/static/img/discover-logo.png",
/// jcb: "/static/img/jcb-logo.png",
/// mastercard: "/static/img/mastarcard-logo.png",
/// visa: "/static/img/visa-logo.png"
class ListTilePaymentMethod extends StatelessWidget {

  const ListTilePaymentMethod({Key key, @required this.paymentMethod}) : super(key: key);

  final BasePaymentMethod paymentMethod;

  @override
  Widget build(BuildContext context) => ListTile(
      leading: Icon(
        _getCardIcon(),
        color: Colors.white,
      ),
      title: Text('XXXX-XXXX-XXXX-${paymentMethod.last4}'),
      subtitle: Text(
        '${Strings.CARD_EXPIRY}: ${paymentMethod.expirationDate}',
      ),
    );

  IconData _getCardIcon() {
    switch (paymentMethod.brand) {
      case 'amex':
        return FontAwesomeIcons.ccAmex;
      case 'diners':
        return FontAwesomeIcons.ccDinersClub;
      case 'discover':
        return FontAwesomeIcons.ccDiscover;
      case 'jcb':
        return FontAwesomeIcons.ccJcb;
      case 'mastercard':
        return FontAwesomeIcons.ccMastercard;
      case 'visa':
        return FontAwesomeIcons.ccVisa;
      default:
        throw Exception('unexpected item: ${paymentMethod.brand}');
    }
  }
}