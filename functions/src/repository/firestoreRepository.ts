import {ProgramItem} from "../model/graphql/resultNewprograms";

export interface FirestoreRepository {
    addFcmQueAndCleanUpLog(items: ProgramItem[]): Promise<void>;
}
