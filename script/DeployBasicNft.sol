// SPDX-License-Identifier: MIT

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';
import {Script} from "forge-std/Script.sol";
import {BasicNft} from "../src/BasicNft.sol";

pragma solidity ^0.8.20;

contract DeployBasicNft is Script {
    function run() external returns (BasicNft) {

        vm.startBroadcast();
        BasicNft basicNft = new BasicNft();


        vm.stopBroadcast();
        return basicNft;
    }


}