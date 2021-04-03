import {NetworkRepositoryImpl} from "./repository/networkRepositoryImpl";
import {AssetsRepositoryImpl} from "./repository/assetsRepositoryImpl";
import {FirestoreRepositoryImpl} from "./repository/firestoreRepositoryImpl";
import * as functions from "firebase-functions";
import {AlgoriaRepositoryImpl} from "./repository/algoriaRepositoryImpl";
import {AlgoliaObj} from "./model/algolia/algoliaObj";

export class Controller {

  private readonly networkRepo = new NetworkRepositoryImpl(new AssetsRepositoryImpl());
  private readonly firestoreRepo = new FirestoreRepositoryImpl();
  private readonly algoliaRepo = new AlgoriaRepositoryImpl(
      functions.config().env.algolia_app_id,
      functions.config().env.algolia_api_key,
  );

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
      const algoliaObj = AlgoliaObj.appendReading(
          program,
          prgDetail.program.tags,
      );
      objects.push(algoliaObj);
    }
    return this.algoliaRepo.saveObjects(objects);
  }
}
