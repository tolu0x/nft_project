// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.21;

// import {Test, console2} from "forge-std/Test.sol";
// import {Contract} from "../src/Contract.sol";

// contract ContractTest is Test {
//     Contract public contract;

//     function setUp() public {
//         contract = new Contract(0x0);
//         contract.setNumber(0);
//     }

//     function test_Increment() public {
//         contract.increment();
//         assertEq(contract.number(), 1);
//     }

//     function testFuzz_SetNumber(uint256 x) public {
//         contract.setNumber(x);
//         assertEq(contract.number(), x);
//     }
// }
