import 'package:flutter/cupertino.dart';
import 'package:shirasu/model/graphql/mixins/plan_type.dart';

//todo split per screen
@immutable
class Strings {
  const Strings._();

  static const APP_NAME = 'UNAGI';

  //region Intro
  static const INTRO_TITLE_1ST = 'UNAGI';
  static const INTRO_DESC_1ST = 'このアプリは、動画配信プラットフォーム「シラス」の非公式アプリです。';
  static const INTRO_DESC_1ST_2 = 'バックグラウンド再生はもちろん、配信開始の通知や動画の購入・検索することができます。';

  static const INTRO_TITLE_2ND = 'このアプリは非公式です';
  static const INTRO_DESC_2ND = 'このアプリは、シラスと無関係の個人が開発・運営しています。';
  static const INTRO_DESC_2ND_2 =
      '公式の対応によっては予告なくサービスを停止することがありますので、あらかじめご了承ください。';

  static const INTRO_TITLE_3RD = 'セキュアで\n透明性の高いアプリ';
  static const INTRO_DESC_3RD = 'すべてのソースコードをGitHub上で公開しており、誰でも開発に参加することができます。';
  static const INTRO_DESC_3RD_2 =
      '決済は認証は公式Webページを通じて行い、アプリはパスワードや個人情報を一切保持しません。';

  static const INTRO_DONE = '始める';

  static const SEMANTIC_INTRO_NEXT = 'next';

  //endregion

  //region ScreenDashboard
  static const HEADING_UPCOMING = 'まもなく放送';
  static const HEADING_NEW_PRG = '新着番組';
  static const HEADING_SUBSCRIBING = '購読中の番組';
  static const HEADING_CHANNEL = 'チャンネル';
  static const HEADING_NOW_ON_AIR = 'NOW ON AIR';

  //endregion

  //region contents description
  static const CD_INTRO_IMG_1ST = 'アプリロゴ';
  static const CD_INTRO_IMG = 'イメージイラスト';

//endregion

  //region SnackBar
  static const SNACK_NO_MORE_ITEM = 'アイテムは他にありません';

  static const SNACK_ERR = '処理に失敗しました'; //todo rename
  static const SNACK_CANT_OPEN_URL = 'Webページを開けません';
  static const SNACK_URL_COPIED = 'urlをコピーしました';
  static const SNACK_FCM_SUBSCRIBE = '配信開始の通知を設定しました';
  static const SNACK_FCM_UNSUBSCRIBE = '配信開始の通知を解除しました';
  static const SNACK_ERR_INVALID_AUTH_INPUT = 'メールアドレスまたはパスワードが違います';
  static const SNACK_ERR_FCM_PERMISSION = '通知を受け取るには設定で許可を与えてください';
  static const SNACK_ACTION_FCM_PERMISSION = '設定する';

  //endregion

  //region ScreenMeta
  static const NAV_ITEM_HOME = 'ホーム';
  static const NAV_ITEM_LIST = 'リスト';
  static const NAV_ITEM_SEARCH = '検索';
  static const NAV_ITEM_CONFIG = '設定';

//endregion

//region ScreenChannel
  static const CHANNEL_TAB_DESC = '概要';
  static const CHANNEL_TAB_MOVIE = '動画';
  static const CHANNEL_TAB_NOTIFICATION = 'お知らせ';
  static const CHANNEL_ANNOUNCEMENTS_EMPTY_MSG = 'お知らせはありません';

//endregion

  static const SUFFIX_YEN = '円';

  static String planType2Str(PlanType planType) => planType.when(
        oneTime: () => '月額',
        subscription: () => '単品',
      );

  static const MONTHLY = '月額';
  static const SUBSCRIBED = 'チャンネル購読済み';
  static const SUBSCRIBE_SUFFIX = 'で購読する';

  //region ScreenDetail
  static const WAIT_FOR_START = '放送開始までお待ちください';
  static const PURCHASE_BTN_TEXT = 'この番組を視聴する';
  static const PREVIEW_BTN_TEXT = '冒頭を無料で見る';
  static const TIME_UNIT_SEC = '秒';
  static const BTM_SHEET_COMMENT_LABEL = 'このコメントが投稿された時間に移動';
  static const COMMENT_TEXT_FILED_HINT = 'コメント入力';
  static const PLAYER_CONTROLLER_LABEL_LIVE = 'LIVE';

//endregion

//region ScreenMain PageSubscribing
  static const TAB_MY_LIST = 'マイリスト';
  static const TAB_SUBSCRIBING = '購読中';
  static const TAB_WATCH_HISTORY = '視聴履歴';
  static const WATCH_HISTORY_EMPTY_MSG = '動画を視聴すると、履歴がこの画面に表示されます。';
  static const SUBSCRIBING_EMPTY_MSG = '動画を購読すると、番組一覧がこの画面に表示されます。';

//endregion

  //region ScreenSearch
  static const HINT_SEARCH = '検索';
  static const SEARCH_RESULT_EMPTY = 'キーワードに一致する結果が見つかりませんでした';

  //endregion

//region ScreenMain PageSetting

  /// ref: users.pages.UserAccount.components.UserAccountInformation.nameLabel
  static const NAME_LABEL = 'ユーザー名';

  /// not ref to users.pages.UserAccount.components.UserAccountInformation.fullNameLabel
  static const FULL_NAME_LABEL = '名前';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.fullNameReadingLabel
  static const FULL_NAME_READABLE_LABEL = '氏名(ふりがな)';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.mailAddress
  static const MAIL_ADDRESS = 'メールアドレス';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.birthDateLabel
  static const BIRTH_DATE_LABEL = '生年月日';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.jobLabel
  static const JOB_LABEL = '職業';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.placeLabel
  static const PLACE_LABEL = '居住地域';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.saveButton
  static const SAVE_BUTTON = '設定を保存する';

  /// ref: stripe.components.AttachCreditCard.AttachCreditCard.cardExpiry
  static const CARD_EXPIRY = '有効期限';

  /// ref: stripe.components.AttachCreditCard.AttachCreditCard.cardNumber
  static const CARD_NUMBER = 'クレジットカード番号';

  /// ref: users.pages.UserAccount.UserAccountPage.titleCreditCard
  static const TITLE_CREDIT_CARD = 'クレジットカード情報';

  /// ref: users.pages.UserAccount.UserAccountPage.titleCreditCard
  static const TITLE_PURCHASE_HISTORY = '購入履歴';

  /// ref: users.pages.UserAccount.UserAccountPage.titleSubscribedChannels
  static const TITLE_SUBSCRIBED_CHANNELS = '購読中のチャンネル';

  static const TITLE_USER_INFO = 'ユーザー情報';

  /// ref: users.pages.UserAccount.UserAccountPage.titleWatchingHistory
  static const TITLE_WATCH_HISTORY = '視聴履歴';

  /// ref: users.pages.UserAccount.UserAccountPage.titleSubscribedChannels
  static const WATCH_MORE = 'もっと見る';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.fullNameNotice
  static const FULL_NAME_NOTICE = '※氏名の変更があった場合はお問い合わせフォームからご連絡ください';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.emailNotVerifed
  static const EMAIL_NOT_VERIFIED = '未確認';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.emailVerified
  static const EMAIL_VERIFIED = '確認済';

  /// ref: users.pages.UserAccount.components.UserAccountInformation.externalAuthentication
  static const EXTERNAL_AUTHENTICATION = '外部サービスログイン連携';

  /// ref: users.pages.Program.components.PlayerContainer.previewExistMessage
  static const PREVIEW_EXIST_MESSAGE =
      '冒頭を無料で見ることができます。\n番組開始後に冒頭無料視聴をお選びください。';

  /// ref: users.pages.Program.components.ProgramNotice.saving
  static const PROGRAM_ARCHIVING = 'アーカイブ動画への変換中です。\n視聴可能になるまで、少々お待ちください。';

  static const CURRENT_PERIOD_END_AT_LABEL = '次回更新日';
  static const SUBSCRIPTION_START_DATE = '購読開始日';

  static const AUTH_SYNC_CHECKED = '連携済';

  static const DEFAULT_EMPTY = '---';

  static const Map<String, String> JOB_MAP = {
    'Academia': '大学関係',
    'Broadcasting': '放送関係',
    'CivilServant': '公務員',
    'CreatorOrArtist': 'クリエイター・アーティスト',
    'HumanitiesStudent': '学生（文系）',
    'InformationTechnology': 'IT関係',
    'Other': 'その他',
    'OtherEducation': 'その他教育関係',
    'OtherEmployeeOrExecutive': 'その他会社員・会社役員',
    'OtherStudent': '学生（その他）',
    'PartTime': 'フリーター',
    'Publishing': '出版関係',
    'ScienceStudent': '学生（理系）',
    'SelfEmployed': '自営業',
    'Unemployed': '無職',
  };

  static const NO_ITEM_SUFFIX = 'はありません';
  static const OPEN_WEB = 'WEBページを開く';

  static const TAB_USER_INFO = 'アカウント';
  static const TAB_APP_CONFIG = 'アプリ設定';

  static const ITEM_TITLE_MOVIE_QUALITY = '画質 - Wifi回線時';
  static const ITEM_TITLE_MOVIE_QUALITY_MOBILE = '画質 - モバイル回線時';
  static const ITEM_TITLE_FCM = '番組通知';
  static const ITEM_TITLE_OSS_LICENCE = 'OSSライセンス';
  static const ITEM_TITLE_IMAGE_LICENCE = '画像ライセンス';
  static const ITEM_TITLE_GITHUB = 'GitHub';
  static const ITEM_TITLE_LOGOUT = 'ログアウト';

//endregion

  //region screen_auth
  static const APP_BAR_LOGIN = 'ログイン';

  static const TEXT_FIELD_HINT_EMAIL = 'メールアドレス';
  static const TEXT_FIELD_HINT_PASSWORD = 'パスワード';

  //endregion

  //region screen_auth_scratch
  static const TEXT_FILED_ERR_LABEL_PW_EMPTY = 'パスワードを入力してください';
  static const TEXT_FILED_ERR_LABEL_EMAIL_EMPTY = 'メールアドレスを入力してください';
  static const TEXT_FILED_ERR_LABEL_EMAIL_INVALID = '無効なメールアドレス';
  static const IOS_LOGIN_NOTE =
      '$APP_NAME iOS版ではメールアドレス以外のログインには対応しておりません。あらかじめご了承ください。';

  //endregion

//region dialog
  static const APP_BAR_LOCATION = '居住地域';
  static const DIALOG_TITLE_LOCATION = '居住地域';
  static const DIALOG_OK = 'OK';
  static const DIALOG_CANCEL = 'キャンセル';

//endregion

//region bottom sheet
  static const BTM_SHEET_MSG_CREDIT_CARD =
      '決済に関わる重要な操作は、本アプリでは対応していません。\n公式Webページ上で行ってください。';
  static const SUFFIX_PURCHASE_ONE_TIME = 'で番組を購入';
  static const SUFFIX_PURCHASE_SUBSCRIBE_CHANNEL = 'でチャンネルを購読';
  static const BTM_SHEET_OR = 'または';
  static const BTM_SHEET_MSG_PAYMENT_PREFIX = 'この番組を視聴するには';
  static const BTM_SHEET_MSG_PAYMENT =
      'する必要があります。なお、決済に関わる重要な操作は本アプリでは対応していません。公式Webページ上で行ってください。';

  static const SHARE_TWITTER = 'twitterで共有';
  static const SHARE_FACEBOOK = 'facebookで共有';
  static const COPY_URL = 'URLをコピー';

  static const BTM_SHEET_FCM_PROGRAM = 'この番組の配信通知を設定';
  static const BTM_SHEET_FCM_CHANNEL = 'このチャンネルの配信通知を設定';

//endregion

//region license
  static const LICENSE_LEGAL_APP = '''
Except where otherwise noted,
all of this app is licensed under CC BY-NC-SA 4.0 license''';

//endregion

//region screen_price_chart
  /// ref: users.pages.Program.components.ArchivePriceTable.title
  static const ARCHIVE_PRICE_TABLE_TITLE = '番組価格';

  /// ref: users.pages.Program.components.ArchivePriceTable.note
  static const ARCHIVE_PRICE_TABLE_NOTE = '''
※表記は全て「税込」となります
※延長は直前の本編あるいは延長を購入していないと視聴することができません。
※延長1回目の購入は本編の購入のあと、延長2回目の購入は1回目までの購入のあととなります。''';

  /// ref: users.pages.Program.components.ArchivePriceTable.extension
  static const ARCHIVE_PRICE_TABLE_NOTE_EXTENSION = '延長';

  static const ARCHIVE_PRICE_TABLE_NOTE_EXTENSION_SUFFIX = '回';

  /// ref: "users.pages.Program.components.ArchivePriceTable.free"
  static const ARCHIVE_PRICE_TABLE_FREE = '無料';

  /// ref: "users.pages.Program.components.ArchivePriceTable.mainType"
  static const ARCHIVE_PRICE_TABLE_MAIN_TYPE = '本編';

  /// ref: "users.pages.Program.components.ArchivePriceTable.headerLabelDuration"
  static const ARCHIVE_PRICE_TABLE_HEADER_LABEL_DURATION = '放送時間';

  /// ref: "users.pages.Program.components.ArchivePriceTable.headerLabelGuest"
  static const ARCHIVE_PRICE_TABLE_HEADER_LABEL_GUEST = '非会員';

  /// ref: "users.pages.Program.components.ArchivePriceTable.headerLabelSubscriber"
  static const ARCHIVE_PRICE_TABLE_HEADER_LABEL_SUBSCRIBER = '会員';

  /// ref: "users.pages.Program.components.SPProgramTabHeader.handouts"
  static const HEADER_HANDOUTS = '関連資料';

  /// ref: "atomic.molecules.HandoutList.extensionPurchaserOnly"
  static const EXTENSION_PURCHASER_ONLY = '延長購入者のみ';

//endregion

  static const ERR_NETWORK_TIMEOUT = '接続がタイムアウトしました';
  static const ERR_NETWORK_DISCONNECTED = 'ネットワークに接続していません';
  static const ERR_AUTH_EXPIRED = 'ログイン期限が切れました';
  static const ERR_UN_AUTH = 'ログインに失敗しました';

  static const LOGIN_BTN_VALUE = 'ログイン';

  //region screenPreLogin
  static const PRE_LOGIN_REGISTER_BTN_VALUE = 'シラスに新規登録';

  static const PRE_LOGIN_LOGIN_BTN_VALUE = 'シラスアカウントで\nログイン';

  static const PRE_LOGIN_NOTE_1 =
      '「シラス」における決済や認証は公式Webページを通じて行い、アプリはパスワードや個人情報を一切保持しません';
  static const PRE_LOGIN_NOTE_2 =
      '「シラス」と無関係の個人が開発・運営しており、本アプリのソースコード全文をネット上で公開しています';
  static const PRE_LOGIN_NOTE_3 = '本アプリによる広告表示・課金機能は一切ありません';

  static const CD_LOGO = 'ロゴ';

  static const FOOTER_BTN_SOURCE_VALUE = 'ソースコード';
  static const FOOTER_BTN_PRIVACY_VALUE = 'プライバシーポリシー';

  //endregion

  static const TIME_PREFIX_START = '開始';
  static const TIME_PREFIX_END = '終了';
  static const TIME_PREFIX_PLANNING = '予定';

  //region ScreenFcm
  static const APP_BAR_SCREEN_FCM = '通知設定';
  static const EMPTY_FCM = '設定している番組通知はありません';
  static const SCREEN_FCM_CAPTION_CHANNEL = 'チャンネル';
  static const SCREEN_FCM_CAPTION_PRG = '番組';

//endregion

//region ScreenWebNoSupport
  static const SCREEN_WEB_NO_SUPPORT = 'web版は提供しておりません。\nネイティブアプリをご利用ください。';
//endregion

//region ScreenFcmGuide
  static const SCREEN_FCM_GUIDE_1 = 'iPhone/iPadのSafariでこの画面を開いて、画面下の';
  static const SCREEN_FCM_GUIDE_2 = 'をタップ・「ホーム画面に追加」を選択してください。\nホーム画面から起動するとアプリが動作します。';
//endregion
}
