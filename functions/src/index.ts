import * as functions from "firebase-functions";
import admin from "firebase-admin";
import {FirestoreRepositoryImpl} from "./repository/firestoreRepositoryImpl";
import {NetworkRepositoryImpl} from "./repository/networkRepositoryImpl";
import {AssetsRepositoryImpl} from "./repository/assetsRepositoryImpl";
import {AlgoriaRepositoryImpl} from "./repository/algoriaRepositoryImpl";
import {GooApiRepositoryImpl} from "./repository/gooApiRepositoryImpl";
import {AlgoliaObj, TagObj} from "./model/iScrapedProgram";
import {GlobalUtil} from "./globalUtil";

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
      const algoliaId = functions.config().env.algolia_app_id;
      const algoliaAdminKey = functions.config().env.algolia_api_key;
      const algoliaRepo = new AlgoriaRepositoryImpl(algoliaId, algoliaAdminKey);
      const gooApiRepo = new GooApiRepositoryImpl(functions.config().env.goo_api_app_id);
      const allPrograms = await networkRepo.crawlAllProgram();
      const allProgramIds = allPrograms.map((it) => it.objectID);
      const nonStoredPrgIds = await algoliaRepo.filterNotExists(allProgramIds);
      const nonStoredPrograms = allPrograms.filter((it) => nonStoredPrgIds.includes(it.objectID));
      const objects: AlgoliaObj[] = [];
      for (const program of nonStoredPrograms) {
        const prgDetail = await networkRepo.requestProgramDetail(program.toProgramId());
        const tagList: TagObj[] = [];
        for (const tag of prgDetail.program.tags) {
          const tagHiragana = await gooApiRepo.requestReading(tag);
          const tagKatakana = GlobalUtil.hiragana2Katakana(tagHiragana);
          const tagObj = new TagObj(tag, tagHiragana, tagKatakana);
          tagList.push(tagObj);
          await GlobalUtil.sleep(1000);
        }
        await GlobalUtil.sleep(1000);
        const prgTitleHiragana = await gooApiRepo.requestReading(program.programTitle);
        await GlobalUtil.sleep(1000);
        const prgTitleKatakana = GlobalUtil.hiragana2Katakana(prgTitleHiragana);
        await GlobalUtil.sleep(1000);
        const channelTitleHiragana = await gooApiRepo.requestReading(program.channelTitle);
        await GlobalUtil.sleep(1000);
        const channelTitleKatakana = GlobalUtil.hiragana2Katakana(channelTitleHiragana);
        await GlobalUtil.sleep(1000);
        const algoliaObj = AlgoliaObj.appendReading(
            program,
            prgTitleHiragana,
            prgTitleKatakana,
            channelTitleHiragana,
            channelTitleKatakana,
            tagList,
        );
        objects.push(algoliaObj);
      }
      return algoliaRepo.saveObjects(objects);
    });
