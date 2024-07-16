// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Script} from "forge-std/Script.sol";
import {LiquidEdge} from "../src/LiquidEdge.sol";

contract DeployLiquidEdge is Script {
    uint256 constant INITIAL_SUPPLY = 1000000 * (10 ** 8);
   
    function run() external {
        vm.startBroadcast();
        new LiquidEdge(INITIAL_SUPPLY);
        vm.stopBroadcast();
    }
}