import * as functions from "firebase-functions";
import admin from "firebase-admin";
import {FirestoreRepositoryImpl} from "./repository/firestoreRepositoryImpl";
import {NetworkRepositoryImpl} from "./repository/networkRepositoryImpl";
import {AssetsRepositoryImpl} from "./repository/assetsRepositoryImpl";
import {AlgoriaRepositoryImpl} from "./repository/algoriaRepositoryImpl";
import {GooApiRepositoryImpl} from "./repository/gooApiRepositoryImpl";
import {ReadingType} from "./model/goo/requestPayload";
import {AlgoliaObj} from "./model/iScrapedProgram";

admin.initializeApp();

export const crawlAndSendFcm = functions
    .pubsub.schedule("every 1 minutes").onRun(async () => {
      const networkRepo = new NetworkRepositoryImpl(new AssetsRepositoryImpl());
      const firestoreRepo = new FirestoreRepositoryImpl();
      const programs = await networkRepo.requestNewPrograms();
      await firestoreRepo.addFcmQueAndCleanUpLog(programs.newPrograms.items);
      return firestoreRepo.checkQueAndSendFcm();
    });

export const crawlAndUpdateAlgolia = functions
    .pubsub.schedule("every 1 days").onRun(async () => {
      const networkRepo = new NetworkRepositoryImpl(new AssetsRepositoryImpl());
      const algoliaRepo = new AlgoriaRepositoryImpl();
      const gooApiRepo = new GooApiRepositoryImpl();
      const allPrograms = await networkRepo.crawlAllProgram();
      const objects: AlgoliaObj[] = [];
      for (const program of allPrograms) {
        const prgTitleHiragana = await gooApiRepo.requestReading(program.programTitle, ReadingType.Hiragana);
        const prgTitleKatakana = await gooApiRepo.requestReading(program.programTitle, ReadingType.Katakana);
        const channelTitleHiragana = await gooApiRepo.requestReading(program.channelTitle, ReadingType.Hiragana);
        const channelTitleKatakana = await gooApiRepo.requestReading(program.channelTitle, ReadingType.Katakana);
        const algoliaObj = AlgoliaObj.appendReading(
            program,
            prgTitleHiragana,
            prgTitleKatakana,
            channelTitleHiragana,
            channelTitleKatakana,
        );
        objects.push(algoliaObj);
      }
      return algoliaRepo.saveObjects(objects);
    });
