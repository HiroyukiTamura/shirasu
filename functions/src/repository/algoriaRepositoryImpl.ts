import functions from "firebase-functions";
import algoliasearch from "algoliasearch";
import {IScrapedProgram} from "../model/iScrapedProgram";

const ALGOLIA_INDEX_NAME = "program";
const ALGOLIA_ID = functions.config().env.algolia_app_id;
const ALGOLIA_ADMIN_KEY = functions.config().env.algolia_api_key;

export class AlgoriaRepositoryImpl {

  private client = algoliasearch(ALGOLIA_ID, ALGOLIA_ADMIN_KEY);

  async saveObjects(entries: IScrapedProgram[]): Promise<void> {
    const item = entries.map((value => {

    }));
    this.client.initIndex(ALGOLIA_INDEX_NAME).saveObjects();
  }
}
