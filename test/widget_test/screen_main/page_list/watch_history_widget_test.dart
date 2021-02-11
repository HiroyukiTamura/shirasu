import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/screen_main/page_list/watch_history_widget.dart';

import '../../../widget_test_util/test_runner_base.dart';
import '../../../widget_test_util/test_runner_on_page_error.dart';
import '../../../widget_test_util/test_runner_on_page_list.dart';

Future<void> main() async {
  final runner = _TestRunner();
  await runner.initTestOnPageList();
  runner
    ..runTestGroup('WatchHistoryWidget', goldenNamePrefix: 'WatchHistoryWidget')
    ..runTestOnPageList('WatchHistoryWidget');
}

class _TestRunner extends TestRunnerBase
    with TestRunnerOnPageError, TestRunnerOnPageList {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: WatchHistoryWidget(),
          ),
          goldenNamePrefix: 'WatchHistoryWidget',
        );
}
