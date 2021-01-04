import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_note.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_note_credit.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_table.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_web_button.dart';
import 'package:shirasu/util.dart';
import '../page_base/item_heading.dart';

class ScreenPriceChart extends HookWidget {
  const ScreenPriceChart({
    Key key,
    @required this.program,
    @required this.onClearClicked,
  }) : super(key: key);

  final ProgramDetail program;
  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) => ItemBase.draggableSheet(
    heading: Strings.ARCHIVE_PRICE_TABLE_TITLE,
    child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return ItemTable(program: program);
            case 1:
              return const ItemNote();
            case 2:
              return const ItemNoteCredit();
            case 3:
              return ItemWebButton(
                  onTap: () =>
                      Util.launchUrl(context, UrlUtil.programId2Url(program.id)));
            default:
              return const SizedBox.shrink();
          }
        }),
  );
}
