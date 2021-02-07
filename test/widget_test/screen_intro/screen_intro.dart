import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:shirasu/screen_intro/screen_intro.dart';

void main() {
  group('GoldenBuilder', () {
    // testGoldens('Column layout example', (tester) async {
    //   await tester.pumpWidgetBuilder(
    //     Center(
    //         child: (GoldenBuilder.column()
    //           ..addScenario('red',
    //               Container(height: 50, width: 50, color: Colors.red))
    //           ..addScenario('green',
    //               Container(height: 50, width: 50, color: Colors.green))
    //           ..addScenario('blue',
    //               Container(height: 50, width: 50, color: Colors.blue)))
    //             .build()),
    //     surfaceSize: const Size(100, 300),
    //   );
    //   await screenMatchesGolden(tester, 'golden_builder_column',
    //       autoHeight: true);
    // });
    //
    // testGoldens('Grid layout example', (tester) async {
    //   await tester.pumpWidgetBuilder(
    //     Center(
    //         child: (GoldenBuilder.grid(columns: 2, widthToHeightRatio: 1)
    //           ..addScenario('red',
    //               Container(height: 50, width: 50, color: Colors.red))
    //           ..addScenario('green',
    //               Container(height: 50, width: 50, color: Colors.green))
    //           ..addScenario('blue',
    //               Container(height: 50, width: 50, color: Colors.blue)))
    //             .build()),
    //     surfaceSize: const Size(300, 300),
    //   );
    //   await screenMatchesGolden(tester, 'golden_builder_grid',
    //       autoHeight: true);
    // });
    //
    // testGoldens('TextScaleScenario', (tester) async {
    //   await tester.pumpWidgetBuilder(
    //     Center(
    //         child: (GoldenBuilder.column()
    //           ..addTextScaleScenario('small', const Text('text'),
    //               textScaleFactor: 1.0)
    //           ..addTextScaleScenario('medium', const Text('text'),
    //               textScaleFactor: 2.0)
    //           ..addTextScaleScenario('large', const Text('text'),
    //               textScaleFactor: 3.2))
    //             .build()),
    //     surfaceSize: const Size(100, 300),
    //   );
    //   await screenMatchesGolden(tester, 'golden_builder_textscale',
    //       autoHeight: true);
    // });

    testGoldens('Weather Card - Accessibility', (tester) async {
      print('Weather Card - Accessibility');
      final widget = SizedBox(width: 24, height: 24, child: Placeholder(),);
      final builder = GoldenBuilder.column()
        ..addScenario('Default font size', widget)
        ..addTextScaleScenario('Large font size', widget, textScaleFactor: 2.0)
        ..addTextScaleScenario('Largest font', widget, textScaleFactor: 3.2);
      await tester.pumpWidgetBuilder(builder.build());
      await screenMatchesGolden(tester, 'weather_accessibility');
    });
  });
}