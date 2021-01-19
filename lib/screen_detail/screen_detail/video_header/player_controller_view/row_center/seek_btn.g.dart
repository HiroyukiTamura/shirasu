// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seek_btn.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SeekBtn extends StatelessWidget {
  const SeekBtn({Key key, @required this.lr, @required this.onTap})
      : super(key: key);

  final Lr lr;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      seekBtn(_context, lr: lr, onTap: onTap);
}

class SeekIcon<T> extends HookWidget {
  const SeekIcon({Key key, @required this.lr, @required this.provider})
      : super(key: key);

  final Lr lr;

  final ProviderBase<Object, T> provider;

  @override
  Widget build(BuildContext _context) =>
      seekIcon<T>(lr: lr, provider: provider);
}
