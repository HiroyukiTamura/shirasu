import 'package:flutter/cupertino.dart';

//todo split per screen
//todo remove type definition
@immutable
class Strings {

  const Strings._();

  //region Intro
  static const String INTRO_TITLE_1ST = 'SHIRASU';
  static const String INTRO_DESC_1ST = 'このアプリは、動画配信プラットフォーム「シラス」の非公式アプリです。';
  static const String INTRO_DESC_1ST_2 =
      'バックグラウンド再生はもちろん、配信開始の通知や動画の購入・検索することができます。';

  static const String INTRO_TITLE_2ND = 'このアプリは非公式です';
  static const String INTRO_DESC_2ND = 'このアプリは、シラスと無関係の個人が開発・運営しています。';
  static const String INTRO_DESC_2ND_2 =
      '公式の対応によっては予告なくサービスを停止することがありますので、あらかじめご了承ください。';

  static const String INTRO_TITLE_3RD = 'セキュアで\n透明性の高いアプリ';
  static const String INTRO_DESC_3RD =
      'すべてのソースコードをGitHub上で公開しており、誰でも開発に参加することができます。';
  static const String INTRO_DESC_3RD_2 =
      '決済は認証は公式Webページを通じて行い、アプリはパスワードや個人情報を一切保持しません。';

  static const String INTRO_DONE = '始める';

  //endregion

  //region ScreenDashboard
  static const HEADING_UPCOMING = 'まもなく放送';
  static const HEADING_NEW_PRG = '新着番組';
  static const HEADING_SUBSCRIBING = '購読中の番組';
  static const HEADING_CHANNEL = 'チャンネル';
  static const HEADING_NOW_ON_AIR = 'ただいま放送中';
  //endregion

  //region contents description
  static const String CD_INTRO_IMG_1ST = 'アプリロゴ';
  static const String CD_INTRO_IMG = 'イメージイラスト';

//endregion

  //region SnackBar
  static const String SNACK_NO_MORE_ITEM = 'アイテムは他にありません';
  static const String SNACK_ERR = '処理に失敗しました';

  //endregion

  //region ScreenMeta
  static const String NAV_ITEM_HOME = 'ホーム';
  static const String NAV_ITEM_LIST = 'リスト';
  static const String NAV_ITEM_SEARCH = '検索';
  static const String NAV_ITEM_CONFIG = '設定';

//endregion

//region ScreenChannel
  static const String CHANNEL_TAB_DESC = '概要';
  static const String CHANNEL_TAB_MOVIE = '動画';
  static const String CHANNEL_TAB_NOTIFICATION = 'お知らせ';

//endregion

  //region about purchase
  static String currency2Str(String currency) {
    switch (currency.toUpperCase()) {
      case 'JPY':
        return '円';
      default:
        throw Exception('unexpected currency :: $currency');
    }
  }

  static String planType2Str(String planType) {
    switch (planType) {
      case 'SubscriptionPlan':
        return '月額';
      case 'OneTimePlan':
        return '単品';
      default:
        throw Exception('unexpected planType :: $planType');
    }
  }

  static const String MONTHLY = '月額';
  static const String SUBSCRIBED = 'チャンネル購読済み';

  //region ScreenDetail
  static const String WAIT_FOR_START = '放送開始までお待ちください';
  static const String PURCHASE_BTN_TEXT = 'この動画を購入する・チャンネルを購読する';
  static const String PREVIEW_BTN_TEXT = '冒頭を無料で見る';

//endregion

//region ScreenMain PageSubscribing
  static const String TAB_MY_LIST = 'マイリスト';
  static const String TAB_SUBSCRIBING = '購読中';
  static const String TAB_WATCH_HISTORY = '視聴履歴';
  static const String WATCH_HISTORY_EMPTY_MSG = '動画を視聴すると、履歴がこの画面に表示されます。';
  static const String SUBSCRIBING_EMPTY_MSG = '動画を視聴すると、履歴がこの画面に表示されます。';

//endregion

//region ScreenMain PageSetting

  /// ref: users.pages.UserAccount.components.UserAccountInformation.nameLabel
  static const String NAME_LABEL = 'ユーザー名';

  /// not ref to users.pages.UserAccount.components.UserAccountInformation.fullNameLabel
  static const String FULL_NAME_LABEL = '名前';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.fullNameReadingLabel
  static const String FULL_NAME_READABLE_LABEL = '氏名(ふりがな)';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.mailAddress
  static const String MAIL_ADDRESS = 'メールアドレス';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.birthDateLabel
  static const String BIRTH_DATE_LABEL = '生年月日';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.jobLabel
  static const String JOB_LABEL = '職業';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.placeLabel
  static const String PLACE_LABEL = '居住地域';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.saveButton
  static const String SAVE_BUTTON = '設定を保存する';

  /// ref: stripe.components.AttachCreditCard.AttachCreditCard.cardExpiry
  static const String CARD_EXPIRY = '有効期限';

  /// ref: stripe.components.AttachCreditCard.AttachCreditCard.cardNumber
  static const String CARD_NUMBER = 'クレジットカード番号';

  /// ref: users.pages.UserAccount.UserAccountPage.titleCreditCard
  static const String TITLE_CREDIT_CARD = 'クレジットカード情報';

  /// ref: users.pages.UserAccount.UserAccountPage.titleCreditCard
  static const String TITLE_PURCHASE_HISTORY = '購入履歴';

  /// ref: users.pages.UserAccount.UserAccountPage.titleSubscribedChannels
  static const String TITLE_SUBSCRIBED_CHANNELS = '購読中のチャンネル';

  static const String TITLE_USER_INFO = 'ユーザー情報';

  /// ref: users.pages.UserAccount.UserAccountPage.titleWatchingHistory
  static const String TITLE_WATCH_HISTORY = '視聴履歴';

  /// ref: users.pages.UserAccount.UserAccountPage.titleSubscribedChannels
  static const String WATCH_MORE = 'もっと見る';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.fullNameNotice
  static const String FULL_NAME_NOTICE = '※氏名の変更があった場合はお問い合わせフォームからご連絡ください';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.emailNotVerifed
  static const String EMAIL_NOT_VERIFIED = '未確認';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.emailVerified
  static const String EMAIL_VERIFIED = '確認済';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.externalAuthentication
  static const String EXTERNAL_AUTHENTICATION = '外部サービスログイン連携';

  static const String CURRENT_PERIOD_END_AT_LABEL = '次回更新日';
  static const String SUBSCRIPTION_START_DATE = '購読開始日';

  static const String AUTH_SYNC_CHECKED = '連携済';

  static const String DEFAULT_EMPTY = '---';

  static const Map<String, String> JOB_MAP = {
    'jobAcademia': '大学関係',
    'jobBroadcasting': '放送関係',
    'jobCivilServant': '公務員',
    'jobCreatorOrArtist': 'クリエイター・アーティスト',
    'jobHumanitiesStudent': '学生（文系）',
    'jobInformationTechnology': 'IT関係',
    'jobOther': 'その他',
    'jobOtherEducation': 'その他教育関係',
    'jobOtherEmployeeOrExecutive': 'その他会社員・会社役員',
    'jobOtherStudent': '学生（その他）',
    'jobPartTime': 'フリーター',
    'jobPublishing': '出版関係',
    'jobScienceStudent': '学生（理系）',
    'jobSelfEmployed': '自営業',
    'jobUnemployed': '無職',
  };

  static const String NO_ITEM_SUFFIX = 'はありません';
  static const String OPEN_WEB = 'WEBページを開く';

  static const String TAB_USER_INFO = 'アカウント';
  static const String TAB_APP_CONFIG = 'アプリ設定';

  static const String ITEM_TITLE_OSS_LICENCE = 'OSSライセンス';

//endregion

//region dialog
  static const String APP_BAR_LOCATION = '居住地域';
  static const String DIALOG_TITLE_LOCATION = '居住地域';
  static const String DIALOG_OK = 'OK';
  static const String DIALOG_CANCEL = 'キャンセル';
//endregion
}
