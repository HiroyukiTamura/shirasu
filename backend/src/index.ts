import AuthClient from "./AuthClient";

(async () => {
    const authClient = new AuthClient()
    await authClient.initClient()
    await authClient.request2AuthPage()

})().catch(e => {
    console.error(e);
});
