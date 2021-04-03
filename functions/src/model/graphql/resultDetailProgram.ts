import {JsonParser} from "./jsonParser";

export class DetailProgramsParser extends JsonParser {

  private constructor() {
    super();
  }

  static instance = new DetailProgramsParser();

  parseJson(json: string): ResultDetailProgram {
    return super.cast<ResultDetailProgram>(JSON.parse(json), JsonParser.r("ResultDetailProgram"));
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
