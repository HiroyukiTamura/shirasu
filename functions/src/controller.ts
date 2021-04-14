import {NetworkRepositoryImpl} from "./repository/networkRepositoryImpl";
import {AssetsRepositoryImpl} from "./repository/assetsRepositoryImpl";
import {FirestoreRepositoryImpl} from "./repository/firestoreRepositoryImpl";
import {AlgoriaRepositoryImpl} from "./repository/algoriaRepositoryImpl";
import {AlgoliaObj} from "./model/algolia/algoliaObj";
import {GlobalUtil} from "./globalUtil";

export class Controller {

  constructor(algoliaAppId: string, algoliaApiKey: string) {
    this.algoliaRepo = new AlgoriaRepositoryImpl(
        algoliaAppId,
        algoliaApiKey,
    );
  }

  private readonly networkRepo = new NetworkRepositoryImpl(new AssetsRepositoryImpl());
  private readonly firestoreRepo = new FirestoreRepositoryImpl();
  private readonly algoliaRepo: AlgoriaRepositoryImpl;

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
      await GlobalUtil.sleep1s();
      const algoliaObj = AlgoliaObj.appendReading(
          program,
          prgDetail.program.tags,
      );
      objects.push(algoliaObj);
    }
    return this.algoliaRepo.saveObjects(objects);
  }
}
