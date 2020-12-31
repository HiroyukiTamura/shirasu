import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';

class ScreenPriceChart extends StatelessWidget {
  const ScreenPriceChart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        switch (index) {
          case 0:
            return const Text(Strings.ARCHIVE_PRICE_TABLE_NOTE);
          default:
            return const SizedBox.shrink();
        }
      });
}
