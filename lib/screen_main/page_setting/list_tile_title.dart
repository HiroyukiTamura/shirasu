import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';

class ListTileTitle extends StatelessWidget {
  const ListTileTitle({
    Key key,
    @required this.title,
    @required this.showEmptyText,
  }) : super(key: key);

  final String title;
  final bool showEmptyText;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 8,
          bottom: 8,
        ), //todo extract to dimens
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyles.SETTING_COMPONENT_TITLE,
            ),
            Visibility(
              visible: showEmptyText,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Text(
                  '$title${Strings.NO_ITEM_SUFFIX}',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withOpacity(.5),
                    height: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
