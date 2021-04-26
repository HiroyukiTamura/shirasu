import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';

part 'model_edit_review.freezed.dart';

@freezed
abstract class ModelEditReview with _$ModelEditReview {
  @protected
  const factory ModelEditReview({
    @Default(ReviewModelState.preInitialized()) ReviewModelState state,
    ProgramDetail programData,
    String text,
  }) = _ModelEditReview;

  const ModelEditReview._();

  static const TEXT_LEN_MIN = 30;
  static const TEXT_LEN_MAX = 4000;

  bool get isValidLength =>
      (text?.length ?? 0).between(TEXT_LEN_MIN, TEXT_LEN_MAX);

  ReviewUiState get reviewUiState => state.maybeWhen(
        preInitialized: () => const ReviewUiState.preInitialized(),
        initializeError: (errMsg) => ReviewUiState.initializeError(errMsg),
        orElse: () => ReviewUiState.initialized(programData),
      );

  bool get showFab {
    final editable = state.maybeWhen(
      initialized: () => true,
      loading: () => true,
      success: () => true,
      orElse: () => false,
    );
    return editable && isValidLength;
  }
}

@freezed
abstract class ReviewModelState with _$ReviewModelState {
  const factory ReviewModelState.preInitialized() = _ReviewPreInitialized;

  const factory ReviewModelState.initialized() = _ReviewInitialized;

  const factory ReviewModelState.initializeError(ErrorMsgCommon errMsg) =
      _ReviewInitializeError;

  const factory ReviewModelState.loading() = _ReviewStateLoading;

  const factory ReviewModelState.success() = ReviewStateSuccess;
}

@freezed
abstract class ReviewUiState with _$ReviewUiState {
  const factory ReviewUiState.preInitialized() = _UiPreInitialized;

  const factory ReviewUiState.initialized(ProgramDetail programData) =
      _UiInitialized;

  const factory ReviewUiState.initializeError(ErrorMsgCommon errMsg) =
      _UiInitializeError;
}
