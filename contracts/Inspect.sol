// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract Inspect is ERC20, ERC20Burnable, ERC20Permit, ERC20Votes, AccessControl {
    constructor(address defaultAdmin)
        ERC20("Inspect", "INSP")
        ERC20Permit("Inspect")
    {
        

        address publicSale = 0x853dcC2dDAf853383D909480f4a5B2B00811baEB; //PUBLIC SALE 12% 
        address strategicSale = 0x69d61993c1D442fd4b708874637EDd6d481DD842; // STRATEGIC SALE 7%
        address ecosystemGrowth = 0x9A77539bC0a6c297715A521361133138f82cAe11; //ECOSYSTEM GROWTH 10%
        address liquidity = 0xD15F0F1EB2201A48d92d11229e4A046C60A24005; //LIQUIDITY 20%
        address advisors = 0x95CA6fd0477adCd9E42446c19302Cab533Ab891a; //ADVISORS 5%
        address communityFoundation = 0x60e872A640FC18DC24c161dd88C530368c28aF67; //COMMUNITY_FOUNDATION 28%
        address coreContributors = 0xA94BfDA106554fb8AD107179a08d704e377B0574; //CORE CONTRIBUTORS 18%

        uint256 publicSaleAmount = 1000000000 * 10 ** uint256(decimals()) * 12 / 100;
        uint256 strategicSaleAmount = 1000000000 * 10 ** uint256(decimals()) * 7 / 100;
        uint256 ecosystemGrowthAmount = 1000000000 * 10 ** uint256(decimals()) * 10 / 100;
        uint256 liquidityAmount = 1000000000 * 10 ** uint256(decimals()) * 20 / 100;
        uint256 advisorsAmount = 1000000000 * 10 ** uint256(decimals()) * 5 / 100;
        uint256 communityFoundationAmount = 1000000000 * 10 ** uint256(decimals()) * 28 / 100;
        uint256 coreContributorsAmount = 1000000000 * 10 ** uint256(decimals()) * 18 / 100;

        _mint(publicSale, publicSaleAmount);
        _mint(strategicSale, strategicSaleAmount);
        _mint(ecosystemGrowth, ecosystemGrowthAmount);
        _mint(liquidity, liquidityAmount);
        _mint(advisors, advisorsAmount);
        _mint(communityFoundation, communityFoundationAmount);
        _mint(coreContributors, coreContributorsAmount);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);

    }

    // The following functions are overrides required by Solidity.

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
