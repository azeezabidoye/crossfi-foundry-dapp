// SPDX-License-Identifier: MIT
pragma solidity ^0.8.23;

import "forge-std/Script.sol";
import {SimpleEsc} from "../src/SimpleEscrow.sol";

contract DeployEscrow is Script {
    function run() external {
        address seller = 0x3e61b7C58cb5D0d5F75082b758454a43676C8491;
        uint256 depositAmount = 1 ether;

        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        SimpleEscrow escrow = new SimpleEscrow{value: depositAmount}(seller);
        vm.stopBroadcast();

        console.log("Escrow Contract Deployed at:", address(escrow));
    }
}
