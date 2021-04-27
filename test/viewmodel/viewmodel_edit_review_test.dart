@Timeout(Duration(minutes: 1))

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_edit_review/screen_edit_review.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_edit_review.dart';
import 'package:shirasu/viewmodel/viewmodel_edit_review.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_viewmodel/viewmodel_edit_review_mockable.dart';
import '../widget_test_util/json_client.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelEditReview]
Future<void> main() async {
  final testRunner =
      _TestRunner(JsonClient.instance.mProgramDetailData.program.id);
  await testRunner.init();

  /// auth error => show only error message. not redirect to error screen
  group(
      'ViewModelEditReview.initialize',
      () => testRunner
        ..testNetworkDisconnected(const ModelEditReview(
          state: ReviewModelState.initializeError(
              ErrorMsgCommon.networkDisconnected()),
        ))
        ..testNetworkTimeout(const ModelEditReview(
          state: ReviewModelState.initializeError(
              ErrorMsgCommon.networkTimeout()),
        ))
        ..testUnknownError(const ModelEditReview(
          state: ReviewModelState.initializeError(ErrorMsgCommon.unknown()),
        )));

  group('ViewModelDetail.postReview', () {
    test('postInvalidString',
            () async => testRunner.postEmptyString());
  });
}

class _TestRunner extends ViewModelTestBase<ModelEditReview> {
  _TestRunner(this.programId)
      : super(prvViewModel: kPrvVmEditReview(programId));

  final String programId;

  Future<void> testTemplate({
    @required Future<void> Function(ViewModelEditReview viewModel) predicate,
    @required ModelEditReview expectedModel,
    List<Override> override = const [],
    Duration delay = const Duration(seconds: 1),
  }) async {
    final container = ProviderContainer(
      overrides: [
        ...override,
        ...defaultOverride,
        kOverrideEmptyHiveAuthRepository
      ],
    );
    final viewModel = container.listen(kPrvVmEditReview(programId)).read();
    await predicate(viewModel);
    await Future.delayed(delay);
    expect(container.listen(kPrvVmEditReview(programId).state).read(),
        expectedModel);
  }

  Future<void> postEmptyString() async {
    final initialModel = ModelEditReview(
      state: const ReviewModelState.initialized(),
      programData: JsonClient.instance.mProgramDetailData.program,
    );
    return testTemplate(
      override: [
        kOverrideConnectedRepositoryConnectedImpl,
        kOverrideEmptyHiveAuthRepository,
        ViewModelEditReviewMock.createOverride(initialModel, programId),
      ],
      expectedModel: initialModel,
      predicate: (viewModel) async => viewModel.postReview(),
    );
  }
}
