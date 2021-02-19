import 'package:hooks_riverpod/all.dart';
import 'package:riverpod/src/framework.dart';
import 'package:shirasu/screen_channel/screen_channel.dart';
import 'package:shirasu/viewmodel/model/model_channel.dart';
import 'package:shirasu/viewmodel/model/model_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_base.dart';
import 'package:shirasu/viewmodel/viewmodel_channel.dart';
import 'package:shirasu/viewmodel/viewmodel_detail.dart';
import 'package:shirasu/viewmodel/viewmodel_watch_history.dart';

import '../viewmodel/mock_viewmodel_base.dart';

class ViewModelDetailMockable extends ViewModelDetail {
  ViewModelDetailMockable(Reader reader, this.initial, String id) : super(reader, id);

  final ModelDetail initial;

  @override
  Future<void> initialize() async => state = initial;


  static AutoDisposeStateNotifierProvider<ViewModelDetail> createProvider(
      ModelDetail specState, String id) =>
      StateNotifierProvider.autoDispose<ViewModelDetail>(
              (ref) => ViewModelDetailMockable(ref.read, specState, id));
}