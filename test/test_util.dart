import 'package:golden_toolkit/golden_toolkit.dart';

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
}
