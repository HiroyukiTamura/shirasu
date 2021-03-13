import * as functions from "firebase-functions";
import admin from "firebase-admin";
import {FirestoreRepositoryImpl} from "./repository/firestoreRepositoryImpl";
import {NetworkRepositoryImpl} from "./repository/networkRepositoryImpl";
import {AssetsRepositoryImpl} from "./repository/assetsRepositoryImpl";

admin.initializeApp();

export const crawlAndSendFcm = functions
    .pubsub.schedule("every 1 minutes").onRun(async () => {
      const networkRepo = new NetworkRepositoryImpl(new AssetsRepositoryImpl());
      const firestoreRepo = new FirestoreRepositoryImpl();
      const programs = await networkRepo.requestNewPrograms();
      await firestoreRepo.addFcmQueAndCleanUpLog(programs.newPrograms.items);
      return firestoreRepo.checkQueAndSendFcm();
    });
