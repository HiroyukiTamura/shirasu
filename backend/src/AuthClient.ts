import createAuth0Client, {Auth0Client} from '@auth0/auth0-spa-js';
import Statics from "./Statics";

export default class AuthClient {

    private auth0Client: Auth0Client|undefined

    async initClient() {
        this.auth0Client = await createAuth0Client({
            domain: Statics.AUTH0_DOMAIN,
            client_id: Statics.AUTH0_CLIENT_ID
        });
    }

    async request2AuthPage(): Promise<void> {
        const url = await this.auth0Client!.buildAuthorizeUrl()
        console.log(url);
    }
}
