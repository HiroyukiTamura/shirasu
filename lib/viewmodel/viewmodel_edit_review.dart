import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/repository/auth_client_interceptor.dart';
import 'package:shirasu/repository/graphql_repository.dart';
import 'package:shirasu/screen_edit_review/screen_edit_review.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';
import 'package:dartx/dartx.dart';

class ViewModelEditReview extends ViewModelBase<ModelEditReview> {
  ViewModelEditReview(Reader reader, this.programId)
      : super(reader, const ModelEditReview());

  final String programId;

  SnackBarMessageNotifier get _snackBarMsgNotifier =>
      reader(kPrvSnackBarEditReview);

  StateController<bool> get _popCommandController => reader(kPrvPopCommand);

  /// only invoke from constructor
  @protected
  @override
  Future<void> initialize() async {
    final result = await logger
        .guardFuture(() async => kAuthOperationLock.synchronized(() async {
              await connectivityRepository.ensureNotDisconnect();
              await interceptor.refreshAuthTokenIfNeeded();
              return graphQlRepository
                  .queryProgramDetail(programId)
                  .timeout(GraphQlRepository.TIMEOUT);
            }));
    if (mounted)
      await result.when(
        success: (data) async {
          state = state.copyWith(
            state: const ReviewModelState.initialized(),
            programData: data.program,
            text: data.program.myReview?.body,
          );
        },
        failure: (e) {
          state = state.copyWith(
            state: ReviewModelState.initializeError(toErrMsg(e)),
          );
        },
      );
  }

  Future<void> postReview() async {
    if (!state.isValidLength ||
        state.state != const ReviewModelState.initialized()) return;

    final text = state.text;

    state = state.copyWith(
      state: const ReviewModelState.loading(),
    );

    final result = await logger
        .guardFuture(() async => kAuthOperationLock.synchronized(() async {
              await connectivityRepository.ensureNotDisconnect();
              await interceptor.refreshAuthTokenIfNeeded();
              return graphQlRepository
                  .postReview(programId: programId, text: text)
                  .timeout(GraphQlRepository.TIMEOUT);
            }));

    if (mounted)
      await result.when(
          success: (data) async {
            state = state.copyWith(state: const ReviewModelState.success());
            await Future.delayed(1.seconds);
            _popCommandController.state = true;
          },
          failure: (e) {
            state = state.copyWith(state: const ReviewModelState.initialized());
            _snackBarMsgNotifier.notifyMsg(toNetworkSnack(e), false);
          });
  }

  void onTextChange(String text) => state = state.copyWith(text: text);
}
