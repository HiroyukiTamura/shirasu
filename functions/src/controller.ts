import {NetworkRepositoryImpl} from "./repository/networkRepositoryImpl";
import {AssetsRepositoryImpl} from "./repository/assetsRepositoryImpl";
import {FirestoreRepositoryImpl} from "./repository/firestoreRepositoryImpl";
import * as functions from "firebase-functions";
import {AlgoriaRepositoryImpl} from "./repository/algoriaRepositoryImpl";
import {ReadingApiRepositoryImpl} from "./repository/readingApiRepositoryImpl";
import {AlgoliaObj} from "./model/algolia/algoliaObj";
import {TagObj} from "./model/algolia/tagObj";
import {GlobalUtil} from "./globalUtil";

export class Controller {

  private readonly networkRepo = new NetworkRepositoryImpl(new AssetsRepositoryImpl());
  private readonly firestoreRepo = new FirestoreRepositoryImpl();
  private readonly algoliaRepo = new AlgoriaRepositoryImpl(
      functions.config().env.algolia_app_id,
      functions.config().env.algolia_api_key,
  );
  private readonly gooApiRepo = new ReadingApiRepositoryImpl(functions.config().env.goo_api_app_id);

  async crawlAndSendFcm(): Promise<void> {
    const programs = await this.networkRepo.requestNewPrograms();
    await this.firestoreRepo.addFcmQueAndCleanUpLog(programs.newPrograms.items);
    return this.firestoreRepo.checkQueAndSendFcm();
  }

  async crawlAndUpdateAlgolia(): Promise<void> {
    const allPrograms = await this.networkRepo.crawlAllProgram();
    const allProgramIds = allPrograms.map((it) => it.objectID);
    const nonStoredPrgIds = await this.algoliaRepo.filterNotExists(allProgramIds);
    const nonStoredPrograms = allPrograms.filter((it) => nonStoredPrgIds.includes(it.objectID));
    const objects: AlgoliaObj[] = [];
    for (const program of nonStoredPrograms) {
      const prgDetail = await this.networkRepo.requestProgramDetail(program.toProgramId());
      const tagList: TagObj[] = [];
      for (const tag of prgDetail.program.tags) {
        const tagHiragana = await this.gooApiRepo.requestReading(tag);
        const tagKatakana = GlobalUtil.hiragana2Katakana(tagHiragana);
        const tagObj = new TagObj(tag, tagHiragana, tagKatakana);
        tagList.push(tagObj);
        await GlobalUtil.sleep1s();
      }
      await GlobalUtil.sleep1s();
      const prgTitleHiragana = await this.gooApiRepo.requestReading(program.programTitle);
      await GlobalUtil.sleep1s();
      const prgTitleKatakana = GlobalUtil.hiragana2Katakana(prgTitleHiragana);
      await GlobalUtil.sleep1s();
      const channelTitleHiragana = await this.gooApiRepo.requestReading(program.channelTitle);
      await GlobalUtil.sleep1s();
      const channelTitleKatakana = GlobalUtil.hiragana2Katakana(channelTitleHiragana);
      await GlobalUtil.sleep1s();
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
    return this.algoliaRepo.saveObjects(objects);
  }
}
