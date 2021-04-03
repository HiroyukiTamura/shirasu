import * as functions from "firebase-functions";
import admin from "firebase-admin";
import {Controller} from "./controller";

admin.initializeApp();

export const crawlAndSendFcm = functions
    .pubsub.schedule("every 1 minutes").onRun(async () => new Controller().crawlAndSendFcm());

export const crawlAndUpdateAlgolia = functions
    .pubsub.schedule("every 1 days").onRun(async () => new Controller().crawlAndUpdateAlgolia());
