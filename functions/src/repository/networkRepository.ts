import {ResultNewPrograms} from "../model/graphql/resultNewprograms";
import {IScrapedProgram} from "../model/iScrapedProgram";

export interface NetworkRepository {
  requestNewPrograms(): Promise<ResultNewPrograms>

  crawlAllProgram(): Promise<IScrapedProgram[]>
}
