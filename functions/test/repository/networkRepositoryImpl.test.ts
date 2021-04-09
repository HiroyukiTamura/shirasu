import {describe, it} from "mocha";
import {expect} from "chai";

import {AssetsRepositoryImpl} from "../../src/repository/assetsRepositoryImpl";
import {NetworkRepositoryImpl} from "../../src/repository/networkRepositoryImpl";

/**
 * {@see NetworkRepositoryImpl}
 */
describe("NetworkRepositoryImpl", () => {

  const networkRepository = new NetworkRepositoryImpl(new AssetsRepositoryImpl());

  /**
   * {@see NetworkRepositoryImpl.requestNewPrograms}
   */
  it("requestChannel_normal", async () => {
    const result = await networkRepository.requestNewPrograms();
    expect(result.newPrograms.nextToken).to.not.null;
    expect(result.newPrograms.items).to.not.empty;
  });

  /**
   * {@see NetworkRepositoryImpl.crawlAllProgram}
   */
  it("crawlAllProgram_normal", async () => {
    const result = await networkRepository.crawlAllProgram();
    expect(result).to.not.empty;
    const item = result[0];
    expect(item.broadcastAt).to.not.undefined;
    expect(item.channelUrl).to.not.undefined;
    expect(item.programUrl).to.not.undefined;
    expect(item.channelTitle).to.not.undefined;
    expect(item.programTitle).to.not.undefined;
  }).timeout(10 * 1000);
});
