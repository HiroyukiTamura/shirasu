import {GooApiRepository} from "./gooApiRepository";
import fetch from "isomorphic-fetch";
import cheerio from "cheerio";
import * as emojiRegex from "emoji-regex";

export class GooApiRepositoryImpl implements GooApiRepository {

    private static readonly URL = "https://jlp.yahooapis.jp/FuriganaService/V1/furigana";
    private emojiRegexText = emojiRegex.default();

    constructor(private readonly appId: string) {
    }

    async requestReading(sentence:string): Promise<string> {
      const params = new URLSearchParams({
        appid: this.appId,
        sentence: this.validateText(sentence),
      });
      const url = `${GooApiRepositoryImpl.URL}?${params}`;
      const response = await fetch(url);
      if (!response.ok) {
        if (response.status === 503) {
          const text = await response.text();
          const $ = cheerio.load(text);
          if ($("Error > Message").text() === "invalid parameter: sentence") {
            return "";
          }
        }
        throw Error(await response.text());
      }
      const text = await response.text();
      const $ = cheerio.load(text);
      return $("ResultSet > Result > WordList > Word").map(((i, ele) =>
        $(ele).find("> Furigana")?.text()?.replace(/—/g, "") || $(ele).find("> Surface")?.text() || ""))
          .get().join("");
    }

    /**
     * yahoo API can't handle `-`, `～`, emoji
     */
    private validateText(text: string): string {
      let validated = text.replace(/\s+|—|～/g, "");
      let match;
      while ( match = this.emojiRegexText.exec(text) ) {
        const emoji = match[0];
        validated = validated.replace(emoji, "");
      }
      return validated;
    }
}
