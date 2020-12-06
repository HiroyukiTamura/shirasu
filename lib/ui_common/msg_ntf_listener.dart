import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/ui_common/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

class MsgNtfListener extends StatelessWidget {

  const MsgNtfListener({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) =>
      ProviderListener<SnackBarMessageNotifier>(
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
}
