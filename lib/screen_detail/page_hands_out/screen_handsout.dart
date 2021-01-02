import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_detail/page_base/item_heading.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_detail/screen_detail.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';

final handoutUrlProvider =
    Provider.autoDispose((ref) => StateController<String>(null));

class ScreenHandsOut extends StatelessWidget {
  ScreenHandsOut({
    Key key,
    @required this.handouts,
    @required this.onClearClicked,
  })  : assert(handouts.items.isNotEmpty),
        super(key: key);

  final Handouts handouts;
  final VoidCallback onClearClicked;

  @override
  Widget build(BuildContext context) {
    final heading = ItemHeading(
      text: Strings.HEADER_HANDOUTS,
      onClearClicked: onClearClicked,
    );
    return useProvider(
            detailSNProvider.state.select((it) => it.isHandoutUrlRequesting))
        ? Column(
            children: [
              heading,
              const Expanded(
                child: CenterCircleProgress(),
              )
            ],
          )
        : ListView.builder(
            itemCount: handouts.items.length + 1,
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return heading;
                default:
                  final handout = handouts.items[index - 1];
                  final createdAt =
                      DateFormat('yyyy.MM.dd HH:mm').format(handout.createdAt);
                  return ListTile(
                    leading: CachedNetworkImage(
                      imageUrl: UrlUtil.URL_DEFAULT_HANDOUT_THUMBNAIL,
                    ),
                    title: Text(handout.name),
                    subtitle: Text(createdAt),
                    onTap: () async => context
                        .read(detailSNProvider)
                        .queryHandOutUrl(handout.id),
                  );
              }
            });
  }
}
