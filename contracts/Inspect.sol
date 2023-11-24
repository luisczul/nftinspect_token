// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts@5.0.0/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts@5.0.0/access/AccessControl.sol";

contract Inspect is ERC20, ERC20Burnable, ERC20Permit, ERC20Votes, AccessControl {
    constructor()
        ERC20("Inspect", "INSP")
        ERC20Permit("Inspect")
    {
        address adminOwner = 0xD79c8FD0393237fDF9BE92C839a23415f576E370;
        _grantRole(DEFAULT_ADMIN_ROLE, adminOwner);

        uint256 a_1 = 1000000000 * 10 ** uint256(decimals()) * 1250 / 10000; //12.5
        uint256 a_2 = 1000000000 * 10 ** uint256(decimals()) * 1200 / 10000; //12
        uint256 a_3 = 1000000000 * 10 ** uint256(decimals()) * 20 / 10000; //0.20
        uint256 a_4 = 1000000000 * 10 ** uint256(decimals()) * 133 / 10000; //1.33
        uint256 a_5 = 1000000000 * 10 ** uint256(decimals()) * 1250 / 10000; //12.5
        uint256 a_6 = 1000000000 * 10 ** uint256(decimals()) * 1747 / 10000; //17.47
        uint256 a_7 = 1000000000 * 10 ** uint256(decimals()) * 500 / 10000; //5
        uint256 a_8 = 1000000000 * 10 ** uint256(decimals()) * 800 / 10000; //8
        uint256 a_9 = 1000000000 * 10 ** uint256(decimals()) * 1600 / 10000; //16
        uint256 a_10 = 1000000000 * 10 ** uint256(decimals()) * 1500 / 10000; //15

        _mint(0x9ccC8541c573964c6253a56e985c0E629e4f4459, a_1);
        _mint(0x3224d23DDB9c936D1d393014D4c331026B4dDC1C, a_2);
        _mint(0xb5F70C907EF376BdDCBD57c35Ab2FF188045aD8c, a_3);
        _mint(0x489E3c5E6d1b0469Bb307C19bCD0c71B4419582e, a_4);
        _mint(0xa7097330cdA09A76798Cf55420BCeD559b78843a, a_5);
        _mint(0xc4BE3d5068CBDa558004985529DfDA264837dF8a, a_6);
        _mint(0xA9Fdb3d6426d490C3c97B74D1Ddf46C41a981784, a_7);
        _mint(0x1287F0b9231d7958b4526916506AF43DaC591789, a_8);
        _mint(0x7adf3131C497666a1fF97a81b3f84a3ED1F25968, a_9);
        _mint(0x929A9C1E4ff1A88fAD071130220D302bE0c4Fc3d, a_10);
    }

    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Votes)
    {
        super._update(from, to, value);
    }

    function nonces(address owner)
        public
        view
        override(ERC20Permit, Nonces)
        returns (uint256)
    {
        return super.nonces(owner);
    }
}
