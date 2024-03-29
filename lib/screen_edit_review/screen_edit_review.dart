import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:shirasu/resource/dimens.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/ui_common/center_circle_progress.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/ui_common/msg_ntf_listener.dart';
import 'package:shirasu/ui_common/page_error.dart';
import 'package:shirasu/util/types.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';
import 'package:shirasu/viewmodel/viewmodel_edit_review.dart';
import 'package:shirasu/gen/assets.gen.dart';

part 'screen_edit_review.g.dart';

@visibleForTesting
final kPrvVmEditReview = StateNotifierProvider.family
    .autoDispose<ViewModelEditReview, String>(
        (ref, programId) => ViewModelEditReview(ref.read, programId));

/// must via access from [ViewModelEditReview]
final kPrvSnackBarEditReview =
    StateNotifierProvider.autoDispose<SnackBarMessageNotifier>(
        (ref) => SnackBarMessageNotifier());

final _kPrvSnackMsg = Provider.autoDispose<SnackData>((ref) {
  final snackMsgEvent = ref.watch(kPrvSnackBarEditReview.state);
  return SnackData(snackMsgEvent.snackMsg, Dimens.SNACK_BAR_DEFAULT_MARGIN);
});

/// must via access from [ViewModelEditReview]
final kPrvPopCommand = Provider.autoDispose<StateController<bool>>(
    (ref) => StateController(false));

final _kPrvPopCommand =
    Provider.autoDispose<bool>((ref) => ref.watch(kPrvPopCommand).state);

class ScreenEditReview extends HookWidget {
  const ScreenEditReview({@required this.programId, Key key}) : super(key: key);

  final String programId;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text(Strings.APP_BAR_EDIT_REVIEW),
          ),
          floatingActionButton:
              useProvider(kPrvVmEditReview(programId).state.select(
                        (it) => it.showFab,
                      ))
                  ? _Fab(
                      onTap: _onTapFab,
                      programId: programId,
                    )
                  : null,
          body: SnackEventListener(
            provider: _kPrvSnackMsg,
            child: ProviderListener(
              provider: _kPrvPopCommand,
              onChange: _onPopCommand,
              child: _Body(
                programId: programId,
                onChanged: _onTextFiledChange,
              ),
            ),
          ),
        ),
      );

  void _onTapFab(BuildContext context) =>
      context.read(kPrvVmEditReview(programId)).postReview();

  void _onTextFiledChange(BuildContext context, String text) =>
      context.read(kPrvVmEditReview(programId)).onTextChange(text);

  void _onPopCommand(BuildContext context, bool pop) {
    if (pop) Navigator.pop(context);
  }
}

@hwidget
Widget _body({
  @required String programId,
  @required Function(BuildContext context, String text) onChanged,
}) =>
    useProvider(
            kPrvVmEditReview(programId).state.select((it) => it.reviewUiState))
        .when(
      preInitialized: () => const CenterCircleProgress(),
      initializeError: (err) => PageError(text: err.value),
      initialized: (program) => SingleChildScrollView(
        child: Column(
          children: [
            MovieListBigItem(program: program),
            const SizedBox(height: 24),
            _TextField(
              onChanged: onChanged,
              programId: programId,
              initialValue: program.myReview?.body,
            ),
          ],
        ),
      ),
    );

@hwidget
Widget _fab(
  BuildContext context, {
  @required String programId,
  @required OnTap onTap,
}) =>
    useProvider(kPrvVmEditReview(programId).state.select((it) => it.state))
        .maybeWhen(
      success: () => FloatingActionButton(
        onPressed: null,
        child: Lottie.asset(
          Assets.lottie.pausePlay,
          // todo fix animation time
        ),
      ),
      loading: () => Stack(
        children: const [
          CenterCircleProgress(), //todo sizing
          Center(
            child: FloatingActionButton(
              onPressed: null,
              child: SizedBox.shrink(),
            ),
          ),
        ],
      ),
      initialized: () => FloatingActionButton(
        onPressed: () => onTap(context),
        child: const Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),
      orElse: () => const SizedBox.shrink(),
    );

@hwidget
Widget _textField(
  BuildContext context, {
  @required String programId,
  @required Function(BuildContext context, String text) onChanged,
  String initialValue,
}) {
  final border = OutlineInputBorder(
    borderSide: BorderSide(
      color: Theme.of(context).primaryColor,
      width: 2,
    ),
  );

  return Padding(
    padding: const EdgeInsets.all(16),
    child: TextField(
      controller: useTextEditingController(text: initialValue),
      autofocus: true,
      keyboardType: TextInputType.multiline,
      maxLines: null,
      maxLength: ModelEditReview.TEXT_LEN_MAX,
      decoration: InputDecoration(
        hintText: Strings.EDIT_REVIEW_HINT,
        hintStyle: const TextStyle(
          color: Styles.COLOR_TEXT_SUB,
        ),
        border: border,
        errorBorder: border,
        focusedErrorBorder: border,
        // default counter style
        errorStyle: Theme.of(context).textTheme.caption,
        errorText: useProvider(kPrvVmEditReview(programId)
                .state
                .select((it) => it.isValidLength))
            ? null
            : Strings.textLengthValidation(
                ModelEditReview.TEXT_LEN_MIN, ModelEditReview.TEXT_LEN_MAX),
      ),
      onChanged: (text) => onChanged(context, text),
    ),
  );
}
