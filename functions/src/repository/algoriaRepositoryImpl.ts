import functions from "firebase-functions";
import algoliasearch from "algoliasearch";
import {IScrapedProgram} from "../model/iScrapedProgram";


export class AlgoriaRepositoryImpl {

  private static readonly ALGOLIA_INDEX_NAME = "program";
  private readonly ALGOLIA_ID = functions.config().env.algolia_app_id;
  private readonly ALGOLIA_ADMIN_KEY = functions.config().env.algolia_api_key;
  private client = algoliasearch(this.ALGOLIA_ID, this.ALGOLIA_ADMIN_KEY).initIndex(AlgoriaRepositoryImpl.ALGOLIA_INDEX_NAME);

  async saveObjects(entries: IScrapedProgram[]): Promise<void> {
    await this.client.saveObjects(entries);
  }
}
