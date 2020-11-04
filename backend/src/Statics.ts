export default class Statics {

    static readonly AUTH0_CLIENT_ID = 'kyjTJ5lQ7RU7mAyeSmX8nLYcxVRtA3nB'
    static readonly AUTH0_DOMAIN = 'shirasu.auth0.com'
    static readonly AUTH0_CALLBACK = 'https://shirasu.io/callback/'
    static readonly LOCALSTORAGE_KEY = `@@auth0spajs@@::${Statics.AUTH0_CLIENT_ID}::default::openid profile email offline_access`
}
