import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/hive_fcm_topic_listenable.dart';
import 'package:dartx/dartx.dart';

part 'screen_fcm.g.dart';

@swidget
Widget screenFcm() => SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(Strings.APP_BAR_SCREEN_FCM),
        ),
        body: HiveFcmTopicListenable(
          builder: (context, topic, widget) {
            if (topic.isEmpty) return Container(); //todo show empty error

            List<Widget> children = [];
            if (topic.subscribingChannels.isNotEmpty) {
              children = topic.subscribingChannels.values
                  .map((item) => ListTile(
                        leading: CircleCachedNetworkImage(
                          imageUrl: UrlUtil.channelId2Url(item.id),
                          size: 40,
                        ),
                        title: Text(item.name),
                      ))
                  .toList();
            }

            if (topic.subscribingPrograms.isNotEmpty) {
              children += topic.subscribingPrograms.values
                  .where((it) => DateTime.now() < it.broadcastAt)
                  .map((item) => ListTile(
                        leading: CircleCachedNetworkImage(
                          imageUrl: UrlUtil.programId2Url(item.id),
                          size: 40,
                        ),
                        title: Text(item.title),
                        trailing: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.delete,
                            color: Styles.COLOR_TEXT_SUB,
                          ),
                        ),
                      ))
                  .toList();
            }

            return AnimatedList(
                itemBuilder: (context, index, animation) => children[index], initialItemCount: children.length,);
          },
        ),
      ),
    );
