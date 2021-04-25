import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/graphql/invoice_history.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/extension.dart';

class ListTileInvoiceHistory extends StatelessWidget {
  const ListTileInvoiceHistory({@required this.invoiceHistoryItem, Key key})
      : super(key: key);

  final InvoiceHistoryItem invoiceHistoryItem;

  String get _paymentText {
    final planTypeStr = Strings.planType2Str(invoiceHistoryItem.planTypeStrict);
    return '${invoiceHistoryItem.total}${invoiceHistoryItem.currencyAsSuffix} $planTypeStr';
  }

  @override
  Widget build(BuildContext context) => ListTile(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: Dimens.SETTING_OUTER_MARGIN,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                invoiceHistoryItem.createdAt.formatLocalYmdHm(),
                style: const TextStyle(
                  color: Styles.COLOR_TEXT_SUB,
                  fontSize: FontSize.SMALL,
                  height: TextHeight.TEXT_H_SINGLE,
                ),
              ),
            ),
            Text(invoiceHistoryItem.label),
          ],
        ),
        subtitle: Text(
          _paymentText,
          style: TextStyle(
            color: Theme.of(context).primaryColorDark,
          ),
        ),
      );
}
