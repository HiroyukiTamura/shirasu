/* eslint-disable no-prototype-builtins,@typescript-eslint/ban-ts-comment,
@typescript-eslint/no-explicit-any,@typescript-eslint/explicit-module-boundary-types */

export abstract class JsonParser {

  protected abstract typeMap(): any;

  static invalidValue(typ: any, val: any, key: any = ""): never {
    if (key)
      throw Error(
          `Invalid value for key "${key}". Expected type ${JSON.stringify(typ)} but got ${JSON.stringify(val)}`
      );
    throw Error(`Invalid value ${JSON.stringify(val)} for type ${JSON.stringify(typ)}`, );
  }

  jsonToJSProps(typ: any): any {
    if (typ.jsonToJS === undefined) {
      const map: any = {};
      typ.props.forEach((p: any) => map[p.json] = {key: p.js, typ: p.typ});
      typ.jsonToJS = map;
    }
    return typ.jsonToJS;
  }

  jsToJSONProps(typ: any): any {
    if (typ.jsToJSON === undefined) {
      const map: any = {};
      typ.props.forEach((p: any) => map[p.js] = {key: p.json, typ: p.typ});
      typ.jsToJSON = map;
    }
    return typ.jsToJSON;
  }

  private static transformPrimitive(typ: string, val: any, key: any): any {
    if (typeof typ === typeof val) return val;
    return JsonParser.invalidValue(typ, val, key);
  }

  private transformUnion(typs: any[], val: any, getProps: any): any {
    // val must validate against one typ in typs
    const l = typs.length;
    for (let i = 0; i < l; i++) {
      const typ = typs[i];
      try {
        return this.transform(val, typ, getProps);
        // eslint-disable-next-line no-empty
      } catch (_) {}
    }
    return JsonParser.invalidValue(typs, val);
  }

  private static transformEnum(cases: string[], val: any): any {
    if (cases.indexOf(val) !== -1) return val;
    return JsonParser.invalidValue(cases, val);
  }

  private transformArray(typ: any, val: any, getProps: any): any {
    // val must be an array with no invalid elements
    if (!Array.isArray(val)) return JsonParser.invalidValue("array", val);
    return val.map(el => this.transform(el, typ, getProps));
  }

  private static transformDate(val: any): any {
    if (val === null) {
      return null;
    }
    const d = new Date(val);
    if (isNaN(d.valueOf())) {
      return JsonParser.invalidValue("Date", val);
    }
    return d;
  }

  private transformObject(props: { [k: string]: any }, additional: any, val: any, getProps: any): any {
    if (val === null || typeof val !== "object" || Array.isArray(val)) {
      return JsonParser.invalidValue("object", val);
    }
    const result: any = {};
    Object.getOwnPropertyNames(props).forEach(key => {
      const prop = props[key];
      const v = Object.prototype.hasOwnProperty.call(val, key) ? val[key] : undefined;
      result[prop.key] = this.transform(v, prop.typ, getProps, prop.key);
    });
    Object.getOwnPropertyNames(val).forEach(key => {
      if (!Object.prototype.hasOwnProperty.call(props, key)) {
        result[key] = this.transform(val[key], additional, getProps, key);
      }
    });
    return result;
  }

  transform(val: any, typ: any, getProps: any, key: any = ""): any {

    if (typ === "any") return val;
    if (typ === null) {
      if (val === null) return val;
      return JsonParser.invalidValue(typ, val);
    }
    if (typ === false) return JsonParser.invalidValue(typ, val);
    while (typeof typ === "object" && typ.ref !== undefined) {
      // @ts-ignore
      typ = (this.typeMap())[typ.ref];
    }
    if (Array.isArray(typ)) return JsonParser.transformEnum(typ, val);
    if (typeof typ === "object") {
      return typ.hasOwnProperty("unionMembers") ? this.transformUnion(typ.unionMembers, val, key) :
        typ.hasOwnProperty("arrayItems") ? this.transformArray(typ.arrayItems, val, key) :
          typ.hasOwnProperty("props") ? this.transformObject(getProps, typ.additional, val, key) :
            JsonParser.invalidValue(typ, val);
    }
    // Numbers can be parsed by Date but shouldn't be.
    if (typ === Date && typeof val !== "number") return JsonParser.transformDate(val);
    return JsonParser.transformPrimitive(typ, val, key);
  }

  protected cast<T>(val: any, typ: any): T {
    return this.transform(val, typ, this.jsonToJSProps);
  }

  protected uncast<T>(val: T, typ: any): any {
    return this.transform(val, typ, this.jsToJSONProps);
  }

  protected static a(typ: any): any {
    return {arrayItems: typ};
  }

  protected static u(...typs: any[]): any {
    return {unionMembers: typs};
  }

  protected static o(props: any[], additional: any): any {
    return {props, additional};
  }

  protected static m(additional: any): any {
    return {props: [], additional};
  }

  protected static r(name: string): any {
    return {ref: name};
  }
}
