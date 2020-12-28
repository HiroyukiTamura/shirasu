import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'msg_ntf_listener.g.dart';

@swidget
Widget msgNtfListener({@required Widget child}) => ProviderListener<SnackBarMessageNotifier>(
    onChange: (context, viewModel) {
      if (viewModel.state == null) return;

      final text = Util.convert2SnackText(viewModel.state);
      final snackBar = SnackBar(content: Text(text));
      Scaffold.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
      viewModel.clear();
    },
    provider: snackBarMsgProvider,
    child: child,
  );
