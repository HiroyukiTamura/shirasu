// To parse this data:
//
//   import { Convert, ResultNewPrograms } from "./file";
//
//   const resultNewPrograms = Convert.toResultNewPrograms(json);
//
// These functions will throw an error if the JSON doesn't
// match the expected interface, even if the JSON is valid.

export class ConvertNewPrograms {
  public static toResultNewPrograms(json: string): ResultNewPrograms {
    const result = cast<ResultNewPrograms>(JSON.parse(json), r("ResultNewPrograms"));
    this.validateValues(result);
    return result;
  }

  private static validateValues(result: ResultNewPrograms) {
    result.newPrograms.items.forEach((value) => {
      if (value.mainTime < 0)
        throw Error(`negative mainTime detected: ${JSON.stringify(result)}`);
      if (value.totalPlayTime < 0)
        throw Error(`negative totalPlayTime detected: ${JSON.stringify(result)}`);
    });
  }
}

export interface ResultNewPrograms {
  newPrograms: NewPrograms;
}

export interface NewPrograms {
  items: ProgramItem[];
  nextToken?: string;
  // __typename: string;
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

// Converts JSON strings to/from your types
// and asserts the results of JSON.parse at runtime
export class Convert {
  public static toResultNewPrograms(json: string): ResultNewPrograms {
    return cast(JSON.parse(json), r("ResultNewPrograms"));
  }
}

function invalidValue(typ: any, val: any, key: any = ""): never {
  if (key) {
    throw Error(`Invalid value for key "${key}". Expected type ${JSON.stringify(typ)} but got ${JSON.stringify(val)}`);
  }
  throw Error(`Invalid value ${JSON.stringify(val)} for type ${JSON.stringify(typ)}`,);
}

function jsonToJSProps(typ: any): any {
  if (typ.jsonToJS === undefined) {
    const map: any = {};
    typ.props.forEach((p: any) => map[p.json] = {key: p.js, typ: p.typ});
    typ.jsonToJS = map;
  }
  return typ.jsonToJS;
}

function jsToJSONProps(typ: any): any {
  if (typ.jsToJSON === undefined) {
    const map: any = {};
    typ.props.forEach((p: any) => map[p.js] = {key: p.json, typ: p.typ});
    typ.jsToJSON = map;
  }
  return typ.jsToJSON;
}

function transform(val: any, typ: any, getProps: any, key: any = ""): any {
  function transformPrimitive(typ: string, val: any): any {
    if (typeof typ === typeof val) return val;
    return invalidValue(typ, val, key);
  }

  function transformUnion(typs: any[], val: any): any {
    // val must validate against one typ in typs
    const l = typs.length;
    for (let i = 0; i < l; i++) {
      const typ = typs[i];
      try {
        return transform(val, typ, getProps);
      } catch (_) {
      }
    }
    return invalidValue(typs, val);
  }

  function transformEnum(cases: string[], val: any): any {
    if (cases.indexOf(val) !== -1) return val;
    return invalidValue(cases, val);
  }

  function transformArray(typ: any, val: any): any {
    // val must be an array with no invalid elements
    if (!Array.isArray(val)) return invalidValue("array", val);
    return val.map(el => transform(el, typ, getProps));
  }

  function transformDate(val: any): any {
    if (val === null) {
      return null;
    }
    const d = new Date(val);
    if (isNaN(d.valueOf())) {
      return invalidValue("Date", val);
    }
    return d;
  }

  function transformObject(props: { [k: string]: any }, additional: any, val: any): any {
    if (val === null || typeof val !== "object" || Array.isArray(val)) {
      return invalidValue("object", val);
    }
    const result: any = {};
    Object.getOwnPropertyNames(props).forEach(key => {
      const prop = props[key];
      const v = Object.prototype.hasOwnProperty.call(val, key) ? val[key] : undefined;
      result[prop.key] = transform(v, prop.typ, getProps, prop.key);
    });
    Object.getOwnPropertyNames(val).forEach(key => {
      if (!Object.prototype.hasOwnProperty.call(props, key)) {
        result[key] = transform(val[key], additional, getProps, key);
      }
    });
    return result;
  }

  if (typ === "any") return val;
  if (typ === null) {
    if (val === null) return val;
    return invalidValue(typ, val);
  }
  if (typ === false) return invalidValue(typ, val);
  while (typeof typ === "object" && typ.ref !== undefined) {
    typ = typeMap[typ.ref];
  }
  if (Array.isArray(typ)) return transformEnum(typ, val);
  if (typeof typ === "object") {
    return typ.hasOwnProperty("unionMembers") ? transformUnion(typ.unionMembers, val)
      : typ.hasOwnProperty("arrayItems") ? transformArray(typ.arrayItems, val)
        : typ.hasOwnProperty("props") ? transformObject(getProps(typ), typ.additional, val)
          : invalidValue(typ, val);
  }
  // Numbers can be parsed by Date but shouldn't be.
  if (typ === Date && typeof val !== "number") return transformDate(val);
  return transformPrimitive(typ, val);
}

function cast<T>(val: any, typ: any): T {
  return transform(val, typ, jsonToJSProps);
}

// @ts-ignore
function uncast<T>(val: T, typ: any): any {
  return transform(val, typ, jsToJSONProps);
}

function a(typ: any) {
  return {arrayItems: typ};
}

function u(...typs: any[]) {
  return {unionMembers: typs};
}

function o(props: any[], additional: any) {
  return {props, additional};
}

// @ts-ignore
function m(additional: any) {
  return {props: [], additional};
}

function r(name: string) {
  return {ref: name};
}

const typeMap: any = {
  "ResultNewPrograms": o([
    {json: "newPrograms", js: "newPrograms", typ: r("NewPrograms")},
  ], "any"),
  "NewPrograms": o([
    {json: "items", js: "items", typ: a(r("ProgramItem"))},
    {json: "nextToken", js: "nextToken", typ: u("", null, undefined)},
    // {json: "__typename", js: "__typename", typ: ""},
  ], "any"),
  "ProgramItem": o([
    {json: "broadcastAt", js: "broadcastAt", typ: Date},
    {json: "channelId", js: "channelId", typ: ""},
    {json: "id", js: "id", typ: ""},
    {json: "mainTime", js: "mainTime", typ: 0},
    {json: "releasedAt", js: "releasedAt", typ: Date},
    {json: "tenantId", js: "tenantId", typ: ""},
    {json: "title", js: "title", typ: ""},
    // {json: "totalPlayTime", js: "totalPlayTime", typ: 0},
    // {json: "viewerPlanType", js: "viewerPlanType", typ: u(null, "")},
    {json: "channel", js: "channel", typ: r("Channel")},
    // {json: "__typename", js: "__typename", typ: r("ItemTypename")},
  ], "any"),
  "Channel": o([
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
