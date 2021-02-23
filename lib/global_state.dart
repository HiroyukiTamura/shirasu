import 'package:synchronized/synchronized.dart';


class GlobalState {

  GlobalState._();

  static final instance = GlobalState._();

  static final Lock isInFullScreenOperation = Lock();
}