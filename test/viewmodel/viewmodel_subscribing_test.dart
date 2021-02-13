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

      test('networkDisconnected', () async {
        final container = ProviderContainer(
          overrides: [kOverrideDisconnected] + defaultOverride,
        );
        final appRouter = container.listen(kPrvAppRouterDelegate).read();
        final viewModel = container.listen(kPrvViewModelSubscribing).read();
        await viewModel.initialize();
        expect(
            // ignore: invalid_use_of_protected_member
            viewModel.state,
            const FeatureProgramState.error(
                ErrorMsgCommon.networkDisconnected()));
        expect(appRouter.appState.last, isNot(const GlobalRoutePath.auth()));
      });
      test('networkTimeout', () async {
        final container = ProviderContainer(
          overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kOverrideGraphqlTimeout,
              ] +
              defaultOverride,
        );
        final appRouter = container.listen(kPrvAppRouterDelegate).read();
        final viewModel = container.listen(kPrvViewModelSubscribing).read();
        await viewModel.initialize();
        expect(
            // ignore: invalid_use_of_protected_member
            viewModel.state,
            const FeatureProgramState.error(ErrorMsgCommon.networkTimeout()));
        expect(appRouter.appState.last, isNot(const GlobalRoutePath.auth()));
      });
      test('AuthExpired', () async {
        final container = ProviderContainer(
          overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kOverrideGraphqlUnAuthDetectedByTime,
              ] +
              defaultOverride,
        );
        final appRouter = container.listen(kPrvAppRouterDelegate).read();
        final viewModel = container.listen(kPrvViewModelSubscribing).read();
        await viewModel.initialize();
        expect(
            // ignore: invalid_use_of_protected_member
            viewModel.state,
            const FeatureProgramState.error(ErrorMsgCommon.authExpired()));
        expect(appRouter.appState.last, const GlobalRoutePath.error(true));
      });
      test('UnAuth', () async {
        final container = ProviderContainer(
          overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kOverrideGraphqlUnAuthNotDetectedByTime,
              ] +
              defaultOverride,
        );
        final appRouter = container.listen(kPrvAppRouterDelegate).read();
        final viewModel = container.listen(kPrvViewModelSubscribing).read();
        await viewModel.initialize();
        expect(
            // ignore: invalid_use_of_protected_member
            viewModel.state,
            const FeatureProgramState.error(ErrorMsgCommon.unAuth()));
        expect(appRouter.appState.last, const GlobalRoutePath.error(true));
      });
      test('UnknownError', () async {
        final container = ProviderContainer(
          overrides: [
                kOverrideConnectedRepositoryConnectedImpl,
                kOverrideGraphqlErr,
              ] +
              defaultOverride,
        );
        final appRouter = container.listen(kPrvAppRouterDelegate).read();
        final viewModel = container.listen(kPrvViewModelSubscribing).read();
        await viewModel.initialize();
        expect(
            // ignore: invalid_use_of_protected_member
            viewModel.state,
            const FeatureProgramState.error(ErrorMsgCommon.unknown()));
        expect(appRouter.appState.last, isNot(const GlobalRoutePath.auth()));
      });
    });
