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
});
