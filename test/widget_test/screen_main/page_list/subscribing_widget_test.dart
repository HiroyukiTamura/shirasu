import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/model/graphql/featured_programs_data.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';
import 'package:shirasu/ui_common/empty_list_widget.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';

import '../../../mock_repository/connected_connected.dart';
import '../../../mock_repository/graphql_common.dart';
import '../../../widget_test_util/test_models.dart';
import '../../../widget_test_util/test_runner_base.dart';
import '../../../widget_test_util/test_runner_on_page_error.dart';
import '../../../widget_test_util/test_runner_on_page_list.dart';
import '../../../widget_test_util/test_util.dart';

Future<void> main() async {
  final runner = _TestRunner();
  await runner.initTestOnPageList();
  runner
    ..runTestGroup('SubscribingWidget', goldenNamePrefix: 'SubscribingWidget')
    ..runTestOnPageList('SubscribingWidget');
}

class _TestRunner extends TestRunnerBase with TestRunnerOnPageError, TestRunnerOnPageList {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: SubscribingWidget(),
          ),
          goldenNamePrefix: 'SubscribingWidget',
        );
}
