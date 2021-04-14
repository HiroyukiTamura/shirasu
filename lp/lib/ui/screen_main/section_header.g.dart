// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_header.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key? key, required this.screenHeight}) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext _context) =>
      sectionHeader(_context, screenHeight: screenHeight);
}

class _RowStoreBadge extends StatelessWidget {
  const _RowStoreBadge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _rowStoreBadge();
}

class _StoreBadge extends StatelessWidget {
  const _StoreBadge({Key? key, required this.url, required this.child})
      : super(key: key);

  final String url;

  final Widget child;

  @override
  Widget build(BuildContext _context) => _storeBadge(url: url, child: child);
}
