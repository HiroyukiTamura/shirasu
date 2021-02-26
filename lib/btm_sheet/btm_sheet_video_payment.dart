import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

part 'btm_sheet_video_payment.g.dart';

const _kSubTextStyle = TextStyle(fontSize: FontSize.S16);

@swidget
Widget btmSheetVideoPayment(
  BuildContext context, {
  @required ProgramDetail program,
  @required ChannelData channelData,
}) {
  final subscriptionPlan = channelData.channel.subscriptionPlan;
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
                  style: _kSubTextStyle,
                ),
              ),
            ),
            Text(
              '・ ${subscriptionPlan.amountWithTax}${subscriptionPlan.currencyAsSuffix}${Strings.SUFFIX_PURCHASE_SUBSCRIBE_CHANNEL}',
              style: _kSubTextStyle,
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
