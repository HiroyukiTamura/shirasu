import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/font_size.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/custom_cached_network_image.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'page_handouts.g.dart';

@hwidget
Widget pageHandouts({
  @required OnClearClicked onClearClicked,
  @required ProgramDetail program,
}) =>
    DraggableSheet(
      heading: Strings.HEADER_HANDOUTS,
      onClearClicked: onClearClicked,
      child: _ScreenHandsOutInner(
        program: program,
      ),
    );

class _ScreenHandsOutInner extends HookWidget {
  _ScreenHandsOutInner({
    @required this.program,
    Key key,
  })  : assert(program.handouts.items.isNotEmpty),
        super(key: key);

  final ProgramDetail program;

  static const double _SUBTITLE_PAD = 6;

  @override
  Widget build(BuildContext context) => useProvider(
          kPrvViewModelDetail(program.id)
              .state
              .select((it) => it.isHandoutUrlRequesting))
      ? const CenterCircleProgress()
      : ListView.builder(
          itemCount: program.handouts.items.length,
          itemBuilder: (context, index) {
            final handout = program.handouts.items[index];
            final createdAt =
                DateFormat('yyyy.MM.dd HH:mm').format(handout.createdAt);
            final isExtensionOnly = handout.extensionId != null;
            final enabled = program.viewerPlanTypeStrict != null &&
                (!isExtensionOnly ||
                    program.isExtensionAvailable(handout.extensionId));

            return ListTile(
              enabled: enabled,
              leading: AspectRatio(
                aspectRatio: Dimens.HANDOUT_THUMBNAIL_RATIO,
                child: CustomCachedNetworkImage(
                  imageUrl:
                      UrlUtil.getHandoutThumbnailUrl(program.id, handout.id),
                  errorWidget: Util.defaultHandoutThumbnail,
                ),
              ),
              title: Text(
                handout.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  height: TextHeight.TEXT_HEIGHT,
                  fontSize: FontSize.DEFAULT,
                ),
              ),
              isThreeLine: isExtensionOnly,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: _SUBTITLE_PAD),
                  Text(
                    createdAt,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyles.pageHandoutSubtitle(),
                  ),
                  if (isExtensionOnly)
                    Padding(
                      padding: const EdgeInsets.only(top: _SUBTITLE_PAD),
                      child: Text(
                        Strings.EXTENSION_PURCHASER_ONLY,
                        style: TextStyles.pageHandoutSubtitle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                ],
              ),
              onTap: () async => _onTapItem(context, handout.id),
            );
          });

  Future<void> _onTapItem(BuildContext context, String handoutId) async {
    final url = await context
        .read(kPrvViewModelDetail(program.id))
        .queryHandOutUrl(handoutId);
    if (url != null)
      await Util.launchUrl(
          context,
          url,
          () => context
              .read(kPrvViewModelDetail(program.id))
              .commandSnackBar(const SnackMsg.unknown()));
  }
}
