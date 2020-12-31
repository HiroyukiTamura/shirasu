import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/all.dart';

part 'viewmodel_detail_controller.freezed.dart';

class ViewModelDetailController extends StateNotifier<DetailControllerModel> {
  ViewModelDetailController() : super(DetailControllerModel(id: null, expand: false));

  void expand(String id) => state = DetailControllerModel(id: id, expand: true);
}

@freezed
abstract class DetailControllerModel with _$DetailControllerModel {
  const factory DetailControllerModel({
    @required String id,
    @required bool expand,
  }) = _DetailControllerModel;
}