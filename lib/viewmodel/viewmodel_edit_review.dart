import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';

class ViewModelEditReview extends ViewModelBase<ModelEditReview> {
  ViewModelEditReview(Reader reader, this.programDetail) : super(reader, const ModelEditReview());

  final ProgramDetail programDetail;

  void postReview() {
    if (!state.isValidLength)
      return;


  }

  void onTextChange(String text) {
    state = state.copyWith(text: text);
  }
}