// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_feature.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class SectionFeature extends StatelessWidget {
  const SectionFeature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => sectionFeature(_context);
}

class _FeatureItem extends StatelessWidget {
  const _FeatureItem(
      {Key? key,
      required this.heading,
      required this.description,
      required this.illustration,
      required this.reverse,
      this.trailing})
      : super(key: key);

  final String heading;

  final String description;

  final Widget illustration;

  final bool reverse;

  final Widget? trailing;

  @override
  Widget build(BuildContext _context) => _featureItem(_context,
      heading: heading,
      description: description,
      illustration: illustration,
      reverse: reverse,
      trailing: trailing);
}
