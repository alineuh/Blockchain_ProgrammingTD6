// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Counter} from "../src/Counter.sol";
import "../src/MyERC721Token.sol";
import "../src/MyERC20Token.sol";

contract CounterTest is Test {
    // Counter public counter;

    MyERC20Token erc20;
    MyERC721Token erc721;
    MyERC223Token erc223;

    function setUp() public {
        erc20 = new MyERC20Token();
        erc721 = new MyERC721Token(erc20);
    }

    function test_mintERC20() public {
        erc20.approve(address(erc20), 11);
        erc721.mintWithERC20(address(erc721));
    }
}
