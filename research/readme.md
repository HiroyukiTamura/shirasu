# フレームワーク
認証: Auth0(email, google, facebook, twitter)
バックエンド全般: AWS
キーワード検索: Elastic Search

# 認証
Auth0でログイン => コールバック先からリダイレクト => [ダッシュボード](https://shirasu.io/dashboard)
認証が通るとブラウザのLocalStorage上に各種認証情報が保存される。Auth0のtokenも含まれる
sample: research/dashboard/localstorage.json

# 詳しい認証の流れ
#### 1. Auth0のJSクライエントライブラリ[auth0-spa-js](https://auth0.github.io/auth0-spa-js/index.html)で、認証用のURLを作成する
[buildauthorizeurl()](https://auth0.github.io/auth0-spa-js/classes/auth0client.html#buildauthorizeurl)

#### 2.ここで作成されたURLにアクセス/
[APIレファレンス](https://auth0.com/docs/api/authentication#login)
リダイレクトされる

# API
全てAWS GraphQL
authにはauth0のtokenがそのまま用いられる
