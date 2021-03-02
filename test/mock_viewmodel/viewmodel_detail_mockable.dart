import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';


class ViewModelDetailMockable extends ViewModelDetail {
  ViewModelDetailMockable(Reader reader, this.initial, String id) : super(reader, id);

  final ModelDetail initial;

  @override
  Future<void> initialize() async => state = initial;


  static AutoDisposeStateNotifierProvider<ViewModelDetail> createProvider(
      ModelDetail specState, String id) =>
      StateNotifierProvider.autoDispose<ViewModelDetail>(
              (ref) => ViewModelDetailMockable(ref.read, specState, id));
}