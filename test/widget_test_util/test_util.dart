import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:path/path.dart' as p;
import 'package:file/local.dart';

import 'json_client.dart';
import 'test_extension.dart';

typedef OnPostBuild = Future<void> Function(WidgetTester tester);

final kJsonClient = JsonClient();

class TestUtil {
  TestUtil._();

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
    OnPostBuild onPostBuild,
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

    if (onPostBuild != null) await onPostBuild(tester);

    await screenMatchesGolden(tester, goldenName);
  }

  static void expectFind({
    @required Key scenarioWidgetKey,
    @required Finder matching,
    @required dynamic matcher,
  }) {
    final actual = find.descendant(
      of: find.byKey(scenarioWidgetKey),
      matching: matching,
    );
    expect(actual, matcher);
  }

  static Future<Map<String, dynamic>> loadJson(String fileName) async {
    final jsonString = await File(fileName).readAsString();
    return jsonDecode(jsonString)['data'] as Map<String, dynamic>;
  }

  static String fixAssetPath(String assetName) {
    final path = p.join('resources', assetName);
    return _fixTestPath(path);
  }

  /// ref https://github.com/flutter/flutter/issues/20907
  static String _fixTestPath(String path) {
    if (const LocalFileSystem().currentDirectory.path.endsWith('test'))
      return path.replaceFirst('test/', '');
    else if (!path.startsWith('test'))
      return 'test/$path';
    else
      return path;
  }

  // todo notworks...
  static Future<void> loadFonts() async {

    final fontLoader = FontLoader('Roboto');

    final path = _fixTestPath('resources/fonts/roboto');

    Directory(path)
        .listSync()
        .where((it) => it.path.endsWith('.ttf'))
        .map((it) {
          print(it.path);
          return File(it.path)
            .readAsBytes()
            .then((bytes) => ByteData.view(Uint8List.fromList(bytes).buffer));
        })
        .forEach((it) => fontLoader.addFont(it));

    await fontLoader.load();
  }
}
