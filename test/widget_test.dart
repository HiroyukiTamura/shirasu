import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_pref_repository.dart';

import 'package:shirasu/screen_intro/screen_intro.dart';

import 'mock_repository/hive_auth_empty.dart';

void main() {
  testGoldens('ScreenIntro - Portrait', (tester) async {
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [
        Device.phone,
        Device.iphone11,
        Device.tabletPortrait,
        Device.tabletLandscape,
      ])
      ..addScenario(
        widget: ProviderScope(
          overrides: [
            kPrvHivePrefRepository.overrideWithProvider(Provider((ref) => HiveEmptyPrefRepositoryImpl()))
          ],
          child: ScreenIntro(),
        ),
        name: 'screen_intro',
      );

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'screen_intro_portrait');
  });
}
