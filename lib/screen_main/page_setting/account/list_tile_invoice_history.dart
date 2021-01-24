import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/graphql/base_model.dart';
import 'package:shirasu/model/graphql/viewer.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

class ListTileInvoiceHistory extends StatelessWidget {

  const ListTileInvoiceHistory({Key key, @required this.invoiceHistoryItem}) : super(key: key);

  final InvoiceHistoryItem invoiceHistoryItem;

  String get _paymentText {
    final planTypeStr = Strings.planType2Str(invoiceHistoryItem.planType);
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
              DateFormat('yyyy/MM/dd HH:mm').format(invoiceHistoryItem.createdAt),
              style: TextStyle(
                color: Colors.white.withOpacity(.7),
                fontSize: 12,
                height: 1,
              ),
            ),
          ),
          Text(invoiceHistoryItem.label),
        ],
      ),
      subtitle: Text(
        _paymentText,
        style: TextStyles.SETTING_SUBTITLE,
      ),
    );
}