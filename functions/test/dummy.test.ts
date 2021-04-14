import {describe, it} from "mocha";
import {Controller} from "../src/controller";
// @ts-ignore
import admin from "firebase-admin";

/**
 * {@see GlobalUtil}
 */
describe("GlobalUtil", () => {

  admin.initializeApp();

  /**
   * {@see GlobalUtil.hiragana2Katakana}
   */
  describe('hiragana2Katakana', () => {
    it("normal", async () => {
      await new Controller('X2HUS9QS04', '713bb655b4812bc15146e7f8e16c9481').crawlAndUpdateAlgolia();
    }).timeout(60 * 60 * 1000);
  });
});
