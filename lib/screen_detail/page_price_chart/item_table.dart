import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiver/iterables.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/extension.dart';

class ItemTable extends ItemBase {
  const ItemTable({
    @required this.program,
    Key key,
  }) : super(key: key);

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) {
    final children = <TableRow>[
      _tableRow(
        second: Strings.ARCHIVE_PRICE_TABLE_HEADER_LABEL_DURATION,
        third: Strings.ARCHIVE_PRICE_TABLE_HEADER_LABEL_GUEST,
        fourth: Strings.ARCHIVE_PRICE_TABLE_HEADER_LABEL_SUBSCRIBER,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).primaryColor,
              width: .7,
            ),
          ),
        ),
      )
    ];

    final mainType = program.onetimePlaneMain;
    if (program.onetimePlaneMain != null) {
      final price = '${mainType.amountWithTax}${mainType.currencyAsSuffix}';
      final mainTypeRow = _tableRow(
        first: Strings.ARCHIVE_PRICE_TABLE_MAIN_TYPE,
        second: Util.sec2Hms(program.mainTime),
        third: price,
        fourth: mainType.parentPlanTypeStrict == PlanType.SUBSCRIPTION
            ? Strings.ARCHIVE_PRICE_TABLE_FREE
            : '${mainType.amountWithTax}${mainType.currencyAsSuffix}',
      );
      children.add(mainTypeRow);
    }

    final extensionRows = enumerate(program.extensions).map((it) {
      final price =
          '${it.value.oneTimePlan.amountWithTax}${it.value.oneTimePlan.currencyAsSuffix}';
      return _tableRow(
        first: '${Strings.ARCHIVE_PRICE_TABLE_NOTE_EXTENSION}${it.index + 1}',
        second: Util.sec2Hms(it.value.extensionTime),
        third: price,
        fourth: program.isExtensionChargedToSubscribers
            ? price
            : Strings.ARCHIVE_PRICE_TABLE_FREE,
      );
    }).toUnmodifiableList();

    children.addAll(extensionRows);

    return ItemBase.itemPadding(
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Table(
          defaultColumnWidth: const IntrinsicColumnWidth(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: children,
        ),
      ),
    );
  }

  static TableRow _tableRow({
    String first,
    @required String second,
    @required String third,
    @required String fourth,
    Decoration decoration,
  }) =>
      TableRow(
        decoration: decoration,
        children: [
          if (first == null)
            const SizedBox.shrink()
          else
            _TableCell(
              text: first,
              columnIndex: 0,
            ),
          _TableCell(
            text: second,
            columnIndex: 1,
          ),
          _TableCell(
            text: third,
            columnIndex: 2,
          ),
          _TableCell(
            text: fourth,
            columnIndex: 3,
          ),
        ],
      );
}

class _TableCell extends ItemBase {
  const _TableCell({
    @required this.text,
    @required this.columnIndex,
  });

  final String text;
  final int columnIndex;

  Color get _backColor {
    switch (columnIndex) {
      case 2:
        return Colors.white;
      case 3:
        return Styles.COLOR_TEXT_BLUE_WHITE;
      default:
        return ItemBase.color;
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        height: 48,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        alignment: Alignment.center,
        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: _backColor),
        ),
      );
}
