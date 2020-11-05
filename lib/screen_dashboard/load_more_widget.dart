import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loadmore/loadmore.dart';

class LoadMoreWidget extends LoadMoreDelegate {

  const LoadMoreWidget();

  @override
  Widget buildChild(LoadMoreStatus status,
      {builder = DefaultLoadMoreTextBuilder.chinese}) {
    switch (status) {
      case LoadMoreStatus.idle:
      case LoadMoreStatus.loading:
        return const SizedBox(
          height: 48,
          child: Center(child: CircularProgressIndicator()),
        );
      default:
        return const SizedBox();
    }
  }
}
