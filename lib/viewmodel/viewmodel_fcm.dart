import 'package:shirasu/repository/hive_pref_repository.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/screen_fcm/screen_fcm.dart';

class ViewModelFcm extends ViewModelBase<String> {
  ViewModelFcm(reader) : super(reader, '');

  HivePrefRepository get _hiveRepo => reader(kPrvHivePrefRepository);

  SnackBarMessageNotifier get _snackBarMsgNotifier =>
      reader(kPrvFcmSnackBar);

  Future<void> unsubscribeChannelFcmTopic(String id) async {
    await _hiveRepo.unsubscribeChannelFcmTopic(id);
    _commandSnack();
  }

  Future<void> unsubscribePrgFcmTopic(String id) async {
    await _hiveRepo.unsubscribePrgFcmTopic(id);
    _commandSnack();
  }

  void _commandSnack() => _snackBarMsgNotifier.notifyMsg(const SnackMsg.fcmUnsubscribe(), false);
}