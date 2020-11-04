import AuthClient from "./AuthClient";

(async () => {
    const authClient = new AuthClient()
    await authClient.initClient()
    await authClient.loginWithRedirect()

})().catch(e => {
    console.error(e);
});
