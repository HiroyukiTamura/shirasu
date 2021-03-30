import {ReadingType} from "../model/goo/requestPayload";

export interface GooApiRepository {
    requestReading(input: string, type: ReadingType): Promise<string>
}
