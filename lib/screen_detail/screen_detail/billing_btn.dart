import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

part 'billing_btn.g.dart';

// class BillingBtn extends StatelessWidget {
//   const BillingBtn({Key key, @required this.text}) : super(key: key);
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) => Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Container(
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.deepOrange),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: Row(
//             children: [
//               Icon(
//                 Icons.play_arrow_sharp,
//                 color: Colors.white,
//               ),
//               SizedBox(width: 16),
//               Text(
//                 text,
//                 style: TextStyle(
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
// }

// class BillingBtnThin extends StatelessWidget {
//   const BillingBtnThin({Key key, @required this.text}) : super(key: key);
//
//   final String text;
//
//   @override
//   Widget build(BuildContext context) => Expanded(
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.deepOrange),
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: Row(
//             children: [
//               Icon(
//                 Icons.play_arrow_sharp,
//                 color: Colors.white,
//               ),
//               SizedBox(width: 16),
//               Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 12,
//                   color: Colors.white,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
// }

@swidget
Widget billingBtnMedium({
  @required int amountWithTax,
  @required String currencyAsSuffix,
  @required GestureTapCallback onTap,
}) =>
    _ButtonMedium(
      onTap: onTap,
      icon: const Icon(
        Icons.play_arrow_sharp,
        color: Colors.white,
      ),
      text:
          '${Strings.MONTHLY}$amountWithTax$currencyAsSuffix${Strings.SUBSCRIBE_SUFFIX}',
    );

@swidget
Widget purchasedBannerMedium(
  BuildContext context, {
  @required GestureTapCallback onTap,
}) =>
    _ButtonMedium(
      onTap: onTap,
      icon: Icon(
        Icons.check_circle,
        color: Theme.of(context).primaryColor,
      ),
      text: Strings.SUBSCRIBED,
    );

@swidget
Widget _buttonMedium(
  BuildContext context, {
  @required GestureTapCallback onTap,
  @required Icon icon,
  @required String text,
}) =>
    RaisedButton.icon(
      color: Colors.transparent,
      icon: icon,
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.MARGIN_OUTLINE, vertical: 8),
      onPressed: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
        side: BorderSide(color: Theme.of(context).primaryColor),
      ),
      label: Text(
        text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyles.PURCHASED_BANNER,
      ),
    );
