import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/client/hive_pref_repository.dart';
import 'package:shirasu/main.dart';
import 'package:shirasu/router/global_app_state.dart';
import 'package:shirasu/router/screen_main_route_path.dart';
import 'package:shirasu/screen_main/page_list/subscribing_widget.dart';
import 'package:shirasu/viewmodel/model/error_msg_common.dart';
import 'package:shirasu/viewmodel/viewmodel_subscribing.dart';

import '../mock_repository/connected_connected.dart';
import '../mock_repository/connected_disconnect.dart';
import '../mock_repository/graphql_error.dart';
import '../mock_repository/graphql_timeout.dart';
import '../mock_repository/graphql_unauthorized.dart';
import '../mock_repository/hive_auth_empty.dart';
import '../mock_repository/hive_pref_empty.dart';

/// test for [ViewModelSubscribing]
void main() => group('ViewModelSubscribing', () {
      final defaultOverride = [
        kPrvHivePrefRepository
            .overrideWithValue(const HivePrefEmptyRepositoryImpl(false)),
        kPrvHiveAuthRepository.overrideWithValue(HiveEmptyAuthRepositoryImpl()),
      ];

      Future<void> testTemplate({
        @required List<Override> override,
        @required FeatureProgramState expectState,
        @required dynamic expectPath,
      }) async {
        final container = ProviderContainer(
          overrides: override + defaultOverride,
        );
        final appRouter = container.listen(kPrvAppRouterDelegate).read();
        final viewModel = container.listen(kPrvViewModelSubscribing).read();
        await viewModel.initialize();
        expect(
            // ignore: invalid_use_of_protected_member
            viewModel.state,
            expectState);
        expect(appRouter.appState.last, expectPath);
      }

      test(
        'networkDisconnected',
        () async => testTemplate(
          override: [kOverrideDisconnected],
          expectState: const FeatureProgramState.error(
              ErrorMsgCommon.networkDisconnected()),
          expectPath: isNot(isA<PathDataError>()),
        ),
      );
      test(
        'networkTimeout',
        () async => testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlTimeout,
          ],
          expectState:
              const FeatureProgramState.error(ErrorMsgCommon.networkTimeout()),
          expectPath: isNot(isA<PathDataError>()),
        ),
      );
      test(
        'AuthExpired',
        () async => testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthDetectedByTime,
          ],
          expectState:
              const FeatureProgramState.error(ErrorMsgCommon.authExpired()),
          expectPath: const GlobalRoutePath.error(true),
        ),
      );
      test(
        'UnAuth',
        () async => testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlUnAuthNotDetectedByTime,
          ],
          expectState: const FeatureProgramState.error(ErrorMsgCommon.unAuth()),
          expectPath: const GlobalRoutePath.error(true),
        ),
      );
      test(
        'UnknownError',
        () async => testTemplate(
          override: [
            kOverrideConnectedRepositoryConnectedImpl,
            kOverrideGraphqlErr,
          ],
          expectState:
              const FeatureProgramState.error(ErrorMsgCommon.unknown()),
          expectPath: isNot(isA<PathDataError>()),
        ),
      );
    });
