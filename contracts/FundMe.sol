// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract FundMe {
    uint256[] storeGas;

    function getGasValue() public payable {
       storeGas.push(msg.value);
    }


    function fund() public payable {
        require(msg.value >= 5 gwei, "You have to send 2 gwei at least!");
    }


    function getStoreGas(uint256 _index) public view returns (uint256){
        return storeGas[_index];
    }
    
}