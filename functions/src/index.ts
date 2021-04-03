import * as functions from "firebase-functions";
import admin from "firebase-admin";
import {Controller} from "./controller";

admin.initializeApp();

export const crawlAndSendFcm = functions
    .pubsub.schedule("every 1 minutes").onRun(async () => new Controller().crawlAndSendFcm());

export const crawlAndUpdateAlgolia = functions
    .pubsub.schedule("0 4 * * *").onRun(async () => new Controller().crawlAndUpdateAlgolia());
