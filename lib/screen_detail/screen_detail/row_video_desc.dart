import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/screen_detail/screen_detail/padding_row.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/common_linkify.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'row_video_desc.g.dart';

@swidget
Widget rowVideoDesc(
  BuildContext context, {
  @required String text,
  @required String id,
}) =>
    BasePadding(
      child: CommonLinkify(
        text: text,
        onLaunchUrlErr: () => context
            .read(kPrvViewModelDetail(id))
            .commandSnackBar(const SnackMsg.unknown()),
      ),
    );
