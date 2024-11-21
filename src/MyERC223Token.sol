pragma solidity ^0.8.0;

import {ERC223Token} from "./ERC223.sol";

contract MyERC223Token is ERC223Token {
    constructor() ERC223Token("MyERC223Token", "M223", 18) {
        _mint(1_000_000 * 10 ** 18); // Total supply: 1M tokens
    }
}
