import {GooApiRepository} from "./gooApiRepository";
import fetch from "isomorphic-fetch";
import {GooApiResponse, ReadingType, RequestPayload} from "../model/goo/requestPayload";
import functions from "firebase-functions";

export class GooApiRepositoryImpl implements GooApiRepository {

    private static readonly URL = 'https://labs.goo.ne.jp/api/hiragana';

    private readonly appId = functions.config().env.goo_api_app_id;

    async requestReading(input:string, type: ReadingType): Promise<string> {
        const response = await fetch(GooApiRepositoryImpl.URL, {
            method: 'post',
            body: JSON.stringify(<RequestPayload>{
                app_id: this.appId,
                sentence: input,
                output_type: type,
            }),
            headers: {'Content-Type': 'application/json'}
        });
        const json = await response.json();
        return GooApiResponse.tryCast(json).converted;
    }

}