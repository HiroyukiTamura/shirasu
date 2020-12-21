import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/di/url_util.dart';
import 'package:shirasu/gen/assets.gen.dart';
import 'package:shirasu/model/featured_programs_data.dart';
import 'package:shirasu/ui_common/images.dart';
import 'package:shirasu/ui_common/stacked_inkwell.dart';
import 'package:shirasu/extension.dart';

part 'channel_list_item.g.dart';

const double _SIZE = 72;
const double _PADDING = 24;

@swidget
Widget channelListItem({@required Channels channels}) => Container(
    margin: const EdgeInsets.only(top: 16, bottom: 32),
    height: _SIZE,
    child: ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: _PADDING),
      itemCount: channels.items.length,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, i) => const SizedBox(width: _PADDING),
      itemBuilder: (context, i) => _ListItem(
        id: channels.items[i].id,
      ),
    ),
  );

@swidget
Widget _listItem(
  BuildContext context, {
  @required String id,
}) =>
    CachedNetworkImage(
      imageUrl: UrlUtil.getChannelLogoUrl(id),
      height: _SIZE,
      width: _SIZE,
      imageBuilder: (context, imageProvider) => ClipOval(
        child: StackedInkwell(
          onTap: () async => context.pushChannelPage(id),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
                onError: (e, stackTrace) {
                  debugPrintStack(stackTrace: stackTrace);
                  debugPrint(e.toString());
                },
              ),
            ),
          ),
        ),
      ),
      errorWidget: (context, url, e) =>
          Assets.svg.defaultChannelIcon.supportWeb().toWidget(),
    );
