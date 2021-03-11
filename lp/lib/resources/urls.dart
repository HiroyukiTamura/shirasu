import 'package:lp/resources/strings.dart';

class Urls {
  const Urls._();

  static const unagiGooglePlay =
      'https://play.google.com/store/apps/details?id=com.cks.shirasu';

  static const GITHUB = 'https://github.com/';
  static const GITHUB_ACTIONS = 'https://github.com/features/actions';
  static const GIT_GUARDIAN = 'https://www.gitguardian.com/';
  static const FLUTTER = 'https://flutter.dev/';
  static const DART = 'https://dart.dev/';
  static const KOTLIN = 'https://kotlinlang.org/';
  static const FIREBASE_CRASHLYTICS =
      'https://firebase.google.com/products/crashlytics';
  static const FIREBASE_HOSTING =
      'https://firebase.google.com/products/hosting';
  static const FIREBASE_PERFORMANCE =
      'https://firebase.google.com/products/performance';
  static const FIREBASE_ANALYTICS =
      'https://firebase.google.com/products/analytics';
  static const SWIFT = 'https://swift.org/';
  static const JIRA = 'https://www.atlassian.com/software/jira';
  static const FIGMA = 'https://www.figma.com/';
  static const POSTMAN = 'https://www.postman.com/';
  static const GRAPHQL = 'https://graphql.org/';
  static const FASTLANE = 'https://fastlane.tools/';

  static const CONTACT_EMAIL = 'hiroyuktamura@gmail.com';
  static const CONTACT_TWITTER = 'https://twitter.com/freqmodu874';

  static const POLICY_ANALYTICS =
      'https://policies.google.com/technologies/partner-sites';
  static const POLICY_CRASHLYTICS =
      'https://firebase.google.com/terms/crashlytics-app-distribution-data-processing-terms/';

  static const REPO_GITHUB = 'https://github.com/HiroyukTamura/shirasu';
  static const REPO_FIGMA =
      'https://www.figma.com/file/LOMIPRZxv89m9M1CmLFUQt/shirasu?node-id=26%3A2';
  static const REPO_JIRA = 'https://freqmodu874.atlassian.net/browse/SHIR/';
  static const LP = 'https://shirasu-fbda2.web.app/';

  static final shareTwitter =
      Uri.parse('http://twitter.com/share').replace(queryParameters: {
    'url': LP,
    'hashtag': Strings.APP_NAME,
  }).toString();
  static final shareLine =
      Uri.parse('https://social-plugins.line.me/lineit/share')
          .replace(queryParameters: {
    'url': LP,
  }).toString();

  static const LICENSE_APACHE = 'https://www.apache.org/licenses/LICENSE-2.0';
}
