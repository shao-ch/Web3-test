// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract GoldToken  is ERC20{


    constructor(uint256 _initCapacity) ERC20("GOLD","GLD"){
            _mint(msg.sender,_initCapacity);
    }
    
}