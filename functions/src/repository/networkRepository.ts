import {ProgramItem} from "../model/graphql/resultNewprograms";
import {ResultDetailProgram} from "../model/graphql/resultDetailProgram";
import {ScrapedProgram} from "../model/algolia/algoliaObj";

export interface NetworkRepository {
  requestNewPrograms(): Promise<ProgramItem[]>

  crawlAllProgram(): Promise<ScrapedProgram[]>

  requestProgramDetail(id: string): Promise<ResultDetailProgram>
}
