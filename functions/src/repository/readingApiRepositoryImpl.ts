import {ReadingApiRepository} from "./readingApiRepository";
import fetch from "isomorphic-fetch";
import cheerio from "cheerio";
import * as emojiRegex from "emoji-regex";

export class ReadingApiRepositoryImpl implements ReadingApiRepository {

    private static readonly URL = "https://jlp.yahooapis.jp/FuriganaService/V1/furigana";
    private emojiRegexText = emojiRegex.default();

    constructor(private readonly appId: string) {
    }

    async requestReading(sentence:string): Promise<string> {
      const params = new URLSearchParams({
        appid: this.appId,
        sentence: this.validateText(sentence),
      });
      const url = `${ReadingApiRepositoryImpl.URL}?${params}`;
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
     * NOTE: the api returns https status code 503
     * when the input text has a character that is not included to JIS X 0208.
     * @see https://developer.yahoo.co.jp/webapi/jlp/furigana/v1/furigana.html
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
