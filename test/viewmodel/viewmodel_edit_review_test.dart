import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_edit_review/screen_edit_review.dart';
import 'package:shirasu/screen_main/page_search/page_search.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';
import 'package:shirasu/viewmodel/viewmodel_search.dart';
import 'package:shirasu/viewmodel/viewmodel_edit_review.dart';

import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_search_history_empty.dart';
import '../widget_test_util/json_client.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelEditReview]
Future<void> main() async {
  final testRunner =
      _TestRunner(JsonClient.instance.mProgramDetailData.program.id);
  await testRunner.init();

  group(
      'ViewModelDetail.initialize',
      () => testRunner
        ..testNetworkDisconnected(const ModelEditReview(
          state: ReviewModelState.initializeError(
              ErrorMsgCommon.networkDisconnected()),
        ))
        ..testNetworkTimeout(const ModelEditReview(
          state: ReviewModelState.initializeError(
              ErrorMsgCommon.networkDisconnected()),
        ))
        ..testAuthExpired(const ModelEditReview(
          state: ReviewModelState.initializeError(ErrorMsgCommon.authExpired()),
        ))
        ..testUnAuth(const ModelEditReview(
          state: ReviewModelState.initializeError(ErrorMsgCommon.unAuth()),
        ))
        ..testUnknownError(const ModelEditReview(
          state: ReviewModelState.initializeError(ErrorMsgCommon.authExpired()),
        ))
        ..testUnknownError(const ModelEditReview(
          state: ReviewModelState.initializeError(ErrorMsgCommon.unknown()),
        )));
}

class _TestRunner extends ViewModelTestBase<ModelEditReview> {
  _TestRunner(String programId)
      : super(prvViewModel: kPrvVmEditReview(programId));

  // todo implement
}
