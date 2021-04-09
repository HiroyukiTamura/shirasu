import 'package:flutter/cupertino.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/hive/fcm_topic.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/hive_client.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';
import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part 'hive_fcm_topic_listenable.g.dart';

@hwidget
Widget hiveFcmTopicListenable({
  @required Widget Function(BuildContext context, HiveFcmTopic value, Widget child) builder,
}) => ValueListenableBuilder<Box<dynamic>>(
  valueListenable: useProvider(kPrvHiveFcmTopicListener),
  builder: (context, value, child) {
    final topic = value.get(HivePrefRepositoryImpl.KEY_FCM_TOPIC, defaultValue: HiveFcmTopic.initial());
    return builder(context, topic, child);
  },
);


@hwidget
Widget hiveSearchHistoryListenable({
  @required Widget Function(BuildContext context, HiveSearchHistory value, Widget child) builder,
}) => ValueListenableBuilder<Box<HiveSearchHistory>>(
  valueListenable: useProvider(kPrvHiveHistoryListener),
  builder: (context, value, child) {
    final it = value.get(HiveHistoryRepositoryImpl.KEY, defaultValue: HiveSearchHistory.initial());
    return builder(context, it, child);
  },
);