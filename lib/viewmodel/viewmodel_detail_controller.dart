import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

part 'viewmodel_detail_controller.freezed.dart';

class ViewModelDetailController extends StateNotifier<DetailControllerModel> {
  ViewModelDetailController() : super(const DetailControllerModel(expand: false));

  void expand(String id) => state = DetailControllerModel(id: id, expand: true);

  bool collapse() {
    if (!state.expand)
      return true;

    state = state.copyWith(expand: false);
    return false;
  }
}

@freezed
abstract class DetailControllerModel with _$DetailControllerModel {
  const factory DetailControllerModel({
    String id,
    @required bool expand,
  }) = _DetailControllerModel;
}