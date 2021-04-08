import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shirasu/screen_main/page_search/screen_search.dart';
import 'package:shirasu/viewmodel/message_notifier.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/model/model_search.dart';
import 'package:shirasu/viewmodel/viewmodel_search.dart';
import 'package:dartx/dartx.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/dio_timeout.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_search_history_empty.dart';
import '../widget_test_util/test_name_common.dart';
import 'viewmodel_test_base.dart';

/// test for [ViewModelSearch]
Future<void> main() async {
  final testRunner = _TestRunner();
  await testRunner.init();

  group('ViewModelSearch.onSubmit', () {
    test(TestNameCommon.ERR_NETWORK_DISCONNECTED,
        () async => testRunner.networkErrorOnSubmit());
    test(TestNameCommon.ERR_NETWORK_TIMEOUT,
        () async => testRunner.networkAlgoliaTimeoutOnSubmit());
    test('${TestNameCommon.ERR_NETWORK_TIMEOUT}OnGraphQL',
        () async => testRunner.networkAlgoliaTimeoutGraphqlOnSubmit());
  });

  group('ViewModelSearch.onTextChange', () {
    test(TestNameCommon.ERR_UNKNOWN,
        () async => testRunner.errorOnTextChange());
  });
}

class _TestRunner extends ViewModelTestBase<ModelSearch> {
  _TestRunner() : super(prvViewModel: kPrvVmSearch);

  static const _DUMMY_QUERY = 'DUMMY_QUERY';

  final _overrideTextController = kPrvSearchTextController
      .overrideWithValue(TextEditingController.fromValue(const TextEditingValue(
    text: _DUMMY_QUERY,
  )));

  static ModelSearch _errModel(ErrorMsgCommon msg) => ModelSearch(
        searchResult: SearchResult.error(msg),
      );

  Future<void> testTemplate({
    @required Future<void> Function(ViewModelSearch viewModel) predicate,
    @required ModelSearch expectedModel,
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
    final viewModel = container.listen(kPrvVmSearch).read();
    await predicate(viewModel);
    await Future.delayed(delay);
    expect(container.listen(kPrvVmSearch.state).read(), expectedModel);
  }

  Future<void> networkErrorOnSubmit() async => testTemplate(
        override: [
          kOverrideDisconnected,
          kOverrideHiveSearchEmpty,
          _overrideTextController
        ],
        expectedModel: _errModel(const ErrorMsgCommon.networkDisconnected()),
        predicate: (viewModel) async => viewModel.submit(false),
      );

  Future<void> networkAlgoliaTimeoutOnSubmit() async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideDioTimeout,
          kOverrideHiveSearchEmpty,
          _overrideTextController
        ],
        expectedModel: _errModel(const ErrorMsgCommon.networkTimeout()),
        predicate: (viewModel) async => viewModel.submit(false),
      );

  Future<void> networkAlgoliaTimeoutGraphqlOnSubmit() async => testTemplate(
        override: [
          kOverrideConnectedRepositoryConnectedImpl,
          kOverrideGraphqlTimeout,
          kOverrideHiveSearchEmpty,
          _overrideTextController
        ],
        delay: 10.seconds,
        expectedModel: _errModel(const ErrorMsgCommon.networkTimeout()),
        predicate: (viewModel) async => viewModel.submit(false),
      );

  Future<void> errorOnTextChange() async => testTemplate(
        override: [
          kOverrideDisconnected,
          kOverrideHiveSearchEmpty,
          _overrideTextController
        ],
        expectedModel: ModelSearch(
          textLen: _DUMMY_QUERY.length,
        ),
        predicate: (viewModel) async => viewModel.onTextChange(),
      );
}
