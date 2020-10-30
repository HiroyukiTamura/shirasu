# フレームワーク
認証: Auth0(email, google, facebook, twitter)
バックエンド全般: AWS
キーワード検索: Elastic Search

# 認証
Auth0でログイン => コールバック先からリダイレクト => [ダッシュボード](https://shirasu.io/dashboard)
認証が通るとブラウザのLocalStorage上に各種認証情報が保存される。Auth0のtokenも含まれる
sample: research/dashboard/localstorage.json

# API
全てAWS GraphQL
authにはauth0のtokenがそのまま用いられる
