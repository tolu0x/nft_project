// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console2} from "forge-std/Script.sol";
import {NFT} from "src/Contract.sol";

contract ContractScript is Script {
    function setUp() public {}

    function run() public {
        vm.startBroadcast();
        new NFT(0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266);
        vm.stopBroadcast();
    }
}
