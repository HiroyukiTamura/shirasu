import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/model/graphql/mixins/product_type.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/extension.dart';
import 'package:quiver/iterables.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/util.dart';

part 'screen_price_chart.g.dart';

class ScreenPriceChart extends HookWidget {
  const ScreenPriceChart({
    Key key,
    @required this.program,
    @required this.subscriptionPlan,
    @required this.onClearClicked,
  }) : super(key: key);

  final ProgramDetail program;
  final SubscriptionPlan subscriptionPlan;
  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
                    child: Text(
                      Strings.ARCHIVE_PRICE_TABLE_TITLE,
                      style: TextStyle(
                        height: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  _ClearBtn(onPressed: onClearClicked),
                ],
              );
            case 1:
              final children = <TableRow>[
                TableRow(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Theme.of(context).primaryColor,
                        width: .7,
                      ),
                    ),
                  ),
                  children: [
                    SizedBox.shrink(),
                    _TableCell(
                      text: Strings.ARCHIVE_PRICE_TABLE_HEADER_LABEL_DURATION,
                      bold: true,
                    ),
                    _TableCell(
                      text: Strings.ARCHIVE_PRICE_TABLE_HEADER_LABEL_GUEST,
                      bold: true,
                    ),
                    _TableCell(
                      text: Strings.ARCHIVE_PRICE_TABLE_HEADER_LABEL_SUBSCRIBER,
                      bold: true,
                    ),
                  ],
                )
              ];
              final mainType = program.onetimePlaneMain;
              if (program.onetimePlaneMain != null) {
                final price =
                    '${mainType.amountWithTax}${mainType.currencyAsSuffix}';
                final mainTypeRow = TableRow(
                  children: [
                    const _TableCell(
                      text: Strings.ARCHIVE_PRICE_TABLE_MAIN_TYPE,
                      bold: true,
                    ),
                    _TableCell(
                      text: Util.sec2Hms(program.mainTime),
                      bold: false,
                    ),
                    _TableCell(
                      text: price,
                      bold: false,
                    ),
                    _TableCell(
                      text: mainType.parentPlanTypeStrict ==
                              PlanType.SUBSCRIPTION
                          ? Strings.ARCHIVE_PRICE_TABLE_FREE
                          : '${mainType.amountWithTax}${mainType.currencyAsSuffix}',
                      bold: false,
                    ),
                  ],
                );
                children.add(mainTypeRow);
              }

              final extensionRows = enumerate(program.extensions).map((it) {
                final price =
                    '${it.value.oneTimePlan.amountWithTax}${it.value.oneTimePlan.currencyAsSuffix}';
                return TableRow(children: [
                  _TableCell(
                    text:
                        '${Strings.ARCHIVE_PRICE_TABLE_NOTE_EXTENSION}${it.index + 1}',
                    bold: true,
                  ),
                  _TableCell(
                    text: Util.sec2Hms(it.value.extensionTime),
                    bold: false,
                  ),
                  _TableCell(
                    text: price,
                    bold: false,
                  ),
                  _TableCell(
                    text: program.isExtensionChargedToSubscribers
                        ? price
                        : Strings.ARCHIVE_PRICE_TABLE_FREE,
                    bold: false,
                  ),
                ]);
              }).toUnmodifiableList();
              children.addAll(extensionRows);

              return Padding(
                padding: const EdgeInsets.only(top: 24, right: 16, left: 16),
                child: Table(
                  defaultColumnWidth: const IntrinsicColumnWidth(),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: children,
                ),
              );
            case 2:
              return Padding(
                padding: EdgeInsets.only(top: 40, left: 16, right: 16),
                child: Text(
                  Strings.ARCHIVE_PRICE_TABLE_NOTE,
                  style: TextStyle(
                      height: 1.3,
                      fontSize: 13,
                      color: Colors.white.withOpacity(.85)),
                ),
              );
            case 3:
              return Container(
                padding:
                    EdgeInsets.only(right: 16, left: 16, top: 16,),
                child: const Text(
                  Strings.BTM_SHEET_MSG_CREDIT_CARD,
                  style: TextStyle(
                    height: 1.3,
                    fontSize: 13,
                    color: Colors.white,
                  ),
                ),
              );
            case 4:
              return Container(
                padding: EdgeInsets.symmetric(vertical: 36),
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(
                    Strings.OPEN_WEB,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              );

            default:
              return const SizedBox.shrink();
          }
        });
  }
}

@swidget
Widget _tableCell(
  BuildContext context, {
  @required String text,
  @required bool bold,
  Color color,
}) {
  Color backColor = Colors.white.withOpacity(.85);
  if (text == '無料' || text == '会員') backColor = Color(0xffd9f9ff);
  if (text.endsWith('円') || text == '非会員') backColor = Colors.white;
  // if (text.endsWith('円'))
  //   textColor = const Color(0xff);

  return Container(
    height: 48,
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
    alignment: Alignment.center,
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(color: backColor),
    ),
  );
}

@swidget
Widget _clearBtn({
  @required VoidCallback onPressed,
}) =>
    RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      constraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 0,
      ),
      shape: const CircleBorder(),
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Icon(
          Icons.keyboard_arrow_down,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
