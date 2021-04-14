import * as functions from "firebase-functions";
import admin from "firebase-admin";
import {Controller} from "./controller";

admin.initializeApp();

const algoliaAppId = functions.config().env.algolia_app_id;
const algoliaApiKey = functions.config().env.algolia_api_key;

export const crawlAndSendFcm = functions
    .pubsub.schedule("every 1 minutes").onRun(async () =>
      new Controller(algoliaAppId, algoliaApiKey).crawlAndSendFcm()
    );

export const crawlAndUpdateAlgolia = functions
    .pubsub.schedule("0 4 * * *").onRun(async () =>
      new Controller(algoliaAppId, algoliaApiKey).crawlAndUpdateAlgolia()
    );
