import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/resource/strings.dart';
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

        final snackBar = SnackBar(
          content: Text(data.snackMsg.value),
          action: data.snackMsg.maybeWhen(
            orElse: () => null,
            fcmPermissionDenied: () => SnackBarAction(
              label: Strings.SNACK_ACTION_FCM_PERMISSION,
              onPressed: () async {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                await AppSettings.openNotificationSettings();
              },
            ),
          ),
          margin: data.margin,
          behavior: SnackBarBehavior.floating,
        );
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
      },
      provider: provider,
      child: child,
    );
