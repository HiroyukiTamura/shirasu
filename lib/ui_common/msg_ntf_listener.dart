import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/util.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

part 'msg_ntf_listener.g.dart';

class SnackData {
  const SnackData(this.snackMsg, this.margin);

  final SnackMsg snackMsg;
  final EdgeInsets margin;
}

@swidget
Widget snackEventListener({
  @required Widget child,
  @required ProviderBase<Object, SnackData> provider,
}) =>
    ProviderListener<SnackData>(
      onChange: (context, data) {
        if (data.snackMsg == null) return;

        final text = Util.convert2SnackText(data.snackMsg);
        final snackBar = SnackBar(
          content: Text(text),
          margin: data.margin,
          behavior: SnackBarBehavior.floating,
        );
        Scaffold.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      },
      provider: provider,
      child: child,
    );
