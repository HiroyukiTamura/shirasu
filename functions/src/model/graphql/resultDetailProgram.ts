/* eslint-disable @typescript-eslint/no-explicit-any */

import {JsonParser} from "./jsonParser";
import Joi from "joi";

export class DetailProgramsParser extends JsonParser {

  private constructor() {
    super();
  }

  static instance = new DetailProgramsParser();

  // todo implement validation to other model
  parseJson(json: string): ResultDetailProgram {
    const gen = super.cast<ResultDetailProgram>(JSON.parse(json), JsonParser.r("ResultDetailProgram"));
    const schema = Joi.object().keys({
      program: Joi.object().keys({
        id: Joi.string().required(),
        channelId: Joi.string().required(),
        tags: Joi.array().items(Joi.string()).required(),
        title: Joi.string().required(),
      }),
    }).options({
      allowUnknown: true,
    });
    Joi.assert(gen, schema);
    return gen;
  }

  protected typeMap(): any {
    return {
      "ResultDetailProgram": JsonParser.o([
        {json: "program", js: "program", typ: JsonParser.r("Program")},
      ], "any"),
      "Program": JsonParser.o([
        {json: "id", js: "id", typ: ""},
        {json: "channelId", js: "channelId", typ: ""},
        {json: "tags", js: "tags", typ: JsonParser.a("")},
        {json: "title", js: "title", typ: ""},
      ], "any"),
    };
  }
}

export interface ResultDetailProgram {
  program: Program;
}

export interface Program {
  id: string;
  channelId: string;
  tags: string[];
  title: string;
}
