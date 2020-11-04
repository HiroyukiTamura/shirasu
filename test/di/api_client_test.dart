import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/di/api_client.dart';

void main() {

  TestWidgetsFlutterBinding.ensureInitialized();

  test('test for GraphQl API client', () async {

    final result = await ApiClient().queryFeaturedProgramsList();

    expect(result, 1);
  });
}
