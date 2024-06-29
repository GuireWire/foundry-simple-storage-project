// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

// this indicates going down a directory into the src SimpleStorage file to import it

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
    // run function is needed to deploy contract
    // vm.startBroadcast() starts broadcast is a cheat code used only in Foundry
    // any transaction we want to send needs to be put between the vm start and stop
    // to deploy SimpleStorage contract refer to SimpleStorage simpleStorage = new SimpleStorage();
    // new keyword creates new contract in Solidity and also creates new contract inbetween vm start and stop broadcast
}
