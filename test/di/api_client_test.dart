import 'package:shirasu/di/api_client.dart';
import 'package:test/test.dart';

void main() {
  test('test for GraphQl API client', () async {
    final result = await new ApiClient().queryFeaturedProgramsList();

    expect(result, 1);
  });
}
