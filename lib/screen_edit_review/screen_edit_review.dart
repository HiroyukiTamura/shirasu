import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/model/graphql/detail_program_data.dart';
import 'package:shirasu/resource/strings.dart';
import 'package:shirasu/resource/styles.dart';
import 'package:shirasu/ui_common/movie_list_item.dart';
import 'package:shirasu/util/types.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';
import 'package:shirasu/viewmodel/viewmodel_edit_review.dart';

part 'screen_edit_review.g.dart';

final kPrvVmEditReview = StateNotifierProvider.family
    .autoDispose<ViewModelEditReview, ProgramDetail>(
        (ref, program) => ViewModelEditReview(ref.read, program));

class ScreenEditReview extends HookWidget {
  const ScreenEditReview({@required this.program, Key key}) : super(key: key);

  final ProgramDetail program;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('レビュー記入'),
          ),
          floatingActionButton: useProvider(kPrvVmEditReview(program)
                  .state
                  .select((it) => it.isValidLength))
              ? _Fab(onTap: _onTapFab, program: program)
              : null,
          body: SingleChildScrollView(
            child: Column(
              children: [
                MovieListBigItem(program: program),
                const SizedBox(height: 24),
                _TextField(
                  program: program,
                  onChanged: _onTextFiledChange,
                ),
              ],
            ),
          ),
        ),
      );

  void _onTapFab(BuildContext context) =>
      context.read(kPrvVmEditReview(program)).postReview();

  void _onTextFiledChange(BuildContext context, String text) =>
      context.read(kPrvVmEditReview(program)).onTextChange(text);
}

@swidget
Widget _fab(
  BuildContext context, {
  @required ProgramDetail program,
  @required OnTap onTap,
}) =>
    FloatingActionButton(
      onPressed: () => onTap(context),
      child: const Icon(
        Icons.send,
        color: Colors.white,
      ),
    );

@swidget
Widget _textField(
  BuildContext context, {
  @required ProgramDetail program,
  @required Function(BuildContext context, String text) onChanged,
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
        errorText: useProvider(kPrvVmEditReview(program)
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
