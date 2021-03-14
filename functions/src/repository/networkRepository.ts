import {ResultNewPrograms} from "../model/graphql/resultNewprograms";

export interface NetworkRepository {
    requestNewPrograms(): Promise<ResultNewPrograms>
}
