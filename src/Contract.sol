// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "erc721a/erc721a.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
contract NFT is ERC721A, Ownable {

    /* STATE VARIABLES */

    /* CONSTANTS*/
    uint16 constant MAX_SUPPLY = 256;
    uint16 constant MAX_MINT_QUANTITY = 2;
    uint256 constant COST = 0.00256 ether;

    uint256 totalminted;
    address ownerAddress;


    /* ERRORS */
    error insufficientMintAmount();
    error mintLimitReached();
    error maxSupplyReached();

    constructor(address initialOwner) Ownable(initialOwner) ERC721A("NFT", "NFT") {
        ownerAddress = initialOwner;
    }

    function mint(uint256 quantity) public payable {
        if (msg.value < COST) revert insufficientMintAmount();
        if (quantity > MAX_MINT_QUANTITY) revert mintLimitReached();
        if(totalminted == MAX_SUPPLY) revert maxSupplyReached();

        address to = msg.sender;
        _mint(to, quantity);
        ++totalminted;
    }

    function withdraw() external onlyOwner{
        uint256 balance = address(this).balance;
        payable (ownerAddress).transfer(balance);
    }

    receive() payable external{}
}