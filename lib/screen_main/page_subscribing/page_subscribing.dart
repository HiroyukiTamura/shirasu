import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

final _viewmodelProvider =
    ChangeNotifierProvider.autoDispose<ViewModelSubscribing>(
        (_) => ViewModelSubscribing());

class PageSubscribingInMainScreen extends StatefulWidget {
  const PageSubscribingInMainScreen({
    Key key,
    @required this.appState,
  }) : super(key: key);

  final GlobalAppState appState;

  @override
  _PageSubscribingInMainScreenState createState() =>
      _PageSubscribingInMainScreenState();
}

class _PageSubscribingInMainScreenState
    extends State<PageSubscribingInMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('PageSubscribing'),
    );
  }
}
