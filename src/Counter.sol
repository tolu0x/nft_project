// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "erc721a/erc721a.sol";

contract NFT is ERC721A {
    constructor() ERC721A("NFT", "NFT") {}

    function mint(address to, uint256 tokenId) public {
        _mint(to, tokenId);
    }
}