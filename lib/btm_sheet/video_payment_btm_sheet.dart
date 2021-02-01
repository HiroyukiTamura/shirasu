import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';

part 'video_payment_btm_sheet.g.dart';

@swidget
Widget videoPaymentBtmSheet(
  BuildContext context, {
  @required StateSuccess result,
}) {
  final program = result.programDetailData.program;
  final subscriptionPlan = result.channelData.channel.subscriptionPlan;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        Strings.BTM_SHEET_MSG_PAYMENT_PREFIX,
        style: TextStyles.DEFAULT_H,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...program.onetimePlans.map(
              (it) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Text(
                  '・ ${it.amountWithTax}${it.currencyAsSuffix}${Strings.SUFFIX_PURCHASE_ONE_TIME}',
                  style: TextStyles.VIDEO_PAYMENT_BTN,
                ),
              ),
            ),
            Text(
              '・ ${subscriptionPlan.amountWithTax}${subscriptionPlan.currencyAsSuffix}${Strings.SUFFIX_PURCHASE_SUBSCRIBE_CHANNEL}',
              style: TextStyles.VIDEO_PAYMENT_BTN,
            ),
          ],
        ),
      ),
      const Text(
        Strings.BTM_SHEET_MSG_PAYMENT,
        style: TextStyles.DEFAULT_H,
      )
    ],
  );
}
