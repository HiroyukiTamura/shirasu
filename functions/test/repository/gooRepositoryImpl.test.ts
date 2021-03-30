import {describe, it} from "mocha";
import {expect} from "chai";
import {GooApiRepositoryImpl} from "../../src/repository/gooApiRepositoryImpl";
import {ReadingType} from "../../src/model/goo/requestPayload";
import * as admin from 'firebase-admin';
import * as functions from 'firebase-functions';

/**
 * {@see GooApiRepositoryImpl}
 */
describe("NetworkRepositoryImpl", () => {

    require('firebase-functions-test')();
    admin.initializeApp(functions.config().firebase);

    const gooApiRepository = new GooApiRepositoryImpl();

    const dummyText = 'Windowsでコンピューターの世界が広がります。1234567890';
    const outputHiragana = 'うぃんどーずで こんぴゅーたーの せかいが ひろがります。 じゅーにおくさんぜんよんひゃくごじゅーろくまんななせんはっぴゃくきゅーじゅー';
    const outputKatakana = 'ウィンドーズデ コンピューターノ セカイガ ヒロガリマス。 ジューニオクサンゼンヨンヒャクゴジューロクマンナナセンハッピャクキュージュー';

    /**
     * {@see NetworkRepositoryImpl.requestNewPrograms}
     */
    it("requestChannel_hiragana", async () => {
        const result = await gooApiRepository.requestReading(dummyText, ReadingType.Hiragana);
        expect(result).to.be.string(outputHiragana);
    });

    /**
     * {@see NetworkRepositoryImpl.requestNewPrograms}
     */
    it("requestChannel_katakana", async () => {
        const result = await gooApiRepository.requestReading(dummyText, ReadingType.Katakana);
        expect(result).to.be.string(outputKatakana);
    });
});
