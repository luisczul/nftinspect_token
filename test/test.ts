import { expect } from "chai";
import { ethers } from "hardhat";

describe("Inspect", function () {
  it("Test contract", async function () {
    const ContractFactory = await ethers.getContractFactory("Inspect");

    const instance = await ContractFactory.deploy();
    await instance.deployed();

    expect(await instance.name()).to.equal("Inspect");
  });
});
