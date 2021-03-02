import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/ui_common/common_linkify.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'page_channel_detail.g.dart';

@swidget
Widget pageChannelDetail(BuildContext context, {
  @required String text,
  @required String id,
}) =>
    SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.CHANNEL_PAGE_VERTICAL_MARGIN,
        horizontal: Dimens.MARGIN_OUTLINE,
      ),
      child: CommonLinkify(
        text: text,
        onLaunchUrlErr: () =>
            context
                .read(kPrvViewModelChannel(id))
                .notifySnackMsg(const SnackMsg.unknown()),
      ),
    );
