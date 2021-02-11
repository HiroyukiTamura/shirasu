import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';

import 'override_util.dart';
import 'test_util.dart';

typedef WidgetBuilder = Widget Function();

class TestRunnerBase {

  const TestRunnerBase(this.builder);
  
  final WidgetBuilder builder;
  
  Future<void> matchGolden({
    @required WidgetTester tester,
    @required String goldenName,
    List<Override> overrides = const [],
    OnScenarioCreate onScenarioCreate,
    ThemeData theme,
  }) async =>
      TestUtil.matchGolden(
        tester: tester,
        goldenName: goldenName,
        widget: ProviderScope(
          overrides: kOverrideUtil.createOverrides(overrides),
          child: builder(),
        ),
        theme: theme,
        onScenarioCreate: onScenarioCreate,
      );
}