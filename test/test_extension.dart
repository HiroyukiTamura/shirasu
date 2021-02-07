import 'package:golden_toolkit/golden_toolkit.dart';

import 'test_util.dart';

extension DeviceBuilderX on DeviceBuilder {
  void overrideAllDevice() => overrideDevicesForAllScenarios(
        devices: TestUtil.allDevices,
      );
}
