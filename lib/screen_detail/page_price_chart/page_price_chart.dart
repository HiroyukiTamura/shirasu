import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_note.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_note_credit.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_table.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_web_button.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/util.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PagePriceChart extends StatelessWidget {
  const PagePriceChart({
    Key key,
    @required this.program,
    @required this.onClearClicked,
  }) : super(key: key);

  final ProgramDetail program;
  final OnClearClicked onClearClicked;

  @override
  Widget build(BuildContext context) => DraggableSheet(
        heading: Strings.ARCHIVE_PRICE_TABLE_TITLE,
        onClearClicked: onClearClicked,
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
                    onTap: () async => _onTapWebBtn(context),
                  );
                default:
                  return const SizedBox.shrink();
              }
            }),
      );

  void _onTapWebBtn(BuildContext context) => Util.launchUrl(
        context,
        UrlUtil.programId2Url(program.id),
        () => context
            .read(detailSNProvider(program.id))
            .commandSnackBar(const SnackMsg.unknown()),
      );
}
