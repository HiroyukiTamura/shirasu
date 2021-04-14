import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/model/hive/search_history.dart';
import 'package:shirasu/repository/dio_repository_impl.dart';
import 'package:shirasu/repository/hive_history_repository_impl.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/screen_main/page_search/auto_list_view_container.dart';
import 'package:shirasu/screen_main/page_search/page_search.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_search.dart' hide SuggestItem;

import '../../mock_repository/connected_connected.dart';
import '../../mock_repository/dio_mock.dart';
import '../../mock_repository/graphql_error.dart';
import '../../mock_repository/hive_auth_empty.dart';
import '../../mock_repository/hive_search_history_empty.dart';
import '../../mock_viewmodel/viewmodel_search_mockable.dart';
import '../../widget_test_util/json_client.dart';
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
            testName: 'SearchHistoryDisplay',
            overrides: [
              ...defaultOverride,
              kOverrideEmptyHiveAuthRepository,
              kPrvHiveHistoryRepository.overrideWithValue(
                HiveSearchHistoryMock(
                    initialValues: HiveSearchHistory(itemList: [
                  HiveSearchHistoryItem(
                      text: 'aaaa', searchedAt: DateTime.now()),
                  HiveSearchHistoryItem(
                      text: 'bbbb', searchedAt: DateTime.now()),
                ])),
              ),
            ],
            onPostBuild: (tester) async {
              _expectTextFieldFocus(true);
              expect(find.text('aaaa'), findsOneWidget);
              expect(find.text('bbbb'), findsOneWidget);
            });
        testGoldensSimple(
            testName: 'matchSearchHistories',
            overrides: [
              ...defaultOverride,
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kOverrideHiveSearchEmpty,
              kPrvDioRepository.overrideWithValue(
                  DioRepositoryMock(JsonClient.instance.mAlgoliaResponse)),
            ],
            onPostBuild: (tester) async => _inputTextFiled(tester));
        testGoldensSimple(
            testName: 'TapClearButtonOnTextField',
            overrides: [
              ...defaultOverride,
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kOverrideHiveSearchEmpty,
              kPrvDioRepository.overrideWithValue(
                  DioRepositoryMock(JsonClient.instance.mAlgoliaResponse)),
            ],
            onPostBuild: (tester) async {
              await _inputTextFiled(tester);
              await tester.tap(find.byIcon(Icons.clear));
              expect(find.widgetWithText(TextField, ''), findsOneWidget);
            });
        testGoldensSimple(
            testName: 'TapAutoCompleteInsertButton',
            overrides: [
              ...defaultOverride,
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kOverrideHiveSearchEmpty,
              kPrvDioRepository.overrideWithValue(
                  DioRepositoryMock(JsonClient.instance.mAlgoliaResponse)),
              kOverrideGraphqlErr,
            ],
            onPostBuild: (tester) async {
              await _inputTextFiled(tester);
              await tester.tap(find.byIcon(Icons.north_west).first);
              _assertTextFieldValue();
            });
        testGoldensSimple(
            testName: 'TapAutoCompleteItem',
            overrides: [
              ...defaultOverride,
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kOverrideHiveSearchEmpty,
              kPrvDioRepository.overrideWithValue(
                  DioRepositoryMock(JsonClient.instance.mAlgoliaResponse)),
              kOverrideGraphqlErr,
            ],
            onPostBuild: (tester) async {
              await _inputTextFiled(tester);
              await tester.tap(find.byType(SuggestItem).first);
              await tester.pump(3.seconds);
              _assertTextFieldValue();
              _expectTextFieldFocus(false);
            });
        testGoldensSimple(
            testName: 'submitByKeyboard',
            overrides: [
              ...defaultOverride,
              kOverrideConnectedRepositoryConnectedImpl,
              kOverrideEmptyHiveAuthRepository,
              kOverrideHiveSearchEmpty,
              kPrvDioRepository.overrideWithValue(
                  DioRepositoryMock(JsonClient.instance.mAlgoliaResponse)),
              kOverrideGraphqlErr,
            ],
            onPostBuild: (tester) async {
              await tester.enterText(find.byType(TextField), 'ゲンロン完全中継チャンネル');
              await tester.testTextInput.receiveAction(TextInputAction.search);
              await tester.pump(3.seconds);
              _assertTextFieldValue();
              _expectTextFieldFocus(false);
            });
        testGoldensSimple(
          testName: 'ScreenLoading',
          overrides: [
            ...defaultOverride,
            kOverrideEmptyHiveAuthRepository,
            kOverrideHiveSearchEmpty,
            ViewModelSearchMock.createOverride(ModelSearch(
              searchResult: const SearchResult.loading(),
            ))
          ],
          onPostBuild: (tester) =>
              expect(find.byType(CenterCircleProgress), findsOneWidget),
        );
        testGoldensSimple(
          testName: 'ScreenError',
          overrides: [
            ...defaultOverride,
            kOverrideEmptyHiveAuthRepository,
            kOverrideHiveSearchEmpty,
            ViewModelSearchMock.createOverride(ModelSearch(
                searchResult:
                    const SearchResult.error(ErrorMsgCommon.networkTimeout())))
          ],
          onPostBuild: (tester) =>
              expect(find.text(Strings.ERR_NETWORK_TIMEOUT), findsOneWidget),
        );
      });

  static void _expectTextFieldFocus(bool hasFocus) => expect(
      find.byWidgetPredicate((widget) =>
          widget is TextField &&
          (hasFocus ? widget.focusNode.hasFocus : !widget.focusNode.hasFocus)),
      findsOneWidget);

  static Future<void> _inputTextFiled(WidgetTester tester) async {
    await tester.enterText(find.byType(TextField), 'ゲンロン');
    await tester.pump(1.seconds);
  }

  static void _assertTextFieldValue() =>
      expect(find.widgetWithText(TextField, 'ゲンロン完全中継チャンネル'), findsOneWidget);
}
