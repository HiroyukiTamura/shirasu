import {ResultNewPrograms} from "../model/graphql/resultNewprograms";
import {ResultDetailProgram} from "../model/graphql/resultDetailProgram";
import {ScrapedProgram} from "../model/algolia/algoliaObj";

export interface NetworkRepository {
  requestNewPrograms(): Promise<ResultNewPrograms>

  crawlAllProgram(): Promise<ScrapedProgram[]>

  requestProgramDetail(id: string): Promise<ResultDetailProgram>
}
