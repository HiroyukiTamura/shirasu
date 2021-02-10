import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shirasu/resource/styles.dart';

import 'test_extension.dart';

class TestUtil {
  static final _phoneHorizontal = Device.phone.copyWith(
    name: 'phone - Horizontal',
    size: Device.phone.size.flipped,
  );
  static final _iphone11HorizontalTextBig = Device.phone.copyWith(
    name: 'iphone11 - horizontal - text big',
    size: Device.iphone11.size.flipped,
    textScale: 2.5,
  );

  static final allDevices = [
    Device.phone,
    Device.iphone11,
    Device.tabletPortrait,
    Device.tabletLandscape,
    _phoneHorizontal,
    _iphone11HorizontalTextBig,
  ];

  static Future<void> matchGolden({
    @required WidgetTester tester,
    @required String goldenName,
    @required Widget widget,
    OnScenarioCreate onScenarioCreate,
    ThemeData theme,
  }) async {
    final builder = DeviceBuilder()
      ..overrideAllDevice()
      ..addScenario(
        widget: widget,
        name: goldenName,
        onCreate: onScenarioCreate,
      );

    await tester.pumpDeviceBuilder(
      builder,
      wrapper: materialAppWrapper(
        theme: theme ?? Styles.theme,
      ),
    );

    await screenMatchesGolden(tester, goldenName);
  }

  static void expectFind({
    @required Key scenarioWidgetKey,
    @required Finder matching,
    @required dynamic matcher,
  }) {
    final errText = find.descendant(
      of: find.byKey(scenarioWidgetKey),
      matching: matching,
    );
    expect(errText, matcher);
  }

  static Future<Map<String, dynamic>> loadJson(String fileName) async {
    final jsonString = await File(fileName).readAsString();
    return jsonDecode(jsonString)['data'] as Map<String, dynamic>;
  }
}
