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
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 8,
        ),
        itemCount: 3,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
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
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                child: Text(
                  Strings.ARCHIVE_PRICE_TABLE_NOTE,
                  style: TextStyle(height: 1.3, fontSize: 13),
                ),
              );
            case 2:
              final children = <TableRow>[];
              final mainType = program.onetimePlaneMain;
              if (program.onetimePlaneMain != null) {
                final price = '${mainType.amountWithTax}${mainType.currencyAsSuffix}';
                final mainTypeRow = TableRow(
                  children: [
                    Container(
                      child: const Text(Strings.ARCHIVE_PRICE_TABLE_MAIN_TYPE),
                    ),
                    Container(
                      child: Text(Util.sec2Hms(program.mainTime)),
                    ),
                    Container(
                      child: Text(mainType.parentPlanTypeStrict ==
                              PlanType.SUBSCRIPTION
                          ? Strings.ARCHIVE_PRICE_TABLE_FREE
                          : '${mainType.amountWithTax}${mainType.currencyAsSuffix}'),
                    ),
                    Container(
                      child: Text(price),
                    ),
                  ],
                );
                children.add(mainTypeRow);
              }

              final extensionRows = enumerate(program.extensions).map((it) {
                final price =
                    '${it.value.oneTimePlan.amountWithTax}${it.value.oneTimePlan.currencyAsSuffix}';
                return TableRow(children: [
                  Container(
                    child: Text(
                        '${Strings.ARCHIVE_PRICE_TABLE_NOTE_EXTENSION}${it.index + 1}${Strings.ARCHIVE_PRICE_TABLE_NOTE_EXTENSION_SUFFIX}'),
                  ),
                  Container(
                    child: Text(Util.sec2Hms(it.value.extensionTime)),
                  ),
                  Container(
                    child: Text(program.isExtensionChargedToSubscribers
                        ? price
                        : Strings.ARCHIVE_PRICE_TABLE_FREE),
                  ),
                  Container(
                    child: Text(price),
                  ),
                ]);
              }).toUnmodifiableList();
              children.addAll(extensionRows);

              return Table(
                children: children,
              );

            default:
              return const SizedBox.shrink();
          }
        });
  }
}

@swidget
Widget _clearBtn({
  @required VoidCallback onPressed,
}) =>
    RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      constraints: const BoxConstraints(
        minWidth: 36,
        minHeight: 36,
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
