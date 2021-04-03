import {ResultNewPrograms} from "../model/graphql/resultNewprograms";
import {IScrapedProgram} from "../model/iScrapedProgram";
import {ResultDetailProgram} from "../model/graphql/resultDetailProgram";

export interface NetworkRepository {
  requestNewPrograms(): Promise<ResultNewPrograms>

  crawlAllProgram(): Promise<IScrapedProgram[]>

  requestProgramDetail(id: string): Promise<ResultDetailProgram>
}
