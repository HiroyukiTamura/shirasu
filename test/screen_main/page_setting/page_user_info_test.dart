import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shirasu/client/graphql_repository_impl.dart';
import 'package:shirasu/client/hive_auth_repository.dart';
import 'package:shirasu/screen_main/page_setting/page_setting.dart';
import 'package:shirasu/ui_common/page_error.dart';

import '../../mock_repository/connected_connected.dart';
import '../../mock_repository/graphql_common.dart';
import '../../mock_repository/hive_auth_empty.dart';
import '../../widget_test_util/json_client.dart';
import '../../widget_test_util/test_runner_base.dart';
import '../../widget_test_util/test_runner_on_page_error.dart';
import '../../widget_test_util/test_util.dart';

Future main() async {
  _TestRunner()
    ..runTestGroup('SettingPageUserInfo',
        goldenNamePrefix: 'SettingPageUserInfo')
    ..runTestNormal();
}

/// todo dialog test
class _TestRunner extends TestRunnerBase with TestRunnerOnPageError {
  _TestRunner()
      : super(
          () => const Scaffold(
            body: PageUserInfo(),
          ),
          goldenNamePrefix: 'SettingPageUserInfo',
        );

  void runTestNormal() => group('SettingPageUserInfo', () {
        void testGoldenTemplate({
          @required String goldenName,
          FutureOr<void> Function(WidgetTester tester) onPost,
          List<Finder> expectOneWidgetList = const [],
          List<Finder> expectNoWidgetList = const [],
        }) {
          testGoldensSimple(
            testName: goldenName,
            overrides: [
              kOverrideConnectedRepositoryConnectedImpl,
              kPrvGraphqlRepository
                  .overrideWithValue(GraphQlRepositoryCommonImpl(
                viewerWrapper: JsonClient.instance.mViewerWrapper,
              )),
              kPrvHiveAuthRepository.overrideWithValue(HiveAuthRepositoryCommon(
                specAuthData: JsonClient.instance.mHiveAuthData,
              )),
              kPrvHiveAuthUser.overrideWithValue(
                  JsonClient.instance.mHiveAuthData.body.decodedToken.user),
              ...defaultOverride,
            ],
            onPostBuild: (tester) async {
              await tester.pump(5.seconds);
              (expectNoWidgetList + [find.byType(PageError)])
                  .forEach((it) => expect(it, findsNothing));
              expectOneWidgetList.forEach((it) => expect(it, findsOneWidget));
              if (onPost != null) await onPost(tester);
            },
          );
        }

        /// [WidgetTester.ensureVisible] is not work...
        Future<void> _scrollDownMultiple(WidgetTester tester, int count) async {
          for (var i = 0; i < count; i++) {
            print('scroll down! i: $i');
            await tester.drag(find.byType(ListView), const Offset(0, -700));
          }
        }

        /// capture whole screen
        for (var i = 0; i < 7; i++) {
          print('scroll down! i: $i');
          testGoldenTemplate(
            goldenName: 'Normal$i',
            onPost: (tester) async => _scrollDownMultiple(tester, i),
          );
        }
      });
}
