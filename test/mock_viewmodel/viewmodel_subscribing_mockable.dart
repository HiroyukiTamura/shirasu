import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final kOverrideViewModelSubscribingMocked =
    kPrvViewModelSubscribing.overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelSubscribing>(
    (ref) => _ViewModelSubscribing(ref.read));

class _ViewModelSubscribing extends ViewModelSubscribing {
  _ViewModelSubscribing(Reader reader) : super(reader);

  @override
  Future<void> initialize() async {}
}
