import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/screen_main/page_search/screen_search.dart';

import '../../mock_repository/hive_auth_empty.dart';
import '../../mock_repository/hive_search_history_empty.dart';
import '../../widget_test_util/test_runner_base.dart';

void main() => _TestRunner().runTest();

class _TestRunner extends TestRunnerBase {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: PageSearchInMainScreen(),
          ),
          goldenNamePrefix: 'PageSearchInMainScreen',
        );

  void runTest() => group('PageSearchInMainScreen', () {
        testGoldensSimple(
            testName: 'initial',
            overrides: [
              ...defaultOverride,
              kOverrideEmptyHiveAuthRepository,
              kOverrideHiveSearchEmpty,
            ],
            onPostBuild: (tester) async {
              expect(
                  find.byWidgetPredicate((widget) =>
                      widget is TextField && widget.focusNode.hasFocus),
                  findsOneWidget);
            });

        testGoldensSimple(
            testName: 'matchSearchHistories',
            overrides: [
              ...defaultOverride,
              kPrvHiveHistoryRepository.overrideWithValue(HiveSearchHistoryMock(initialValues: [
                HiveSearchHistoryItem(text: 'aaaa', searchedAt: DateTime.now()),
                HiveSearchHistoryItem(text: 'aaa', searchedAt: DateTime.now()),
                HiveSearchHistoryItem(text: 'bbbb', searchedAt: DateTime.now()),
              ])),
              kOverrideHiveSearchEmpty,
            ],
            onPostBuild: (tester) async {
              await tester.enterText(find.byType(TextField), 'aaa');
              await tester.pump(1.seconds);
              expect(find.text('aaa'), findsOneWidget);
              expect(find.text('aaaa'), findsOneWidget);
            });
      });
}
