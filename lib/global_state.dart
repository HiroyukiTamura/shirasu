class GlobalState {

  GlobalState._();

  static final instance = GlobalState._();

  bool isInFullScreenOperation = false;
}