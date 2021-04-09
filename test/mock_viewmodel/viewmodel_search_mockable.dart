import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/screen_main/page_search/screen_search.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';
import 'package:shirasu/viewmodel/viewmodel_search.dart';

class ViewModelSearchMock extends ViewModelSearch {
  ViewModelSearchMock(Reader reader, this._specState) : super(reader);

  final ModelSearch _specState;

  @override
  ModelSearch get state => _specState;

  static ProviderOverride createOverride(ModelSearch specState) {
    final provider = StateNotifierProvider.autoDispose<ViewModelSearch>(
        (ref) => ViewModelSearchMock(ref.read, specState));
    return kPrvVmSearch.overrideWithProvider(provider);
  }
}
