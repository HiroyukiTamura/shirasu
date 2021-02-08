import 'package:dartx/dartx.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';

import '../../mock_repository/hive_auth_empty.dart';
import '../../test_extension.dart';
import '../../test_util.dart';

String _kTestNameScreenIntro1 = 'ScreenIntro1';
String _kTestNameScreenIntro2 = 'ScreenIntro2';
String _kTestNameScreenIntro3 = 'ScreenIntro3';

String _kTestNameScreenIntroSwipe1 = 'ScreenIntro_Swipe1';
String _kTestNameScreenIntroSwipe2 = 'ScreenIntro_Swipe2';
String _kTestNameScreenIntroSwipe3 = 'ScreenIntro_Swipe3';

void testUiOnScreenIntro() {
  Future<void> _tapNextIcon(WidgetTester tester, Key scenarioWidgetKey) async {
    final finder = find.descendant(
      of: find.byKey(scenarioWidgetKey),
      matching: find.byIcon(Icons.navigate_next),
    );
    expect(finder, findsOneWidget);
    // await tester.drag(find.byType(IntroductionScreen).last, const Offset(500, 0));
    await tester.tap(finder);
  }

  // todo not work...
  Future<void> _horizontalDrag(
      WidgetTester tester, Key scenarioWidgetKey) async {
    final finder = find.byType(IntroductionScreen);
    expect(finder, findsWidgets);
    await tester.fling(finder.last, const Offset(-200, 0), 10000,
        initialOffset: const Offset(200, 50));
  }

  void _expectDoneBtn(WidgetTester tester, Key scenarioWidgetKey) {
    final finder = find.descendant(
      of: find.byKey(scenarioWidgetKey),
      matching: find.text(Strings.INTRO_DONE),
    );
    expect(finder, findsOneWidget);
  }

  Future<void> _matchGolden({
    @required WidgetTester tester,
    @required String goldenName,
    OnScenarioCreate onScenarioCreate,
  }) =>
      TestUtil.matchGolden(
        tester: tester,
        goldenName: goldenName,
        widget: const _ScreenIntro(),
        onScenarioCreate: onScenarioCreate,
      );

  group('ScreenIntro tap nextBtn', () {
    testGoldens(
      _kTestNameScreenIntro1,
      (tester) async =>
          _matchGolden(tester: tester, goldenName: _kTestNameScreenIntro1),
    );

    testGoldens(
      _kTestNameScreenIntro2,
      (tester) async => _matchGolden(
        tester: tester,
        goldenName: _kTestNameScreenIntro2,
        onScenarioCreate: (scenarioWidgetKey) async =>
            _tapNextIcon(tester, scenarioWidgetKey),
      ),
    );

    testGoldens(
      _kTestNameScreenIntro3,
      (tester) async => _matchGolden(
        tester: tester,
        goldenName: _kTestNameScreenIntro3,
        onScenarioCreate: (scenarioWidgetKey) async {
          await _tapNextIcon(tester, scenarioWidgetKey);
          await tester.pump(3.seconds);
          await _tapNextIcon(tester, scenarioWidgetKey);
          await tester.pump(3.seconds);

          // region i don't know why but... must invoke twice more
          await _tapNextIcon(tester, scenarioWidgetKey);
          await tester.pump(3.seconds);
          await _tapNextIcon(tester, scenarioWidgetKey);
          await tester.pump(3.seconds);
          // endregion

          _expectDoneBtn(tester, scenarioWidgetKey);
        },
      ),
    );
  });

  group('ScreenIntro swipe', () {
    testGoldens(
      _kTestNameScreenIntroSwipe1,
      (tester) async =>
          _matchGolden(tester: tester, goldenName: _kTestNameScreenIntroSwipe1),
    );

    testGoldens(
      _kTestNameScreenIntroSwipe2,
      (tester) async => _matchGolden(
        tester: tester,
        goldenName: _kTestNameScreenIntroSwipe2,
        onScenarioCreate: (scenarioWidgetKey) async {
          await tester.pump(3.seconds);
          await _horizontalDrag(tester, scenarioWidgetKey);
          expect(find.text(Strings.INTRO_TITLE_2ND), findsOneWidget);
        },
      ),
    );

    testGoldens(
      _kTestNameScreenIntroSwipe3,
      (tester) async => _matchGolden(
        tester: tester,
        goldenName: _kTestNameScreenIntroSwipe3,
        onScenarioCreate: (scenarioWidgetKey) async {
          await tester.pump(3.seconds);
          await _horizontalDrag(tester, scenarioWidgetKey);
          await tester.pump(3.seconds);
          await _horizontalDrag(tester, scenarioWidgetKey);
          await tester.pump(3.seconds);
          _expectDoneBtn(tester, scenarioWidgetKey);
        },
      ),
    );
  });
}

class _ScreenIntro extends StatelessWidget {
  const _ScreenIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ProviderScope(
        overrides: [
          kPrvHivePrefRepository.overrideWithProvider(
              Provider((ref) => HiveEmptyPrefRepositoryImpl()))
        ],
        child: Theme(
          data: Styles.theme,
          child: ScreenIntro(),
        ),
      );
}
