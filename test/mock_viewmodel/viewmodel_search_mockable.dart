import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/screen_main/page_search/screen_search.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_search.dart';

final kOverrideViewModelSearchMock = kPrvVmSearch.overrideWithProvider(_kPrvViewModel);

final _kPrvViewModel = StateNotifierProvider.autoDispose<ViewModelSearch>(
        (ref) => _ViewModelSearchMock(ref.read));

class _ViewModelSearchMock extends ViewModelSearch {
  _ViewModelSearchMock(Reader reader) : super(reader);

  static AutoDisposeStateNotifierProvider<ViewModelSearch> createProvider() =>
      StateNotifierProvider.autoDispose<ViewModelSearch>(
              (ref) => _ViewModelSearchMock(ref.read));
}