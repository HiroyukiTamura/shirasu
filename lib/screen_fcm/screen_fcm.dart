import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/lr.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/hive_fcm_topic_listenable.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/extension.dart';

part 'screen_fcm.g.dart';

class ScreenFcm extends StatefulWidget {
  const ScreenFcm();

  @override
  _ScreenFcmState createState() => _ScreenFcmState();
}

class _ScreenFcmState extends State<ScreenFcm> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.APP_BAR_SCREEN_FCM),
          ),
          body: HiveFcmTopicListenable(
            builder: (context, topic, widget) {
              if (topic.isEmpty)
                return const EmptyListWidget(
                  text: Strings.EMPTY_FCM,
                  icon: Icons.notifications,
                );

              List<Widget> children = [];
              if (topic.subscribingChannels.isNotEmpty) {
                children.add(const _Title(text: 'チャンネル'));
                children += topic.subscribingChannels.values
                    .mapIndexed((i, item) => _ChannelListTile(
                          id: item.id,
                          title: item.name,
                          onDismissed: (direction) =>
                              _onDismissChannel(direction, item.id),
                        ))
                    .toList();
              }

              if (topic.subscribingPrograms.isNotEmpty) {
                children.add(const _Title(text: '番組'));
                children += topic.subscribingPrograms.values
                    .where((it) => DateTime.now() < it.broadcastAt)
                    .mapIndexed(
                      (i, it) => _Dismissible(
                          keyValue: 'program_${it.id}',
                          onDismissed: (direction) =>
                              _onDismissPrg(direction, it.id),
                          child: MovieListItem(
                            id: it.id,
                            title: it.title,
                            broadcastAt: it.broadcastAt,
                            onTap: () => _onTapProgram(context, it.id),
                          )),
                    )
                    .toList();
              }

              return ListView(
                children: children,
              );
            },
          ),
        ),
      );

  void _onTapProgram(BuildContext context, String id) =>
      context.pushPage(GlobalRoutePath.program(id));

  void _onDismissPrg(DismissDirection direction, String prgId) {
    //todo implement
  }

  void _onDismissChannel(DismissDirection direction, String channelId) {
    //todo implement
  }
}

@swidget
Widget _title({@required String text}) => Text(text);

@swidget
Widget _channelListTile(
  BuildContext context, {
  @required String id,
  @required String title,
  @required DismissDirectionCallback onDismissed,
}) =>
    _Dismissible(
      keyValue: id,
      onDismissed: onDismissed,
      child: ListTile(
        leading: CircleCachedNetworkImage(
          imageUrl: UrlUtil.getChannelLogoUrl(id),
          size: 40,
        ),
        title: Text(title),
      ),
    );

@swidget
Widget _dismissible(
  BuildContext context, {
  @required Widget child,
  @required String keyValue,
  @required DismissDirectionCallback onDismissed,
}) =>
    Dismissible(
      key: Key(keyValue),
      background: const _DismissibleBg(
        lr: Lr.left(),
      ),
      secondaryBackground: const _DismissibleBg(
        lr: Lr.right(),
      ),
      onDismissed: onDismissed,
      child: child,
    );

@swidget
Widget _dismissibleBg(
  BuildContext context, {
  @required Lr lr,
}) =>
    Container(
      color: Theme.of(context).primaryColor,
      alignment: lr.when(
        left: () => Alignment.centerLeft,
        right: () => Alignment.centerRight,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
