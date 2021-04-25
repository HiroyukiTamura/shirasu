// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_review.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class _ReviewListView extends StatelessWidget {
  const _ReviewListView(
      {Key key,
      @required this.program,
      @required this.showMyReview,
      @required this.onTapInputReviewBtn,
      @required this.onTapReviewItem})
      : super(key: key);

  final ProgramDetail program;

  final bool showMyReview;

  final void Function(BuildContext) onTapInputReviewBtn;

  final void Function(BuildContext, BaseReview) onTapReviewItem;

  @override
  Widget build(BuildContext _context) => _reviewListView(_context,
      program: program,
      showMyReview: showMyReview,
      onTapInputReviewBtn: onTapInputReviewBtn,
      onTapReviewItem: onTapReviewItem);
}

class _ItemInputReview extends StatelessWidget {
  const _ItemInputReview(
      {Key key, @required this.viewerIconUrl, @required this.onTap})
      : super(key: key);

  final String viewerIconUrl;

  final void Function(BuildContext) onTap;

  @override
  Widget build(BuildContext _context) =>
      _itemInputReview(_context, viewerIconUrl: viewerIconUrl, onTap: onTap);
}

class _NoWidget extends StatelessWidget {
  const _NoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _noWidget();
}

class _ReviewItem extends StatelessWidget {
  const _ReviewItem({Key key, @required this.item, @required this.onTap})
      : super(key: key);

  final BaseReview item;

  final void Function() onTap;

  @override
  Widget build(BuildContext _context) =>
      _reviewItem(_context, item: item, onTap: onTap);
}

class _ReviewStateLabel extends StatelessWidget {
  const _ReviewStateLabel({Key key, @required this.state}) : super(key: key);

  final ReviewState state;

  @override
  Widget build(BuildContext _context) =>
      _reviewStateLabel(_context, state: state);
}

class _UserIcon extends StatelessWidget {
  const _UserIcon({Key key, @required this.iconUrl}) : super(key: key);

  final String iconUrl;

  @override
  Widget build(BuildContext _context) => _userIcon(iconUrl: iconUrl);
}
