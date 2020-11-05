import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:shirasu/di/api_client.dart';

void main() {

  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() {
    HttpOverrides.global = null;
  });

  testWidgets('test for GraphQl API client', (WidgetTester tester) async {
    await tester.runAsync(() async {
      final result = await ApiClient(Client()).queryFeaturedProgramsList();
      expect(result, 1);
    });
  });
}
