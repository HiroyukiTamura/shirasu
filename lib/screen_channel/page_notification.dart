import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/channel_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/resource/text_styles.dart';

class PageNotification extends StatelessWidget {
  const PageNotification({Key key, @required this.announcements})
      : super(key: key);

  final Announcements announcements;
  static const double _SEPARATE_HEIGHT =
      Dimens.CHANNEL_PAGE_VERTICAL_MARGIN * 2;

  @override
  Widget build(BuildContext context) => ListView.separated(
        itemCount: announcements.items.length, //0の場合の例外処理
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.MARGIN_OUTLINE,
          vertical: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN,
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: _SEPARATE_HEIGHT,
        ),
        itemBuilder: _itemBuilder,
      );

  Widget _itemBuilder(BuildContext context, int index) {
    final item = announcements.items[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DateFormat('yyyy/MM/dd HH:mm').format(item.publishedAt),
          style: TextStyle(
            height: TextStyles.TEXT_HEIGHT,
            fontSize: 12,
            color: Styles.colorTextSub,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          item.title,
          style: TextStyles.CHANNEL_HEADING,
        ),
        const SizedBox(height: 24),
        Text(
          item.text,
          style: TextStyles.CHANNEL_BOLD,
        )
      ],
    );
  }
}
