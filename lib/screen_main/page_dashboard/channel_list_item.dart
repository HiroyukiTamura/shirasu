import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/extension.dart';

const double _kSize = 72;
const double _kPadding = 24;

typedef OnTapChannel = void Function(BuildContext context, String channelId);

class ChannelListItem extends StatefulWidget {
  const ChannelListItem({
    @required this.channels,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  final Channels channels;
  final OnTapChannel onTap;

  @override
  _ChannelListItemState createState() => _ChannelListItemState();
}

class _ChannelListItemState extends State<ChannelListItem>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 36),
      height: _kSize,
      child: ListView.separated(
        padding:
            const EdgeInsets.symmetric(horizontal: _kPadding),
        itemCount: widget.channels.items.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, i) =>
            const SizedBox(width: _kPadding),
        itemBuilder: (context, i) {
          final id = widget.channels.items[i].id;
          return CircleCachedNetworkImage(
            onTap: () => context.pushChannelPage(id),
            size: _kSize,
            imageUrl: UrlUtil.getChannelLogoUrl(id),
            errorWidget: Util.defaultChannelIcon,
          );
        },
      ),
    );
  }
}
