import 'package:shirasu/viewmodel/viewmodel_base.dart';

mixin MockViewModelBase<T> on ViewModelBase<T> {

  T get specState;

  @override
  Future<void> initialize() async {}

  @override
  T get state => specState ?? super.state;
}