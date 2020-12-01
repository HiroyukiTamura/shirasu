import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/model/featured_programs_data.dart';

class ChannelListItem extends StatelessWidget {
  const ChannelListItem({
    Key key,
    @required this.channels,
  }) : super(key: key);

  final Channels channels;
  static const double _SIZE = 40;

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: channels.items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) => CachedNetworkImage(
          imageUrl: UrlUtil.getChannelLogoUrl(channels.items[i].id),
          height: _SIZE,
          width: _SIZE,
          imageBuilder: (context, provider) => CircleAvatar(
            backgroundImage: provider,
            onBackgroundImageError: (e, stackTrace) {
              debugPrintStack(stackTrace: stackTrace);
              debugPrint(e.toString());
            },
          ),
          placeholder: (context, url) => const CircleAvatar(),
        ),
      );
}
