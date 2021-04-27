import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/screen_edit_review/screen_edit_review.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';
import 'package:shirasu/viewmodel/viewmodel_edit_review.dart';

class ViewModelEditReviewMock extends ViewModelEditReview {
  ViewModelEditReviewMock(Reader reader, String programId, this.initial) : super(reader, programId);

  final ModelEditReview initial;

  @override
  Future<void> initialize() async => state = initial;

  static ProviderOverride createOverride(ModelEditReview specState, String programId) {
    final provider = StateNotifierProvider.autoDispose<ViewModelEditReview>(
            (ref) => ViewModelEditReviewMock(ref.read, programId, specState));
    return kPrvVmEditReview(programId).overrideWithProvider(provider);
  }
}
