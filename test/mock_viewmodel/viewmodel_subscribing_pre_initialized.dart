import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final kOverrideViewModelSubscribingPreInitialized =
    kPrvViewModelSubscribing.overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelSubscribing>(
    (ref) => _ViewModelSubscribingPreInitialized(ref.read));

class _ViewModelSubscribingPreInitialized extends ViewModelSubscribing {
  _ViewModelSubscribingPreInitialized(Reader reader) : super(reader);

  @override
  Future<void> initialize() async {}

  @override
  FeatureProgramState get state => const FeatureProgramState.initial();
}
