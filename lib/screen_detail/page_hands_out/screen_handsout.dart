import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_base.dart';
import 'package:shirasu/screen_detail/page_base/item_heading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/screen_main/page_dashboard/billboard/heading.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/util.dart';

class ScreenHandouts extends HookWidget {
  const ScreenHandouts({
    @required this.handouts,
    @required this.onClearClicked,
  }) : super();

  final Handouts handouts;
  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) => ItemBase.draggableSheet(
        child: _ScreenHandsOutInner(
          handouts: handouts,
          onClearClicked: onClearClicked,
        ),
        heading: Strings.HEADER_HANDOUTS,
      );
}

class _ScreenHandsOutInner extends HookWidget {
  _ScreenHandsOutInner({
    Key key,
    @required this.handouts,
    @required this.onClearClicked,
  })  : assert(handouts.items.isNotEmpty),
        super(key: key);

  final Handouts handouts;
  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) => useProvider(
          detailSNProvider.state.select((it) => it.isHandoutUrlRequesting))
      ? const CenterCircleProgress()
      : ListView.builder(
          itemCount: handouts.items.length + 3,
          itemBuilder: (context, index) {
            final handout = handouts.items[0];
            final createdAt =
                DateFormat('yyyy.MM.dd HH:mm').format(handout.createdAt);
            // todo ripple color is not shown
            return ListTile(
              leading: AspectRatio(
                aspectRatio: Dimens.HANDOUT_THUMBNAIL_RATIO,
                child: CachedNetworkImage(
                  imageUrl:
                      UrlUtil.URL_DEFAULT_HANDOUT_THUMBNAIL, // no error widget
                ),
              ),
              title: Text(
                handout.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  height: 1.3,
                  fontSize: 15
                ),
              ),
              isThreeLine: true,
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    createdAt,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      height: 1.3,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    Strings.EXTENSION_PURCHASER_ONLY,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 13,
                      height: 1,
                    ),
                  ),
                ],
              ),
              onTap: () async => _onTapItem(context, handout.id),
            );
          });

  Future<void> _onTapItem(BuildContext context, String handoutId) async {
    final url = await context.read(detailSNProvider).queryHandOutUrl(handoutId);
    if (url != null) Util.launchUrl(context, url);
  }
}
