import 'dart:collection';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/model/graphql/channel_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/ui_common/common_linkify.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

class PageNotification extends StatelessWidget {
  const PageNotification({
    @required this.announcements,
    @required this.id,
    Key key,
  }) : super(key: key);

  final UnmodifiableListView<AnnouncementsItem> announcements;
  final String id;
  static const double _SEPARATE_HEIGHT =
      Dimens.CHANNEL_PAGE_VERTICAL_MARGIN * 2;

  @override
  Widget build(BuildContext context) => announcements.isEmpty
      ? const PageErrText(
          text: Strings.CHANNEL_ANNOUNCEMENTS_EMPTY_MSG,
        )
      : ListView.separated(
          itemCount: announcements.length, //0の場合の例外処理
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.MARGIN_OUTLINE,
            vertical: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN,
          ),
          separatorBuilder: (context, index) =>
              const SizedBox(height: _SEPARATE_HEIGHT),
          itemBuilder: _itemBuilder,
        );

  Widget _itemBuilder(BuildContext context, int index) {
    final item = announcements[index];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DateFormat('yyyy/MM/dd HH:mm').format(item.publishedAt),
          style: TextStyles.CHANNEL_TIME,
        ),
        const SizedBox(height: 4),
        Text(
          item.title,
          style: TextStyles.channelHeading,
        ),
        const SizedBox(height: 24),
        CommonLinkify(
            text: item.text,
            onLaunchUrlErr: () => context
                .read(kPrvViewModelChannel(id))
                .notifySnackMsg(const SnackMsg.unknown())),
      ],
    );
  }
}
