import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_setting.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final kOverrideViewModelSettingMocked =
    kPrvViewModelSetting.overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelSetting>(
    (ref) => _ViewModel(ref.read));

class _ViewModel extends ViewModelSetting {
  _ViewModel(Reader reader) : super(reader);

  @override
  Future<void> initialize() async {}
}
