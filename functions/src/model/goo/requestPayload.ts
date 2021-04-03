import Joi from "joi";

export enum ReadingType {
    Hiragana = "hiragana", Katakana = "katakana",
}

interface TypeBase {
    // eslint-disable-next-line camelcase
    readonly output_type: ReadingType;
}

/**
 * we dont provide `request_id`.
 * @see https://labs.goo.ne.jp/api/jp/hiragana-translation/
 */
export interface RequestPayload extends TypeBase {
    // eslint-disable-next-line camelcase
    readonly app_id: string;
    readonly sentence: string;
}

interface IResponse extends TypeBase {
    // eslint-disable-next-line camelcase
    readonly request_id: string;
    readonly converted: string;
}

export class GooApiResponse implements IResponse {

    private static readonly schema = Joi.object({
      converted: Joi.string(),
      output_type: Joi.string().valid(ReadingType.Hiragana, ReadingType.Katakana),
      request_id: Joi.string(),
    });

    private constructor(
        public converted: string,
        // eslint-disable-next-line camelcase
        public output_type: ReadingType,
        // eslint-disable-next-line camelcase
        public request_id: string,
    ) {}

    static tryCast(obj: unknown): GooApiResponse {
      const it = obj as GooApiResponse;
      Joi.assert(it, GooApiResponse.schema);
      return it;
    }
}

export interface ErrorResponse {
    readonly error: ErrorResponseContent
}

interface ErrorResponseContent {
    readonly code: number;
    readonly message: string;
}
