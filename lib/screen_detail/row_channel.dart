import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/resource/text_styles.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RowChannel extends StatelessWidget {
  RowChannel({
    Key key,
    @required this.title,
    @required this.channelId,
  }) : imageUrl = UrlUtil.getChannelLogoUrl(channelId), super(key: key);

  final String title;
  final String imageUrl;
  final String channelId;

  @override
  Widget build(BuildContext context) => StackedInkwell(
        onTap: () async => context
              .read(appRouterProvider)
              .delegate
              .pushPage(GlobalRoutePath.channel(channelId)),
        child: SizedBox(
          height: 24,
          child: Row(
            children: [
              CachedNetworkImage(
                imageUrl: imageUrl,
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyles.DETAIL_CHANNEL_NAME,
              )
            ],
          ),
        ),
      );
}
