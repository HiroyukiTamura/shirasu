import algoliasearch from "algoliasearch";
import {SearchIndex} from "algoliasearch/dist/algoliasearch";
import {ObjectWithObjectID} from "@algolia/client-search";
import {AlgoliaObj} from "../model/algolia/algoliaObj";

export class AlgoriaRepositoryImpl {

  private static readonly ALGOLIA_INDEX_NAME = "program";
  private readonly client: SearchIndex;

  constructor(algoliaAppId: string, algoliaAdminKey: string) {
    this.client = algoliasearch(algoliaAppId, algoliaAdminKey)
        .initIndex(AlgoriaRepositoryImpl.ALGOLIA_INDEX_NAME);
  }

  async saveObjects(entries: AlgoliaObj[]): Promise<void> {
    await this.client.saveObjects(entries);
  }

  async filterNotExists(programIds: string[]): Promise<string[]> {
    let notExistIds: string[] = [];
    await this.client.browseObjects({
      query: "",
      batch: (objIds: ReadonlyArray<ObjectWithObjectID>) => {
        const storedIdList = objIds.map((it) => it.objectID);
        notExistIds = notExistIds.concat(programIds.filter((it) => !storedIdList.includes(it)));
      },
    });
    return notExistIds;
  }
}
