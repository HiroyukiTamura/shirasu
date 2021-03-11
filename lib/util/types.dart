import 'package:flutter/cupertino.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';

typedef OnTapItem = void Function(BuildContext context, String prgId);

typedef OnTap = void Function(BuildContext context);

typedef SnackCallback = void Function(SnackMsg msg);