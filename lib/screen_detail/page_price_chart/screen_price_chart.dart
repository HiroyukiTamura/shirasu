import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_note.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_note_credit.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_table.dart';
import 'package:shirasu/screen_detail/page_price_chart/item_web_button.dart';
import 'item_heading.dart';

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
  Widget build(BuildContext context) => ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return ItemHeading(onClearClicked: onClearClicked);
          case 1:
            return ItemTable(
              program: program,
              subscriptionPlan: subscriptionPlan,
            );
          case 2:
            return const ItemNote();
          case 3:
            return const ItemNoteCredit();
          case 4:
            return ItemWebButton(onTap: () => _onTapWebBtn());

          default:
            return const SizedBox.shrink();
        }
      });

  Future<void> _onTapWebBtn() async {
    //todo implement
  }
}
