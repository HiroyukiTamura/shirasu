import 'package:flutter/cupertino.dart';

//todo split per screen
//todo remove type definition
@immutable
class Strings {
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
  static const HEADING_NOW_ON_AIR = 'ただいま放送中';
  //endregion

  //region contents description
  static const String CD_INTRO_IMG_1ST = 'アプリロゴ';
  static const String CD_INTRO_IMG = 'イメージイラスト';

//endregion

  //region SnackBar
  static const String SNACK_NO_MORE_ITEM = '新着番組は他にありません';
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

  
  // "messages.job.jobAcademia": "大学関係",
  // "messages.job.jobBroadcasting": "放送関係",
  // "messages.job.jobCivilServant": "公務員",
  // "messages.job.jobCreatorOrArtist": "クリエイター・アーティスト",
  // "messages.job.jobHumanitiesStudent": "学生（文系）",
  // "messages.job.jobInformationTechnology": "IT関係",
  // "messages.job.jobOther": "その他",
  // "messages.job.jobOtherEducation": "その他教育関係",
  // "messages.job.jobOtherEmployeeOrExecutive": "その他会社員・会社役員",
  // "messages.job.jobOtherStudent": "学生（その他）",
  // "messages.job.jobPartTime": "フリーター",
  // "messages.job.jobPublishing": "出版関係",
  // "messages.job.jobScienceStudent": "学生（理系）",
  // "messages.job.jobSelfEmployed": "自営業",
  // "messages.job.jobUnemployed": "無職",
  // "messages.job.unselected": "職業を選択してください",
  // "messages.prefecture.prefecture1": "北海道",
  // "messages.prefecture.prefecture10": "群馬県",
  // "messages.prefecture.prefecture11": "埼玉県",
  // "messages.prefecture.prefecture12": "千葉県",
  // "messages.prefecture.prefecture13": "東京都",
  // "messages.prefecture.prefecture14": "神奈川県",
  // "messages.prefecture.prefecture15": "新潟県",
  // "messages.prefecture.prefecture16": "富山県",
  // "messages.prefecture.prefecture17": "石川県",
  // "messages.prefecture.prefecture18": "福井県",
  // "messages.prefecture.prefecture19": "山梨県",
  // "messages.prefecture.prefecture2": "青森県",
  // "messages.prefecture.prefecture20": "長野県",
  // "messages.prefecture.prefecture21": "岐阜県",
  // "messages.prefecture.prefecture22": "静岡県",
  // "messages.prefecture.prefecture23": "愛知県",
  // "messages.prefecture.prefecture24": "三重県",
  // "messages.prefecture.prefecture25": "滋賀県",
  // "messages.prefecture.prefecture26": "京都府",
  // "messages.prefecture.prefecture27": "大阪府",
  // "messages.prefecture.prefecture28": "兵庫県",
  // "messages.prefecture.prefecture29": "奈良県",
  // "messages.prefecture.prefecture3": "岩手県",
  // "messages.prefecture.prefecture30": "和歌山県",
  // "messages.prefecture.prefecture31": "鳥取県",
  // "messages.prefecture.prefecture32": "島根県",
  // "messages.prefecture.prefecture33": "岡山県",
  // "messages.prefecture.prefecture34": "広島県",
  // "messages.prefecture.prefecture35": "山口県",
  // "messages.prefecture.prefecture36": "徳島県",
  // "messages.prefecture.prefecture37": "香川県",
  // "messages.prefecture.prefecture38": "愛媛県",
  // "messages.prefecture.prefecture39": "高知県",
  // "messages.prefecture.prefecture4": "宮城県",
  // "messages.prefecture.prefecture40": "福岡県",
  // "messages.prefecture.prefecture41": "佐賀県",
  // "messages.prefecture.prefecture42": "長崎県",
  // "messages.prefecture.prefecture43": "熊本県",
  // "messages.prefecture.prefecture44": "大分県",
  // "messages.prefecture.prefecture45": "宮崎県",
  // "messages.prefecture.prefecture46": "鹿児島県",
  // "messages.prefecture.prefecture47": "沖縄県",
  // "messages.prefecture.prefecture5": "秋田県",
  // "messages.prefecture.prefecture6": "山形県",
  // "messages.prefecture.prefecture7": "福島県",
  // "messages.prefecture.prefecture8": "茨城県",
  // "messages.prefecture.prefecture9": "栃木県",

  // "users.pages.UserAccount.components.SubscribedChannels.currentPeriodEndAtLabel": "次回更新日",
  // "users.pages.UserAccount.components.SubscribedChannels.subscriptionStartDate": "購読開始日",

//endregion
}
