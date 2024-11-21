pragma solidity ^0.8.0;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";  
import "./MyERC20Token.sol";
import "./MyERC223Token.sol";

contract MyERC721Token is ERC721 {
    
    MyERC20Token erc20;
    MyERC223Token erc223;
    uint nextTokenId=0;

    constructor(MyERC20Token _erc20) ERC721("ERC721", "TK721") {
        erc20 = _erc20;
        _mint(msg.sender, 1_000_000 * 10 ** 18); // Total supply: 1M tokens
    }

 function mintWithERC20(address recipient) public {
        erc20.transferFrom(msg.sender, recipient, 10);
        _mint(recipient, nextTokenId);
        nextTokenId++;
    }

     function mintWithERC223(address recipient) public {
        erc223.transfer(msg.sender,10);
        _mint(recipient, nextTokenId);
        nextTokenId++;
    }

}