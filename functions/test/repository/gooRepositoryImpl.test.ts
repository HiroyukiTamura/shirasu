import {describe, it} from "mocha";
import {expect} from "chai";
import {ReadingApiRepositoryImpl} from "../../src/repository/gooApiRepositoryImpl";

/**
 * {@see ReadingApiRepositoryImpl}
 */
describe("NetworkRepositoryImpl", () => {

    const repository = new ReadingApiRepositoryImpl(process.env.YAHOO_API_APP_ID!);

    const dummyText = 'Windowsでコンピューターの世界が広がります。1234567890';
    const outputHiragana = 'Windowsでこんぴゅーたーのせかいがひろがります。1234567890';

    /**
     * {@see ReadingApiRepositoryImpl.requestReading}
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
