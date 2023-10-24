// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

import {Test, console2} from "forge-std/Test.sol";
import {Contract} from "../src/Contract.sol";

contract ContractTest is Test {
    Contract public contract;

    function setUp() public {
        contract = new Contract(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        contract.setBaseURI('ipfs://testtest');
    }

    function test_URI() public {
        contract._baseURI();
        assertFalse(contract.baseURI(), '');
    }
}
