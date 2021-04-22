// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_review.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class PageReview extends StatelessWidget {
  const PageReview(
      {Key key, @required this.onClearClicked, @required this.programData})
      : super(key: key);

  final dynamic Function(BuildContext) onClearClicked;

  final ProgramDetailData programData;

  @override
  Widget build(BuildContext _context) =>
      pageReview(onClearClicked: onClearClicked, programData: programData);
}

class _WriteReviewBtn extends StatelessWidget {
  const _WriteReviewBtn(
      {Key key,
      @required this.viewerIconUrl,
      @required this.programId,
      @required this.onTap})
      : super(key: key);

  final String viewerIconUrl;

  final String programId;

  final void Function(BuildContext) onTap;

  @override
  Widget build(BuildContext _context) => _writeReviewBtn(_context,
      viewerIconUrl: viewerIconUrl, programId: programId, onTap: onTap);
}

class _NoWidget extends StatelessWidget {
  const _NoWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext _context) => _noWidget();
}

class _ReviewItem extends StatelessWidget {
  const _ReviewItem({Key key, @required this.item}) : super(key: key);

  final ReviewsItem item;

  @override
  Widget build(BuildContext _context) => _reviewItem(item: item);
}
