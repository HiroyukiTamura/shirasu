import {describe, it} from "mocha";
import {expect} from "chai";
import {GooApiRepositoryImpl} from "../../src/repository/gooApiRepositoryImpl";

/**
 * {@see GooApiRepositoryImpl}
 */
describe("NetworkRepositoryImpl", () => {

    const repository = new GooApiRepositoryImpl(process.env.YAHOO_API_APP_ID!);

    const dummyText = 'Windowsでコンピューターの世界が広がります。1234567890';
    const outputHiragana = 'Windowsでこんぴゅーたーのせかいがひろがります。1234567890';

    /**
     * {@see GooApiRepositoryImpl.requestReading}
     */
    describe('requestReading', () => {
        it("normal response", async () => {
            const result = await repository.requestReading(dummyText);
            expect(result).to.be.string(outputHiragana);
        });

        it("invalid input", async () => {
            const result = await repository.requestReading('');
            expect(result).to.be.string('');
        });
    });
});
