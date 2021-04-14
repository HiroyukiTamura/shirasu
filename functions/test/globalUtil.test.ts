import {describe, it} from "mocha";
import {expect} from "chai";
import {GlobalUtil} from "../src/globalUtil";

/**
 * {@see GlobalUtil}
 */
describe("GlobalUtil", () => {

  const hiragana = 'うぃんどーずでこんぴゅーたーのせかいがひろがります。じゅーにおくさんぜんよんひゃくごじゅーろくまんななせんはっぴゃくきゅーじゅー';
  const katakana = 'ウィンドーズデコンピューターノセカイガヒロガリマス。ジューニオクサンゼンヨンヒャクゴジューロクマンナナセンハッピャクキュージュー';

  /**
   * {@see GlobalUtil.hiragana2Katakana}
   */
  describe('hiragana2Katakana', () => {
    it("normal", () => {
      const result = GlobalUtil.hiragana2Katakana(hiragana);
      expect(result).to.be.string(katakana);
    });
  });
});
