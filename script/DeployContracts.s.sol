pragma solidity ^0.8.28;

import "forge-std/Script.sol";
import "../src/MyERC20Token.sol";
import "../src/MyERC223Token.sol";
import "../src/MyERC721Token.sol";

contract Migrate is Script {
    function run() external {
        vm.startBroadcast();

        // Deploy ERC20 Token
        MyERC20Token erc20 = new MyERC20Token();
        console.log("ERC20 Token deployed to:", address(erc20));

        // Deploy ERC223 Token
        MyERC223Token erc223 = new MyERC223Token();
        console.log("ERC223 Token deployed to:", address(erc223));

        // Deploy ERC721 Token
        MyERC721Token erc721 = new MyERC721Token(erc20);
        console.log("ERC721 Token deployed to:", address(erc721));

        vm.stopBroadcast();
    }
}

