import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/resource/strings.dart';

part 'list_tile_payment_method.g.dart';

/// amex: "/static/img/amex-logo.png",
/// diners: "/static/img/dinersclub-logo.png",
/// discover: "/static/img/discover-logo.png",
/// jcb: "/static/img/jcb-logo.png",
/// mastercard: "/static/img/mastarcard-logo.png",
/// visa: "/static/img/visa-logo.png"
@swidget
Widget listTilePaymentMethod({
  @required PaymentMethod paymentMethod,
}) =>
    ListTile(
      leading: Icon(
        paymentMethod.toCardIcon(),
        color: Colors.white,
      ),
      title: Text('XXXX-XXXX-XXXX-${paymentMethod.last4}'),
      subtitle: Text(
        '${Strings.CARD_EXPIRY}: ${paymentMethod.expirationDate}',
      ),
    );

extension on PaymentMethod {
  IconData toCardIcon() {
    switch (brand) {
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
        throw ArgumentError.value(brand);
    }
  }
}
