// SPDX-License-Identifier: MIT

import '@openzeppelin/contracts/token/ERC721/ERC721.sol';

import {Test} from "forge-std/Test.sol";
import {DeployBasicNft} from "../script/DeployBasicNft.sol";
import {BasicNft} from "../src/BasicNft.sol";


pragma solidity ^0.8.20;

contract BasicNftTest is Test {
    DeployBasicNft public deployer;
    BasicNft public basicNft;

    function setUp() public {

        deployer = new DeployBasicNft();
        basicNft = deployer.run();
    }

    function testNameIsCorrect() public view {
        string memory expectedName = "MishCoin";
        string memory actualName = basicNft.name();

        
        assert(keccak256(abi.encodePacked(expectedName)) == keccak256(abi.encodePacked(actualName)) );

    }


}