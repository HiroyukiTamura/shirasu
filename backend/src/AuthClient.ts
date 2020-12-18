import createAuth0Client, {Auth0Client} from '@auth0/auth0-spa-js';
import Statics from "./Statics";

export default class AuthClient {

    private auth0Client: Auth0Client|undefined

    async initClient() {
        this.auth0Client = await createAuth0Client({
            domain: Statics.AUTH0_DOMAIN,
            client_id: Statics.AUTH0_CLIENT_ID,
            redirect_uri: Statics.AUTH0_CALLBACK,
            useRefreshTokenst: true,
            cacheLocation: 'localstorage',
        });
    }

    loginWithRedirect(): Promise<void> {
        return this.auth0Client!.loginWithRedirect({
            redirect_uri: Statics.AUTH0_CALLBACK,
            appState: {'redirectTo': '/'},
        })
    }

    static getLocalStorage(): string|undefined {
        const string = window.localStorage.getItem(Statics.LOCALSTORAGE_KEY)
        if (!string)
            return undefined

        return JSON.parse(string)['body']['id_token'];
    }
}
