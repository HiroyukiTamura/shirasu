/* eslint-disable */
import {JsonParser} from "./jsonParser";

export class NewProgramsParser extends JsonParser {

  private constructor() {
    super();
  }

  static instance = new NewProgramsParser();

  parseJson(json: string): ProgramItem[] {
    const result = super.cast<ResultNewPrograms>(JSON.parse(json), JsonParser.r("ResultNewPrograms"));
    NewProgramsParser.validateValues(result);
    return result.newPrograms.items.map(it => ({
      broadcastAt: new Date(it.broadcastAt),
      channelId: it.channelId,
      id: it.id,
      mainTime: it.mainTime,
      releasedAt: new Date(it.releasedAt),
      tenantId: it.tenantId,
      title: it.title,
      totalPlayTime: it.totalPlayTime,
      channel: it.channel,
    }));
  }

  private static validateValues(result: ResultNewPrograms) {
    result.newPrograms.items.forEach((value) => {
      if (value.mainTime < 0)
        throw Error(`negative mainTime detected: ${JSON.stringify(result)}`);
      if (value.totalPlayTime < 0)
        throw Error(`negative totalPlayTime detected: ${JSON.stringify(result)}`);
    });
  }

  protected typeMap(): any {
    return {
      "ResultNewPrograms": JsonParser.o([
        {json: "newPrograms", js: "newPrograms", typ: JsonParser.r("NewPrograms")},
      ], "any"),
      "NewPrograms": JsonParser.o([
        {json: "items", js: "items", typ: JsonParser.a(JsonParser.r("ProgramItemRaw"))},
        {json: "nextToken", js: "nextToken", typ: JsonParser.u("", null, undefined)},
        // {json: "__typename", js: "__typename", typ: ""},
      ], "any"),
      "ProgramItem": JsonParser.o([
        {json: "broadcastAt", js: "broadcastAt", typ: ""},
        {json: "channelId", js: "channelId", typ: ""},
        {json: "id", js: "id", typ: ""},
        {json: "mainTime", js: "mainTime", typ: 0},
        {json: "releasedAt", js: "releasedAt", typ: ""},
        {json: "tenantId", js: "tenantId", typ: ""},
        {json: "title", js: "title", typ: ""},
        // {json: "totalPlayTime", js: "totalPlayTime", typ: 0},
        // {json: "viewerPlanType", js: "viewerPlanType", typ: u(null, "")},
        {json: "channel", js: "channel", typ: JsonParser.r("Channel")},
        // {json: "__typename", js: "__typename", typ: r("ItemTypename")},
      ], "any"),
      "Channel": JsonParser.o([
        {json: "id", js: "id", typ: ""},
        {json: "name", js: "name", typ: ""},
        // {json: "__typename", js: "__typename", typ: r("ChannelTypename")},
      ], "any"),
      // "ItemTypename": [
      //     "Program",
      // ],
      // "ChannelTypename": [
      //     "Channel",
      // ],
    };
  }
}

export interface ResultNewPrograms {
  newPrograms: NewPrograms;
}

export interface NewPrograms {
  items: ProgramItemRaw[];
  nextToken?: string;
  // __typename: string;
}

export interface ProgramItemRaw {
  broadcastAt: string;
  channelId: string;
  id: string;
  mainTime: number;
  releasedAt: string;
  tenantId: string;
  title: string;
  totalPlayTime: number;
  channel: Channel;
}

export interface ProgramItem {
  broadcastAt: Date;
  channelId: string;
  id: string;
  mainTime: number;
  releasedAt: Date;
  tenantId: string;
  title: string;
  totalPlayTime: number;
  // viewerPlanType: null | string;
  channel: Channel;
  // __typename: ItemTypename;
}

export interface Channel {
  id: string;
  name: string;
  // __typename: ChannelTypename;
}
