import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:shirasu/model/lr.dart';
import 'package:shirasu/repository/url_util.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/router/global_route_path.dart';
import 'package:shirasu/ui_common/circle_cached_network_image.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/hive_fcm_topic_listenable.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/extension.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_fcm.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'screen_fcm.g.dart';

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelFcm>((ref) => ViewModelFcm(ref.read));

final kPrvFcmSnackBar =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvDetailSnackMsg =
    Provider.autoDispose<SnackData>((ref) {
  final snackMsgEvent = ref.watch(kPrvFcmSnackBar.state);
  return SnackData(snackMsgEvent.snackMsg, Dimens.SNACK_BAR_DEFAULT_MARGIN);
});

class ScreenFcm extends HookWidget {

  const ScreenFcm();

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.APP_BAR_SCREEN_FCM),
          ),
          body: SnackEventListener(
            provider: _kPrvDetailSnackMsg,
            child: HiveFcmTopicListenable(
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
                      .map((item) => _ChannelListTile(
                            id: item.id,
                            title: item.name,
                            onDismissed: (_) =>
                                _onDismissChannel(context, item.id),
                          ))
                      .toList();
                }

                if (topic.subscribingPrograms.isNotEmpty) {
                  children.add(const _Title(text: '番組'));
                  children += topic.subscribingPrograms.values
                      .where((it) => DateTime.now() < it.broadcastAt)
                      .map(
                        (it) => _Dismissible(
                            keyValue: 'program_${it.id}',
                            onDismissed: (_) => _onDismissPrg(context, it.id),
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
        ),
      );

  void _onTapProgram(BuildContext context, String id) =>
      context.pushPage(GlobalRoutePath.program(id));

  void _onDismissPrg(BuildContext context, String prgId) =>
      context.read(_kPrvViewModel).unsubscribePrgFcmTopic(prgId);

  void _onDismissChannel(BuildContext context, String channelId) =>
      context.read(_kPrvViewModel).unsubscribeChannelFcmTopic(channelId);
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
