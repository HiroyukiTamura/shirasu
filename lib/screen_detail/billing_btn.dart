import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

class BillingBtn extends StatelessWidget {

  final String text;

  const BillingBtn({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.deepOrange),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Icon(
              Icons.play_arrow_sharp,
              color: Colors.white,
            ),
            SizedBox(width: 16),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
}

class BillingBtnThin extends StatelessWidget {

  final String text;

  const BillingBtnThin({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepOrange),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow_sharp,
            color: Colors.white,
          ),
          SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

/// todo update design? is it enough affordance to purchase?
class BillingBtnMedium extends StatelessWidget {

  const BillingBtnMedium({Key key, @required this.text}) : super(key: key);

  /// todo need logic for tax ratio, currency and country
  factory BillingBtnMedium.subscribe(int amount, String currency, {Key key}) {
    final text = '${Strings.MONTHLY}$amount${Strings.currency2Str(currency)}';
    return BillingBtnMedium(text: text, key: key,);
  }

  final String text;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: Dimens.MARGIN_OUTLINE, vertical: 8),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.deepOrange),
      borderRadius: BorderRadius.circular(100),
    ),
    child: Row(
      children: [
        const Icon(
          Icons.play_arrow_sharp,
          color: Colors.white,
        ),
        const SizedBox(width: 16),
        Text(
          text,
          style: TextStyles.PURCHASE_BTN,
        ),
        const SizedBox(width: 8),
      ],
    ),
  );
}

/// todo add price
class PurchasedBannerMedium extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: Dimens.MARGIN_OUTLINE, vertical: 8),
    decoration: BoxDecoration(
      color: Colors.deepOrange,
      borderRadius: BorderRadius.circular(100),
    ),
    child: Row(
      children: [
        const Icon(
          Icons.check_circle,
          color: Colors.white,
        ),
        const SizedBox(width: 16),
        const Text(
          Strings.SUBSCRIBED,
          style: TextStyles.PURCHASED_BANNER,
        ),
        const SizedBox(width: 8),
      ],
    ),
  );
}