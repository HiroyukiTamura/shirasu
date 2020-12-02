import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/main.dart';
import 'package:hooks_riverpod/all.dart';

class ChannelListItem extends StatelessWidget {
  const ChannelListItem({
    Key key,
    @required this.channels,
  }) : super(key: key);

  final Channels channels;
  static const double _SIZE = 72;
  static const double _PADDING = 24;

  @override
  Widget build(BuildContext context) => SizedBox(
        height: _SIZE,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: _PADDING),
          itemCount: channels.items.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, i) => const SizedBox(width: _PADDING),
          itemBuilder: (context, i) {
            final id = channels.items[i].id;
            return CachedNetworkImage(
            imageUrl: UrlUtil.getChannelLogoUrl(id),
            height: _SIZE,
            width: _SIZE,
            imageBuilder: (context, imageProvider) => ClipOval(
              child: StackedInkwell(
                onTap: () async => context
                    .read(appRouterProvider)
                    .delegate
                    .pushPage(GlobalRoutePath.channel(id)),// todo move to context extension method
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        onError: (e, stackTrace) {
                          debugPrintStack(stackTrace: stackTrace);
                          debugPrint(e.toString());
                        }),
                  ),
                ),
              ),
            ),
            errorWidget: (context, url, e) => Assets.svg.defaultChannelIcon
                .supportWeb()
                .toWidget(),
          );
          },
        ),
      );
}
