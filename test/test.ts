import { expect } from "chai";
import { ethers } from "hardhat";

describe("Inspect", function () {
  it("Test contract", async function () {
    const ContractFactory = await ethers.getContractFactory("Inspect");

    const defaultAdmin = (await ethers.getSigners())[0].address;

    const instance = await ContractFactory.deploy(defaultAdmin);
    await instance.waitForDeployment();

    expect(await instance.name()).to.equal("Inspect");
  });
});
