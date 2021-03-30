import functions from "firebase-functions";
import algoliasearch from "algoliasearch";
import {AlgoliaObj} from "../model/iScrapedProgram";
import {SearchIndex} from "algoliasearch/dist/algoliasearch";

export class AlgoriaRepositoryImpl {

  private static readonly ALGOLIA_INDEX_NAME = "program";
  private readonly algoliaId = functions.config().env.algolia_app_id;
  private readonly algoliaAdminKey = functions.config().env.algolia_api_key;
  private readonly client: SearchIndex;

  constructor() {
    this.client = algoliasearch(this.algoliaId, this.algoliaAdminKey)
        .initIndex(AlgoriaRepositoryImpl.ALGOLIA_INDEX_NAME);
  }

  async saveObjects(entries: AlgoliaObj[]): Promise<void> {
    await this.client.saveObjects(entries);
  }
}
